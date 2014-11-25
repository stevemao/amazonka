# Amazonka

[![Build Status](https://travis-ci.org/brendanhay/amazonka.svg?branch=develop)](https://travis-ci.org/brendanhay/amazonka)

* [Description](#description)
* [Organisation](#organisation)
* [Usage](#usage)
* [Contribute](#contribute)
* [Licence](#licence)

## Description

A comprehensive Amazon Web Services SDK for Haskell supporting all of the currently
available services.

An introductory blog post detailing some of the motivation and design decisions
can be found [here](http://brendanhay.github.io/amazonka-comprehensive-haskell-aws-client.html).


## Organisation

This repository is organised into the following directory structure:

* [`amazonka`](amazonka): Monad transformer and send/receive/paginate/presign logic.
* `amazonka-*`: Each of the individually supported Amazon Web Service libraries.
* [`core`](core): The `amazonka-core` library upon which each of the services depends.
* [`gen`](gen): Code, templates, and assets for the `amazonka-gen` executable.
* [`examples`](examples): An example project which can be loaded using `cabal repl`.
* [`script`](script): Scripts to manage the release and life-cycle of the service libraries.
* [`share`](share): Makefile plumbing common to all service libraries


## Usage

You will typically add an `amazonka` dependency in your project's cabal file,
and any additional services you wish to use.

For example the `build-depends` section of a cabal file which utilises EC2 and
S3 might look like:

```
build-depends:
      amazonka
    , amazonka-ec2
    , amazonka-s3
    , base
```

### Credentials

Credentials can either be specified or obtained in a [number of ways](http://brendanhay.github.io/amazonka/amazonka-core/Network-AWS-Auth.html).

Usually the easiest is to use `Discover`, which will attempt to read the `AWS_ACCESS_KEY`
and `AWS_SECRET_KEY` variables from the environment. If either of these variables
are not set, `amazonka` will attemp to retrieve IAM profile information from
`http://169.254.169.254`.

This allows you to seamlessly move between development environments (where you set the keys)
and production EC2 instances which have an IAM role + profile assigned.

Alternatively you can specify keys directly via `FromKeys`.

### Type Signatures

Type families are used to associate requests with their respective error,
signing algorithm, and response type.

If you are not familiar with type families, the easiest way to translate
ignatures or type errors is:

```
type Response a = Either (ServiceError (Er (Sv a))) (Rs a)
```

In a typical response the `Left` branch is a concrete `ServiceError` parameterised
over the `Er` of the `Sv` of `a`, where `a` is the request you are sending.

Translated, that is the error belonging to the service for which the request
is being sent.

The `Right` branch is the successful response associated with `a`.

For EC2's `DescribeInstances` operation the reduced type would be:

```
type Response DescribeInstances = Either (ServiceError EC2Error) DescribeInstancesResponse
```

Every operation's response is typically the operation name suffixed by `Response`,
with the exception being responses shared by multiple operations.

### Sending Requests

There are two separate styles of sending requests in `amazonka`. The explicit
parameter passing from [`Network.AWS`](amazonka/src/Network/AWS.hs), or the
Monad Transformer stack in [`Control.Monad.Trans.AWS`](amazonka/src/Control/Monad/Trans/AWS.hs).

For the parameter passing style, you send a typical request by:

```haskell
import Network.AWS
import Network.AWS.EC2

main = do
    e <- getEnv Ireland Discover
    r <- send e describeInstances
    ...
```

The main purposes of the Monad Transformer stack is to carry around the `Env`
state, manage the resource cleanup safely using `ResourceT`, and encapsulate
manageable errors using `ExceptT` to allow conveniently chaining successful requests.

A trivial example of using the `AWST` transformer is:

```haskell
import Control.Monad.Trans.AWS
import Network.AWS.EC2

main = do
    e <- getEnv Ireland Discover
    runAWST env $ do
        x <- send describeInstances
        y <- send describeTags
        ...
```

If either of the responses to `send` are failures, the first will cause the
computation to exit and the `Either` result of `runAWST` will contain the error
in the `Left` case, or the result of the entire monadic computation in the `Right` case.

The `*Catch` variants in `Control.Monad.Trans.AWS` are used when you wish to handle
any specific service errors related to the sent request.

### Pagination

Pagination is supported by requests which are an instance of [`AWSPager`](http://brendanhay.github.io/amazonka/amazonka-autoscaling/Network-AWS-AutoScaling-DescribeAutoScalingGroups.html).

The `paginate` method returns a conduit `Source` which will seamlessly return pages
of results based on the initial (or default) parameters to the first request, stopping
when the service signals there are no more results.

### Presigned URLs

Presigned URLs can be generated by services which use the Version 4 signing algorithm.

The `presign` method is used to specify the request to sign and the expiry time.

### Asynchronous Actions

`AWST` is an instance of `MonadControl`, which allows actions to be run asynchronously
with the use of `async` and `wait` from the [`lifted-async`](http://hackage.haskell.org/package/lifted-async) package.


## Contribute

For any problems, comments, or feedback please create an issue [here on GitHub](https://github.com/brendanhay/amazonka/issues).


## Licence

Amazonka is released under the [Mozilla Public License Version 2.0](http://www.mozilla.org/MPL/).

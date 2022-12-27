{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ECS.Types.RepositoryCredentials
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.RepositoryCredentials where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The repository credentials for private registry authentication.
--
-- /See:/ 'newRepositoryCredentials' smart constructor.
data RepositoryCredentials = RepositoryCredentials'
  { -- | The Amazon Resource Name (ARN) of the secret containing the private
    -- repository credentials.
    --
    -- When you use the Amazon ECS API, CLI, or Amazon Web Services SDK, if the
    -- secret exists in the same Region as the task that you\'re launching then
    -- you can use either the full ARN or the name of the secret. When you use
    -- the Amazon Web Services Management Console, you must specify the full
    -- ARN of the secret.
    credentialsParameter :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RepositoryCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'credentialsParameter', 'repositoryCredentials_credentialsParameter' - The Amazon Resource Name (ARN) of the secret containing the private
-- repository credentials.
--
-- When you use the Amazon ECS API, CLI, or Amazon Web Services SDK, if the
-- secret exists in the same Region as the task that you\'re launching then
-- you can use either the full ARN or the name of the secret. When you use
-- the Amazon Web Services Management Console, you must specify the full
-- ARN of the secret.
newRepositoryCredentials ::
  -- | 'credentialsParameter'
  Prelude.Text ->
  RepositoryCredentials
newRepositoryCredentials pCredentialsParameter_ =
  RepositoryCredentials'
    { credentialsParameter =
        pCredentialsParameter_
    }

-- | The Amazon Resource Name (ARN) of the secret containing the private
-- repository credentials.
--
-- When you use the Amazon ECS API, CLI, or Amazon Web Services SDK, if the
-- secret exists in the same Region as the task that you\'re launching then
-- you can use either the full ARN or the name of the secret. When you use
-- the Amazon Web Services Management Console, you must specify the full
-- ARN of the secret.
repositoryCredentials_credentialsParameter :: Lens.Lens' RepositoryCredentials Prelude.Text
repositoryCredentials_credentialsParameter = Lens.lens (\RepositoryCredentials' {credentialsParameter} -> credentialsParameter) (\s@RepositoryCredentials' {} a -> s {credentialsParameter = a} :: RepositoryCredentials)

instance Data.FromJSON RepositoryCredentials where
  parseJSON =
    Data.withObject
      "RepositoryCredentials"
      ( \x ->
          RepositoryCredentials'
            Prelude.<$> (x Data..: "credentialsParameter")
      )

instance Prelude.Hashable RepositoryCredentials where
  hashWithSalt _salt RepositoryCredentials' {..} =
    _salt `Prelude.hashWithSalt` credentialsParameter

instance Prelude.NFData RepositoryCredentials where
  rnf RepositoryCredentials' {..} =
    Prelude.rnf credentialsParameter

instance Data.ToJSON RepositoryCredentials where
  toJSON RepositoryCredentials' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "credentialsParameter"
                  Data..= credentialsParameter
              )
          ]
      )

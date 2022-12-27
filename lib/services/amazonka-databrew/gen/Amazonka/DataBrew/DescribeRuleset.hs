{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DataBrew.DescribeRuleset
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves detailed information about the ruleset.
module Amazonka.DataBrew.DescribeRuleset
  ( -- * Creating a Request
    DescribeRuleset (..),
    newDescribeRuleset,

    -- * Request Lenses
    describeRuleset_name,

    -- * Destructuring the Response
    DescribeRulesetResponse (..),
    newDescribeRulesetResponse,

    -- * Response Lenses
    describeRulesetResponse_createDate,
    describeRulesetResponse_createdBy,
    describeRulesetResponse_description,
    describeRulesetResponse_lastModifiedBy,
    describeRulesetResponse_lastModifiedDate,
    describeRulesetResponse_resourceArn,
    describeRulesetResponse_rules,
    describeRulesetResponse_tags,
    describeRulesetResponse_targetArn,
    describeRulesetResponse_httpStatus,
    describeRulesetResponse_name,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.DataBrew.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeRuleset' smart constructor.
data DescribeRuleset = DescribeRuleset'
  { -- | The name of the ruleset to be described.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRuleset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'describeRuleset_name' - The name of the ruleset to be described.
newDescribeRuleset ::
  -- | 'name'
  Prelude.Text ->
  DescribeRuleset
newDescribeRuleset pName_ =
  DescribeRuleset' {name = pName_}

-- | The name of the ruleset to be described.
describeRuleset_name :: Lens.Lens' DescribeRuleset Prelude.Text
describeRuleset_name = Lens.lens (\DescribeRuleset' {name} -> name) (\s@DescribeRuleset' {} a -> s {name = a} :: DescribeRuleset)

instance Core.AWSRequest DescribeRuleset where
  type
    AWSResponse DescribeRuleset =
      DescribeRulesetResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRulesetResponse'
            Prelude.<$> (x Data..?> "CreateDate")
            Prelude.<*> (x Data..?> "CreatedBy")
            Prelude.<*> (x Data..?> "Description")
            Prelude.<*> (x Data..?> "LastModifiedBy")
            Prelude.<*> (x Data..?> "LastModifiedDate")
            Prelude.<*> (x Data..?> "ResourceArn")
            Prelude.<*> (x Data..?> "Rules")
            Prelude.<*> (x Data..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Data..?> "TargetArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "Name")
      )

instance Prelude.Hashable DescribeRuleset where
  hashWithSalt _salt DescribeRuleset' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DescribeRuleset where
  rnf DescribeRuleset' {..} = Prelude.rnf name

instance Data.ToHeaders DescribeRuleset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToPath DescribeRuleset where
  toPath DescribeRuleset' {..} =
    Prelude.mconcat ["/rulesets/", Data.toBS name]

instance Data.ToQuery DescribeRuleset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeRulesetResponse' smart constructor.
data DescribeRulesetResponse = DescribeRulesetResponse'
  { -- | The date and time that the ruleset was created.
    createDate :: Prelude.Maybe Data.POSIX,
    -- | The Amazon Resource Name (ARN) of the user who created the ruleset.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | The description of the ruleset.
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the user who last modified the
    -- ruleset.
    lastModifiedBy :: Prelude.Maybe Prelude.Text,
    -- | The modification date and time of the ruleset.
    lastModifiedDate :: Prelude.Maybe Data.POSIX,
    -- | The Amazon Resource Name (ARN) for the ruleset.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | A list of rules that are defined with the ruleset. A rule includes one
    -- or more checks to be validated on a DataBrew dataset.
    rules :: Prelude.Maybe (Prelude.NonEmpty Rule),
    -- | Metadata tags that have been applied to the ruleset.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset
    -- is associated with.
    targetArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the ruleset.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRulesetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createDate', 'describeRulesetResponse_createDate' - The date and time that the ruleset was created.
--
-- 'createdBy', 'describeRulesetResponse_createdBy' - The Amazon Resource Name (ARN) of the user who created the ruleset.
--
-- 'description', 'describeRulesetResponse_description' - The description of the ruleset.
--
-- 'lastModifiedBy', 'describeRulesetResponse_lastModifiedBy' - The Amazon Resource Name (ARN) of the user who last modified the
-- ruleset.
--
-- 'lastModifiedDate', 'describeRulesetResponse_lastModifiedDate' - The modification date and time of the ruleset.
--
-- 'resourceArn', 'describeRulesetResponse_resourceArn' - The Amazon Resource Name (ARN) for the ruleset.
--
-- 'rules', 'describeRulesetResponse_rules' - A list of rules that are defined with the ruleset. A rule includes one
-- or more checks to be validated on a DataBrew dataset.
--
-- 'tags', 'describeRulesetResponse_tags' - Metadata tags that have been applied to the ruleset.
--
-- 'targetArn', 'describeRulesetResponse_targetArn' - The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset
-- is associated with.
--
-- 'httpStatus', 'describeRulesetResponse_httpStatus' - The response's http status code.
--
-- 'name', 'describeRulesetResponse_name' - The name of the ruleset.
newDescribeRulesetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  DescribeRulesetResponse
newDescribeRulesetResponse pHttpStatus_ pName_ =
  DescribeRulesetResponse'
    { createDate =
        Prelude.Nothing,
      createdBy = Prelude.Nothing,
      description = Prelude.Nothing,
      lastModifiedBy = Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      rules = Prelude.Nothing,
      tags = Prelude.Nothing,
      targetArn = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The date and time that the ruleset was created.
describeRulesetResponse_createDate :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.UTCTime)
describeRulesetResponse_createDate = Lens.lens (\DescribeRulesetResponse' {createDate} -> createDate) (\s@DescribeRulesetResponse' {} a -> s {createDate = a} :: DescribeRulesetResponse) Prelude.. Lens.mapping Data._Time

-- | The Amazon Resource Name (ARN) of the user who created the ruleset.
describeRulesetResponse_createdBy :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.Text)
describeRulesetResponse_createdBy = Lens.lens (\DescribeRulesetResponse' {createdBy} -> createdBy) (\s@DescribeRulesetResponse' {} a -> s {createdBy = a} :: DescribeRulesetResponse)

-- | The description of the ruleset.
describeRulesetResponse_description :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.Text)
describeRulesetResponse_description = Lens.lens (\DescribeRulesetResponse' {description} -> description) (\s@DescribeRulesetResponse' {} a -> s {description = a} :: DescribeRulesetResponse)

-- | The Amazon Resource Name (ARN) of the user who last modified the
-- ruleset.
describeRulesetResponse_lastModifiedBy :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.Text)
describeRulesetResponse_lastModifiedBy = Lens.lens (\DescribeRulesetResponse' {lastModifiedBy} -> lastModifiedBy) (\s@DescribeRulesetResponse' {} a -> s {lastModifiedBy = a} :: DescribeRulesetResponse)

-- | The modification date and time of the ruleset.
describeRulesetResponse_lastModifiedDate :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.UTCTime)
describeRulesetResponse_lastModifiedDate = Lens.lens (\DescribeRulesetResponse' {lastModifiedDate} -> lastModifiedDate) (\s@DescribeRulesetResponse' {} a -> s {lastModifiedDate = a} :: DescribeRulesetResponse) Prelude.. Lens.mapping Data._Time

-- | The Amazon Resource Name (ARN) for the ruleset.
describeRulesetResponse_resourceArn :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.Text)
describeRulesetResponse_resourceArn = Lens.lens (\DescribeRulesetResponse' {resourceArn} -> resourceArn) (\s@DescribeRulesetResponse' {} a -> s {resourceArn = a} :: DescribeRulesetResponse)

-- | A list of rules that are defined with the ruleset. A rule includes one
-- or more checks to be validated on a DataBrew dataset.
describeRulesetResponse_rules :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe (Prelude.NonEmpty Rule))
describeRulesetResponse_rules = Lens.lens (\DescribeRulesetResponse' {rules} -> rules) (\s@DescribeRulesetResponse' {} a -> s {rules = a} :: DescribeRulesetResponse) Prelude.. Lens.mapping Lens.coerced

-- | Metadata tags that have been applied to the ruleset.
describeRulesetResponse_tags :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeRulesetResponse_tags = Lens.lens (\DescribeRulesetResponse' {tags} -> tags) (\s@DescribeRulesetResponse' {} a -> s {tags = a} :: DescribeRulesetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset
-- is associated with.
describeRulesetResponse_targetArn :: Lens.Lens' DescribeRulesetResponse (Prelude.Maybe Prelude.Text)
describeRulesetResponse_targetArn = Lens.lens (\DescribeRulesetResponse' {targetArn} -> targetArn) (\s@DescribeRulesetResponse' {} a -> s {targetArn = a} :: DescribeRulesetResponse)

-- | The response's http status code.
describeRulesetResponse_httpStatus :: Lens.Lens' DescribeRulesetResponse Prelude.Int
describeRulesetResponse_httpStatus = Lens.lens (\DescribeRulesetResponse' {httpStatus} -> httpStatus) (\s@DescribeRulesetResponse' {} a -> s {httpStatus = a} :: DescribeRulesetResponse)

-- | The name of the ruleset.
describeRulesetResponse_name :: Lens.Lens' DescribeRulesetResponse Prelude.Text
describeRulesetResponse_name = Lens.lens (\DescribeRulesetResponse' {name} -> name) (\s@DescribeRulesetResponse' {} a -> s {name = a} :: DescribeRulesetResponse)

instance Prelude.NFData DescribeRulesetResponse where
  rnf DescribeRulesetResponse' {..} =
    Prelude.rnf createDate
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf lastModifiedBy
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf rules
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf targetArn
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf name

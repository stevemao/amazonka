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
-- Module      : Amazonka.SecurityLake.CreateAwsLogSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a natively-supported Amazon Web Services service as a Security Lake
-- source. Enables source types for member accounts in required Regions,
-- based on specified parameters. You can choose any source type in any
-- Region for accounts that are either part of a trusted organization or
-- standalone accounts. At least one of the three dimensions is a mandatory
-- input to this API. However, any combination of the three dimensions can
-- be supplied to this API.
--
-- By default, dimension refers to the entire set. When you don\'t provide
-- a dimension, Security Lake assumes that the missing dimension refers to
-- the entire set. This is overridden when you supply any one of the
-- inputs. For instance, when members is not specified, the API disables
-- all Security Lake member accounts for sources. Similarly, when Regions
-- are not specified, Security Lake is disabled for all the Regions where
-- Security Lake is available as a service.
--
-- You can use this API only to enable a natively-supported Amazon Web
-- Services services as a source. Use @CreateCustomLogSource@ to enable
-- data collection from a custom source.
module Amazonka.SecurityLake.CreateAwsLogSource
  ( -- * Creating a Request
    CreateAwsLogSource (..),
    newCreateAwsLogSource,

    -- * Request Lenses
    createAwsLogSource_enableAllDimensions,
    createAwsLogSource_enableSingleDimension,
    createAwsLogSource_enableTwoDimensions,
    createAwsLogSource_inputOrder,

    -- * Destructuring the Response
    CreateAwsLogSourceResponse (..),
    newCreateAwsLogSourceResponse,

    -- * Response Lenses
    createAwsLogSourceResponse_failed,
    createAwsLogSourceResponse_processing,
    createAwsLogSourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecurityLake.Types

-- | /See:/ 'newCreateAwsLogSource' smart constructor.
data CreateAwsLogSource = CreateAwsLogSource'
  { -- | Enables specific sources in all Regions and source types.
    enableAllDimensions :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text [Prelude.Text])),
    -- | Enables all sources in specific accounts or Regions.
    enableSingleDimension :: Prelude.Maybe [Prelude.Text],
    -- | Enables specific service sources in specific accounts or Regions.
    enableTwoDimensions :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | Specifies the input order to enable dimensions in Security Lake, namely
    -- region, source type, and member account.
    inputOrder :: [Dimension]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAwsLogSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableAllDimensions', 'createAwsLogSource_enableAllDimensions' - Enables specific sources in all Regions and source types.
--
-- 'enableSingleDimension', 'createAwsLogSource_enableSingleDimension' - Enables all sources in specific accounts or Regions.
--
-- 'enableTwoDimensions', 'createAwsLogSource_enableTwoDimensions' - Enables specific service sources in specific accounts or Regions.
--
-- 'inputOrder', 'createAwsLogSource_inputOrder' - Specifies the input order to enable dimensions in Security Lake, namely
-- region, source type, and member account.
newCreateAwsLogSource ::
  CreateAwsLogSource
newCreateAwsLogSource =
  CreateAwsLogSource'
    { enableAllDimensions =
        Prelude.Nothing,
      enableSingleDimension = Prelude.Nothing,
      enableTwoDimensions = Prelude.Nothing,
      inputOrder = Prelude.mempty
    }

-- | Enables specific sources in all Regions and source types.
createAwsLogSource_enableAllDimensions :: Lens.Lens' CreateAwsLogSource (Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text [Prelude.Text])))
createAwsLogSource_enableAllDimensions = Lens.lens (\CreateAwsLogSource' {enableAllDimensions} -> enableAllDimensions) (\s@CreateAwsLogSource' {} a -> s {enableAllDimensions = a} :: CreateAwsLogSource) Prelude.. Lens.mapping Lens.coerced

-- | Enables all sources in specific accounts or Regions.
createAwsLogSource_enableSingleDimension :: Lens.Lens' CreateAwsLogSource (Prelude.Maybe [Prelude.Text])
createAwsLogSource_enableSingleDimension = Lens.lens (\CreateAwsLogSource' {enableSingleDimension} -> enableSingleDimension) (\s@CreateAwsLogSource' {} a -> s {enableSingleDimension = a} :: CreateAwsLogSource) Prelude.. Lens.mapping Lens.coerced

-- | Enables specific service sources in specific accounts or Regions.
createAwsLogSource_enableTwoDimensions :: Lens.Lens' CreateAwsLogSource (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
createAwsLogSource_enableTwoDimensions = Lens.lens (\CreateAwsLogSource' {enableTwoDimensions} -> enableTwoDimensions) (\s@CreateAwsLogSource' {} a -> s {enableTwoDimensions = a} :: CreateAwsLogSource) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the input order to enable dimensions in Security Lake, namely
-- region, source type, and member account.
createAwsLogSource_inputOrder :: Lens.Lens' CreateAwsLogSource [Dimension]
createAwsLogSource_inputOrder = Lens.lens (\CreateAwsLogSource' {inputOrder} -> inputOrder) (\s@CreateAwsLogSource' {} a -> s {inputOrder = a} :: CreateAwsLogSource) Prelude.. Lens.coerced

instance Core.AWSRequest CreateAwsLogSource where
  type
    AWSResponse CreateAwsLogSource =
      CreateAwsLogSourceResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAwsLogSourceResponse'
            Prelude.<$> (x Data..?> "failed" Core..!@ Prelude.mempty)
            Prelude.<*> (x Data..?> "processing" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAwsLogSource where
  hashWithSalt _salt CreateAwsLogSource' {..} =
    _salt `Prelude.hashWithSalt` enableAllDimensions
      `Prelude.hashWithSalt` enableSingleDimension
      `Prelude.hashWithSalt` enableTwoDimensions
      `Prelude.hashWithSalt` inputOrder

instance Prelude.NFData CreateAwsLogSource where
  rnf CreateAwsLogSource' {..} =
    Prelude.rnf enableAllDimensions
      `Prelude.seq` Prelude.rnf enableSingleDimension
      `Prelude.seq` Prelude.rnf enableTwoDimensions
      `Prelude.seq` Prelude.rnf inputOrder

instance Data.ToHeaders CreateAwsLogSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON CreateAwsLogSource where
  toJSON CreateAwsLogSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("enableAllDimensions" Data..=)
              Prelude.<$> enableAllDimensions,
            ("enableSingleDimension" Data..=)
              Prelude.<$> enableSingleDimension,
            ("enableTwoDimensions" Data..=)
              Prelude.<$> enableTwoDimensions,
            Prelude.Just ("inputOrder" Data..= inputOrder)
          ]
      )

instance Data.ToPath CreateAwsLogSource where
  toPath = Prelude.const "/v1/logsources/aws"

instance Data.ToQuery CreateAwsLogSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAwsLogSourceResponse' smart constructor.
data CreateAwsLogSourceResponse = CreateAwsLogSourceResponse'
  { -- | List of all accounts in which enabling a natively-supported Amazon Web
    -- Services service as a Security Lake failed. The failure occurred as
    -- these accounts are not part of an organization.
    failed :: Prelude.Maybe [Prelude.Text],
    -- | List of all accounts which are in the process of enabling a
    -- natively-supported Amazon Web Services service as a Security Lake.
    processing :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAwsLogSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failed', 'createAwsLogSourceResponse_failed' - List of all accounts in which enabling a natively-supported Amazon Web
-- Services service as a Security Lake failed. The failure occurred as
-- these accounts are not part of an organization.
--
-- 'processing', 'createAwsLogSourceResponse_processing' - List of all accounts which are in the process of enabling a
-- natively-supported Amazon Web Services service as a Security Lake.
--
-- 'httpStatus', 'createAwsLogSourceResponse_httpStatus' - The response's http status code.
newCreateAwsLogSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAwsLogSourceResponse
newCreateAwsLogSourceResponse pHttpStatus_ =
  CreateAwsLogSourceResponse'
    { failed =
        Prelude.Nothing,
      processing = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of all accounts in which enabling a natively-supported Amazon Web
-- Services service as a Security Lake failed. The failure occurred as
-- these accounts are not part of an organization.
createAwsLogSourceResponse_failed :: Lens.Lens' CreateAwsLogSourceResponse (Prelude.Maybe [Prelude.Text])
createAwsLogSourceResponse_failed = Lens.lens (\CreateAwsLogSourceResponse' {failed} -> failed) (\s@CreateAwsLogSourceResponse' {} a -> s {failed = a} :: CreateAwsLogSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | List of all accounts which are in the process of enabling a
-- natively-supported Amazon Web Services service as a Security Lake.
createAwsLogSourceResponse_processing :: Lens.Lens' CreateAwsLogSourceResponse (Prelude.Maybe [Prelude.Text])
createAwsLogSourceResponse_processing = Lens.lens (\CreateAwsLogSourceResponse' {processing} -> processing) (\s@CreateAwsLogSourceResponse' {} a -> s {processing = a} :: CreateAwsLogSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createAwsLogSourceResponse_httpStatus :: Lens.Lens' CreateAwsLogSourceResponse Prelude.Int
createAwsLogSourceResponse_httpStatus = Lens.lens (\CreateAwsLogSourceResponse' {httpStatus} -> httpStatus) (\s@CreateAwsLogSourceResponse' {} a -> s {httpStatus = a} :: CreateAwsLogSourceResponse)

instance Prelude.NFData CreateAwsLogSourceResponse where
  rnf CreateAwsLogSourceResponse' {..} =
    Prelude.rnf failed
      `Prelude.seq` Prelude.rnf processing
      `Prelude.seq` Prelude.rnf httpStatus

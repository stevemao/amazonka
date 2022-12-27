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
-- Module      : Amazonka.IoTAnalytics.Types.Variable
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTAnalytics.Types.Variable where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IoTAnalytics.Types.DatasetContentVersionValue
import Amazonka.IoTAnalytics.Types.OutputFileUriValue
import qualified Amazonka.Prelude as Prelude

-- | An instance of a variable to be passed to the @containerAction@
-- execution. Each variable must have a name and a value given by one of
-- @stringValue@, @datasetContentVersionValue@, or @outputFileUriValue@.
--
-- /See:/ 'newVariable' smart constructor.
data Variable = Variable'
  { -- | The value of the variable as a structure that specifies a dataset
    -- content version.
    datasetContentVersionValue :: Prelude.Maybe DatasetContentVersionValue,
    -- | The value of the variable as a double (numeric).
    doubleValue :: Prelude.Maybe Prelude.Double,
    -- | The value of the variable as a structure that specifies an output file
    -- URI.
    outputFileUriValue :: Prelude.Maybe OutputFileUriValue,
    -- | The value of the variable as a string.
    stringValue :: Prelude.Maybe Prelude.Text,
    -- | The name of the variable.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Variable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetContentVersionValue', 'variable_datasetContentVersionValue' - The value of the variable as a structure that specifies a dataset
-- content version.
--
-- 'doubleValue', 'variable_doubleValue' - The value of the variable as a double (numeric).
--
-- 'outputFileUriValue', 'variable_outputFileUriValue' - The value of the variable as a structure that specifies an output file
-- URI.
--
-- 'stringValue', 'variable_stringValue' - The value of the variable as a string.
--
-- 'name', 'variable_name' - The name of the variable.
newVariable ::
  -- | 'name'
  Prelude.Text ->
  Variable
newVariable pName_ =
  Variable'
    { datasetContentVersionValue =
        Prelude.Nothing,
      doubleValue = Prelude.Nothing,
      outputFileUriValue = Prelude.Nothing,
      stringValue = Prelude.Nothing,
      name = pName_
    }

-- | The value of the variable as a structure that specifies a dataset
-- content version.
variable_datasetContentVersionValue :: Lens.Lens' Variable (Prelude.Maybe DatasetContentVersionValue)
variable_datasetContentVersionValue = Lens.lens (\Variable' {datasetContentVersionValue} -> datasetContentVersionValue) (\s@Variable' {} a -> s {datasetContentVersionValue = a} :: Variable)

-- | The value of the variable as a double (numeric).
variable_doubleValue :: Lens.Lens' Variable (Prelude.Maybe Prelude.Double)
variable_doubleValue = Lens.lens (\Variable' {doubleValue} -> doubleValue) (\s@Variable' {} a -> s {doubleValue = a} :: Variable)

-- | The value of the variable as a structure that specifies an output file
-- URI.
variable_outputFileUriValue :: Lens.Lens' Variable (Prelude.Maybe OutputFileUriValue)
variable_outputFileUriValue = Lens.lens (\Variable' {outputFileUriValue} -> outputFileUriValue) (\s@Variable' {} a -> s {outputFileUriValue = a} :: Variable)

-- | The value of the variable as a string.
variable_stringValue :: Lens.Lens' Variable (Prelude.Maybe Prelude.Text)
variable_stringValue = Lens.lens (\Variable' {stringValue} -> stringValue) (\s@Variable' {} a -> s {stringValue = a} :: Variable)

-- | The name of the variable.
variable_name :: Lens.Lens' Variable Prelude.Text
variable_name = Lens.lens (\Variable' {name} -> name) (\s@Variable' {} a -> s {name = a} :: Variable)

instance Data.FromJSON Variable where
  parseJSON =
    Data.withObject
      "Variable"
      ( \x ->
          Variable'
            Prelude.<$> (x Data..:? "datasetContentVersionValue")
            Prelude.<*> (x Data..:? "doubleValue")
            Prelude.<*> (x Data..:? "outputFileUriValue")
            Prelude.<*> (x Data..:? "stringValue")
            Prelude.<*> (x Data..: "name")
      )

instance Prelude.Hashable Variable where
  hashWithSalt _salt Variable' {..} =
    _salt
      `Prelude.hashWithSalt` datasetContentVersionValue
      `Prelude.hashWithSalt` doubleValue
      `Prelude.hashWithSalt` outputFileUriValue
      `Prelude.hashWithSalt` stringValue
      `Prelude.hashWithSalt` name

instance Prelude.NFData Variable where
  rnf Variable' {..} =
    Prelude.rnf datasetContentVersionValue
      `Prelude.seq` Prelude.rnf doubleValue
      `Prelude.seq` Prelude.rnf outputFileUriValue
      `Prelude.seq` Prelude.rnf stringValue
      `Prelude.seq` Prelude.rnf name

instance Data.ToJSON Variable where
  toJSON Variable' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("datasetContentVersionValue" Data..=)
              Prelude.<$> datasetContentVersionValue,
            ("doubleValue" Data..=) Prelude.<$> doubleValue,
            ("outputFileUriValue" Data..=)
              Prelude.<$> outputFileUriValue,
            ("stringValue" Data..=) Prelude.<$> stringValue,
            Prelude.Just ("name" Data..= name)
          ]
      )

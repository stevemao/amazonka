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
-- Module      : Amazonka.ManagedBlockChain.Types.ApprovalThresholdPolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ManagedBlockChain.Types.ApprovalThresholdPolicy where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.ManagedBlockChain.Types.ThresholdComparator
import qualified Amazonka.Prelude as Prelude

-- | A policy type that defines the voting rules for the network. The rules
-- decide if a proposal is approved. Approval may be based on criteria such
-- as the percentage of @YES@ votes and the duration of the proposal. The
-- policy applies to all proposals and is specified when the network is
-- created.
--
-- Applies only to Hyperledger Fabric.
--
-- /See:/ 'newApprovalThresholdPolicy' smart constructor.
data ApprovalThresholdPolicy = ApprovalThresholdPolicy'
  { -- | The duration from the time that a proposal is created until it expires.
    -- If members cast neither the required number of @YES@ votes to approve
    -- the proposal nor the number of @NO@ votes required to reject it before
    -- the duration expires, the proposal is @EXPIRED@ and @ProposalActions@
    -- aren\'t carried out.
    proposalDurationInHours :: Prelude.Maybe Prelude.Natural,
    -- | Determines whether the vote percentage must be greater than the
    -- @ThresholdPercentage@ or must be greater than or equal to the
    -- @ThreholdPercentage@ to be approved.
    thresholdComparator :: Prelude.Maybe ThresholdComparator,
    -- | The percentage of votes among all members that must be @YES@ for a
    -- proposal to be approved. For example, a @ThresholdPercentage@ value of
    -- @50@ indicates 50%. The @ThresholdComparator@ determines the precise
    -- comparison. If a @ThresholdPercentage@ value of @50@ is specified on a
    -- network with 10 members, along with a @ThresholdComparator@ value of
    -- @GREATER_THAN@, this indicates that 6 @YES@ votes are required for the
    -- proposal to be approved.
    thresholdPercentage :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApprovalThresholdPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'proposalDurationInHours', 'approvalThresholdPolicy_proposalDurationInHours' - The duration from the time that a proposal is created until it expires.
-- If members cast neither the required number of @YES@ votes to approve
-- the proposal nor the number of @NO@ votes required to reject it before
-- the duration expires, the proposal is @EXPIRED@ and @ProposalActions@
-- aren\'t carried out.
--
-- 'thresholdComparator', 'approvalThresholdPolicy_thresholdComparator' - Determines whether the vote percentage must be greater than the
-- @ThresholdPercentage@ or must be greater than or equal to the
-- @ThreholdPercentage@ to be approved.
--
-- 'thresholdPercentage', 'approvalThresholdPolicy_thresholdPercentage' - The percentage of votes among all members that must be @YES@ for a
-- proposal to be approved. For example, a @ThresholdPercentage@ value of
-- @50@ indicates 50%. The @ThresholdComparator@ determines the precise
-- comparison. If a @ThresholdPercentage@ value of @50@ is specified on a
-- network with 10 members, along with a @ThresholdComparator@ value of
-- @GREATER_THAN@, this indicates that 6 @YES@ votes are required for the
-- proposal to be approved.
newApprovalThresholdPolicy ::
  ApprovalThresholdPolicy
newApprovalThresholdPolicy =
  ApprovalThresholdPolicy'
    { proposalDurationInHours =
        Prelude.Nothing,
      thresholdComparator = Prelude.Nothing,
      thresholdPercentage = Prelude.Nothing
    }

-- | The duration from the time that a proposal is created until it expires.
-- If members cast neither the required number of @YES@ votes to approve
-- the proposal nor the number of @NO@ votes required to reject it before
-- the duration expires, the proposal is @EXPIRED@ and @ProposalActions@
-- aren\'t carried out.
approvalThresholdPolicy_proposalDurationInHours :: Lens.Lens' ApprovalThresholdPolicy (Prelude.Maybe Prelude.Natural)
approvalThresholdPolicy_proposalDurationInHours = Lens.lens (\ApprovalThresholdPolicy' {proposalDurationInHours} -> proposalDurationInHours) (\s@ApprovalThresholdPolicy' {} a -> s {proposalDurationInHours = a} :: ApprovalThresholdPolicy)

-- | Determines whether the vote percentage must be greater than the
-- @ThresholdPercentage@ or must be greater than or equal to the
-- @ThreholdPercentage@ to be approved.
approvalThresholdPolicy_thresholdComparator :: Lens.Lens' ApprovalThresholdPolicy (Prelude.Maybe ThresholdComparator)
approvalThresholdPolicy_thresholdComparator = Lens.lens (\ApprovalThresholdPolicy' {thresholdComparator} -> thresholdComparator) (\s@ApprovalThresholdPolicy' {} a -> s {thresholdComparator = a} :: ApprovalThresholdPolicy)

-- | The percentage of votes among all members that must be @YES@ for a
-- proposal to be approved. For example, a @ThresholdPercentage@ value of
-- @50@ indicates 50%. The @ThresholdComparator@ determines the precise
-- comparison. If a @ThresholdPercentage@ value of @50@ is specified on a
-- network with 10 members, along with a @ThresholdComparator@ value of
-- @GREATER_THAN@, this indicates that 6 @YES@ votes are required for the
-- proposal to be approved.
approvalThresholdPolicy_thresholdPercentage :: Lens.Lens' ApprovalThresholdPolicy (Prelude.Maybe Prelude.Natural)
approvalThresholdPolicy_thresholdPercentage = Lens.lens (\ApprovalThresholdPolicy' {thresholdPercentage} -> thresholdPercentage) (\s@ApprovalThresholdPolicy' {} a -> s {thresholdPercentage = a} :: ApprovalThresholdPolicy)

instance Data.FromJSON ApprovalThresholdPolicy where
  parseJSON =
    Data.withObject
      "ApprovalThresholdPolicy"
      ( \x ->
          ApprovalThresholdPolicy'
            Prelude.<$> (x Data..:? "ProposalDurationInHours")
            Prelude.<*> (x Data..:? "ThresholdComparator")
            Prelude.<*> (x Data..:? "ThresholdPercentage")
      )

instance Prelude.Hashable ApprovalThresholdPolicy where
  hashWithSalt _salt ApprovalThresholdPolicy' {..} =
    _salt
      `Prelude.hashWithSalt` proposalDurationInHours
      `Prelude.hashWithSalt` thresholdComparator
      `Prelude.hashWithSalt` thresholdPercentage

instance Prelude.NFData ApprovalThresholdPolicy where
  rnf ApprovalThresholdPolicy' {..} =
    Prelude.rnf proposalDurationInHours
      `Prelude.seq` Prelude.rnf thresholdComparator
      `Prelude.seq` Prelude.rnf thresholdPercentage

instance Data.ToJSON ApprovalThresholdPolicy where
  toJSON ApprovalThresholdPolicy' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ProposalDurationInHours" Data..=)
              Prelude.<$> proposalDurationInHours,
            ("ThresholdComparator" Data..=)
              Prelude.<$> thresholdComparator,
            ("ThresholdPercentage" Data..=)
              Prelude.<$> thresholdPercentage
          ]
      )

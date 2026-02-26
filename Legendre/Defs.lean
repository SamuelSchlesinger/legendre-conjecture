import Mathlib.Data.Nat.Prime.Basic

namespace Legendre

/-- `p` lies strictly between `n^2` and `(n + 1)^2`. -/
def InLegendreInterval (n p : Nat) : Prop :=
  n ^ 2 < p ∧ p < (n + 1) ^ 2

/-- Existence of a prime strictly between consecutive squares. -/
def HasLegendrePrime (n : Nat) : Prop :=
  ∃ p : Nat, Nat.Prime p ∧ InLegendreInterval n p

instance instDecidableInLegendreInterval (n p : Nat) :
    Decidable (InLegendreInterval n p) := by
  unfold InLegendreInterval
  infer_instance

end Legendre

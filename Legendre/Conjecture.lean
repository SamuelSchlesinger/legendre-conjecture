import Legendre.Defs
import Mathlib.Data.Set.Finite.Basic

namespace Legendre

/--
Legendre's conjecture: for every `n >= 1`, there is a prime between `n^2` and `(n + 1)^2`.
-/
theorem legendre_conjecture :
    ∀ n : Nat, 1 ≤ n → HasLegendrePrime n := by
  intro n hn
  sorry

/-- Expanded form of `legendre_conjecture`. -/
theorem legendre_conjecture_between_squares :
    ∀ n : Nat, 1 ≤ n → ∃ p : Nat, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  intro n hn
  rcases legendre_conjecture n hn with ⟨p, hp, hpInt⟩
  exact ⟨p, hp, hpInt.1, hpInt.2⟩

/-- TODO: Derive infinitude of primes from a proof of Legendre. -/
theorem infinite_primes_from_legendre
    (hLeg : ∀ n : Nat, 1 ≤ n → HasLegendrePrime n) :
    ({p : Nat | Nat.Prime p}).Infinite := by
  sorry

/-- TODO: Prove quantitative prime-counting lower bounds implied by Legendre. -/
theorem prime_counting_lower_bound_from_legendre :
    True := by
  sorry

end Legendre

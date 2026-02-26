import Legendre.Defs

namespace Legendre

theorem hasLegendrePrime_one : HasLegendrePrime 1 := by
  refine ⟨2, by decide, ?_⟩
  decide

theorem hasLegendrePrime_two : HasLegendrePrime 2 := by
  refine ⟨5, by decide, ?_⟩
  decide

theorem hasLegendrePrime_three : HasLegendrePrime 3 := by
  refine ⟨11, by decide, ?_⟩
  decide

theorem hasLegendrePrime_four : HasLegendrePrime 4 := by
  refine ⟨17, by decide, ?_⟩
  decide

theorem hasLegendrePrime_five : HasLegendrePrime 5 := by
  refine ⟨29, by decide, ?_⟩
  decide

/-- TODO: Prove exact interval width `(n + 1)^2 - n^2 = 2n + 1`. -/
theorem interval_width (n : Nat) :
    (n + 1) ^ 2 - n ^ 2 = 2 * n + 1 := by
  sorry

/-- TODO: Add reusable monotonicity lemmas for square endpoints. -/
theorem square_monotone {m n : Nat} (hmn : m ≤ n) :
    m ^ 2 ≤ n ^ 2 := by
  sorry

/-- TODO: Show lower endpoint `n^2` is composite for `2 ≤ n`. -/
theorem lower_endpoint_nonprime {n : Nat} (hn : 2 ≤ n) :
    ¬ Nat.Prime (n ^ 2) := by
  sorry

end Legendre

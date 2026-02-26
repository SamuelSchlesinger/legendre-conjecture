import Legendre.Basic
import Mathlib.Tactic.IntervalCases

namespace Legendre

theorem hasLegendrePrime_one_to_five {n : Nat} (hn1 : 1 ≤ n) (hn5 : n ≤ 5) :
    HasLegendrePrime n := by
  interval_cases n
  · simpa using hasLegendrePrime_one
  · simpa using hasLegendrePrime_two
  · simpa using hasLegendrePrime_three
  · simpa using hasLegendrePrime_four
  · simpa using hasLegendrePrime_five

/-- TODO: Replace this with a generated/certified bound extension. -/
theorem hasLegendrePrime_one_to_oneHundred {n : Nat} (hn1 : 1 ≤ n) (hn100 : n ≤ 100) :
    HasLegendrePrime n := by
  sorry

end Legendre

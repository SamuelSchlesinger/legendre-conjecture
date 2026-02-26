# Legendre Conjecture

A Lean 4 formalization scaffold for Legendre's conjecture.

## The Conjecture

For every integer `n >= 1`, there exists a prime `p` with:

`n^2 < p < (n + 1)^2`.

In Lean:

`forall n : Nat, 1 <= n -> HasLegendrePrime n`.

## Structure

| Module | Contents | TODO status |
|--------|----------|-------------|
| `Legendre.Defs` | Core predicates (`InLegendreInterval`, `HasLegendrePrime`) | complete |
| `Legendre.Basic` | Small explicit witnesses (`n = 1..5`) + structural TODO lemmas | TODOs present |
| `Legendre.SmallCases` | Finite-range theorem for `1 <= n <= 5` + TODO bound extension | TODOs present |
| `Legendre.Conjecture` | Main open statement and equivalent expanded form | TODOs present |

## Build

```sh
lake update && lake build
```

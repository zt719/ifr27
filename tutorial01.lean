/- COMP2065 (IFR) - Tutorial 1 -/

variable {P Q R : Prop}

/- Propositional Logic -/

/-
-- 1. Variables (P, Q, R, ...)
-- 2. Operators (→, ∧, ∨, ...)
-- 3. Tactics   (intro, apply, cases, ...)
-/

-- prove things you already knew
example : P → P := by
  intro p
  -- exact p
  assumption

-- use tactic table
example : (Q → R) → ((P → Q) → (P → R)) := by
  intro f -- how to prove →
  intro g -- how to prove →
  intro p -- how to prove →
  apply f -- how to use →
  apply g -- how to use →
  exact p

-- "have" tactic:
example : P → (P → Q ∨ R) → (R → Q) → Q := by
  intro p
  intro f
  intro g
  have qr : Q ∨ R := by
    apply f
    exact p
  cases qr with
  | inl q =>
    exact q
  | inr r =>
    apply g
    exact r

-- tactics are just functional programming
example : (P → Q) ∧ (P → R) → P → Q ∧ R :=
  fun ⟨ f , g ⟩ p => ⟨ f p , g p ⟩

theorem ex1 : (P → Q) ∧ (P → R) → P → Q ∧ R := by
  sorry

theorem ex2 : (P → R) ∧ (Q → R) → P ∨ Q → R := by
  sorry

theorem ex3 : P → True := by
  sorry

theorem ex4 : False → P := by
  sorry

-- you can never use Ture
example : True → P := by
  sorry -- Not provable

-- you can never prove False
example : P → False := by
  sorry -- Not provable

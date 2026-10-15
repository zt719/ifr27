/- COMP2065 (IFR) - Tutorial 2 -/

variable {P Q R : Prop}

/- 1. Constructive/Intuitionistic Logic
-- ↔ Prove by evidence
-/

/- Double Negation Introduction -/
theorem dni : P → ¬ ¬ P := by
  sorry

/- Contraposition To -/
theorem cp_to : (P → Q) → ¬ Q → ¬ P := by
  sorry

/- 2. Classical Logic
-- ↔ Can be proved with Excluded Middle (em) : P ∨ ¬ P
-- ↔ Can be checked by truth table
-/

open Classical
#check em

/- Double Negation Elimination -/
theorem dne : ¬ ¬ P → P := by
  sorry

/- Contraposition From -/
theorem cp_from : (¬ Q → ¬ P) → P → Q := by
  sorry

/- Pierce's Law -/
theorem pierce : ((P → Q) → P) → P := by
  sorry

/- Prove em using pierce - Very Hard -/
theorem em2 : P ∨ ¬ P := by
  sorry

/- 3. No Provable
-- ↔ Can find counterexample in truth table
-/

/- False -/
example : False := by
  sorry

/- Contradiction -/
example : P ∧ ¬ P := by
  sorry

example : (P → Q) → Q → P := by
  sorry

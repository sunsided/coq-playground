(* Import the standard arithmetic library which includes definitions and
   theorems about natural numbers *)
Require Import Arith.

(* Theorem Statement:
   This declares a theorem named mult_n_0, stating that for any natural number n,
   the product of n and 0 is 0. *)
Theorem mult_n_0 : forall n : nat, n * 0 = 0.
Proof.
  (* Introduce n as our arbitrary natural number for which we will
     prove the theorem *)
  intros n.

  (* Set up an induction on n. This creates two cases:
     - The base case where n is 0
     - The inductive step where n is the successor of some n' (S n') *)
  induction n as [| n' IHn'].

  - (* Base Case: *)
    simpl. (* Simplify 0 * 0 to 0 *)
    reflexivity. (* Conclude that both sides of the equation are equal *)

  - (* Inductive Step: *)
    simpl. (* Simplify (S n') * 0 to n' * 0 + 0 *)
    rewrite IHn'. (* Use the inductive hypothesis IHn' to replace n' * 0 with 0 *)
    reflexivity. (* Conclude that 0 + 0 is equal to 0 *)

(* End of the proof *)
Qed.
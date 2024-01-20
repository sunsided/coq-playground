(* Theorem: Commutativity of Logical Conjunction *)
Theorem example : forall a b:Prop, a /\ b -> b /\ a.
Proof.
  intros a b H. (* Introduce propositions a, b and hypothesis H *)
  split.        (* Split the goal into two parts *)

  - (* Proving the first part: b *)
    destruct H as [Ha Hb]. (* Destruct the hypothesis H *)
    apply Hb.              (* Apply the fact Hb to prove b *)

  - (* Proving the second part: a *)
    destruct H as [Ha Hb]. (* Destruct the hypothesis H again *)
    apply Ha.              (* Apply the fact Ha to prove a *)

Qed. (* End of proof *)
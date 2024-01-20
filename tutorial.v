Theorem example : forall a b:Prop, a /\ b -> b /\ a.
Proof.
  intros a b H.
  split.
  - destruct H as [Ha Hb]. apply Hb.
  - destruct H as [Ha Hb]. apply Ha.
Qed.
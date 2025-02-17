Lemma LP1 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1M : rk(P1 ::  nil) <= 1) by (solve_hyps_max HP1eq HP1M1).
assert(HP1m : rk(P1 ::  nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
intuition.
Qed.

Lemma LP2 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2M : rk(P2 ::  nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
assert(HP2m : rk(P2 ::  nil) >= 1) by (solve_hyps_min HP2eq HP2m1).
intuition.
Qed.

Lemma LP1P2 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P2 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2M : rk(P1 :: P2 ::  nil) <= 2) by (solve_hyps_max HP1P2eq HP1P2M2).
assert(HP1P2m : rk(P1 :: P2 ::  nil) >= 1) by (solve_hyps_min HP1P2eq HP1P2m1).
intuition.
Qed.

Lemma LP3 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P3 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP3M : rk(P3 ::  nil) <= 1) by (solve_hyps_max HP3eq HP3M1).
assert(HP3m : rk(P3 ::  nil) >= 1) by (solve_hyps_min HP3eq HP3m1).
intuition.
Qed.

Lemma LP1P3 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P3M : rk(P1 :: P3 ::  nil) <= 2) by (solve_hyps_max HP1P3eq HP1P3M2).
assert(HP1P3m : rk(P1 :: P3 ::  nil) >= 1) by (solve_hyps_min HP1P3eq HP1P3m1).
intuition.
Qed.

Lemma LP2P3 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P3M : rk(P2 :: P3 ::  nil) <= 2) by (solve_hyps_max HP2P3eq HP2P3M2).
assert(HP2P3m : rk(P2 :: P3 ::  nil) >= 1) by (solve_hyps_min HP2P3eq HP2P3m1).
intuition.
Qed.

Lemma LP1P2P3 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P2 :: P3 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P3m2 : rk(P1 :: P2 :: P3 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3m3 : rk(P1 :: P2 :: P3 :: nil) >= 3).
{
	try assert(HP4eq : rk(P4 :: nil) = 1) by (apply LP4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4Mtmp : rk(P4 :: nil) <= 1) by (solve_hyps_max HP4eq HP4M1).
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P2 :: P3 :: nil) (P4 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: nil) ((P1 :: P2 :: P3 :: nil) ++ (P4 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4mtmp;try rewrite HT2 in HP1P2P3P4mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P3 :: nil) (P4 :: nil) (nil) 4 0 1 HP1P2P3P4mtmp Hmtmp HP4Mtmp Hincl);apply HT.
}


assert(HP1P2P3M : rk(P1 :: P2 :: P3 ::  nil) <= 3) by (solve_hyps_max HP1P2P3eq HP1P2P3M3).
assert(HP1P2P3m : rk(P1 :: P2 :: P3 ::  nil) >= 1) by (solve_hyps_min HP1P2P3eq HP1P2P3m1).
intuition.
Qed.

Lemma LP4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P4 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP4M : rk(P4 ::  nil) <= 1) by (solve_hyps_max HP4eq HP4M1).
assert(HP4m : rk(P4 ::  nil) >= 1) by (solve_hyps_min HP4eq HP4m1).
intuition.
Qed.

Lemma LP1P4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P4 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P4M : rk(P1 :: P4 ::  nil) <= 2) by (solve_hyps_max HP1P4eq HP1P4M2).
assert(HP1P4m : rk(P1 :: P4 ::  nil) >= 1) by (solve_hyps_min HP1P4eq HP1P4m1).
intuition.
Qed.

Lemma LP2P4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P4M : rk(P2 :: P4 ::  nil) <= 2) by (solve_hyps_max HP2P4eq HP2P4M2).
assert(HP2P4m : rk(P2 :: P4 ::  nil) >= 1) by (solve_hyps_min HP2P4eq HP2P4m1).
intuition.
Qed.

Lemma LP1P2P4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P2 :: P4 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P4m2 : rk(P1 :: P2 :: P4 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4m3 : rk(P1 :: P2 :: P4 :: nil) >= 3).
{
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3Mtmp : rk(P3 :: nil) <= 1) by (solve_hyps_max HP3eq HP3M1).
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P3 :: nil) (P1 :: P2 :: P4 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: nil) (P3 :: P1 :: P2 :: P4 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P1 :: P2 :: P4 :: nil) ((P3 :: nil) ++ (P1 :: P2 :: P4 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4mtmp;try rewrite HT2 in HP1P2P3P4mtmp.
	assert(HT := rule_4 (P3 :: nil) (P1 :: P2 :: P4 :: nil) (nil) 4 0 1 HP1P2P3P4mtmp Hmtmp HP3Mtmp Hincl); apply HT.
}


assert(HP1P2P4M : rk(P1 :: P2 :: P4 ::  nil) <= 3) by (solve_hyps_max HP1P2P4eq HP1P2P4M3).
assert(HP1P2P4m : rk(P1 :: P2 :: P4 ::  nil) >= 1) by (solve_hyps_min HP1P2P4eq HP1P2P4m1).
intuition.
Qed.

Lemma LP3P4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP3P4M : rk(P3 :: P4 ::  nil) <= 2) by (solve_hyps_max HP3P4eq HP3P4M2).
assert(HP3P4m : rk(P3 :: P4 ::  nil) >= 1) by (solve_hyps_min HP3P4eq HP3P4m1).
intuition.
Qed.

Lemma LP2P3P4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P3 :: P4 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P3P4M : rk(P2 :: P3 :: P4 ::  nil) <= 3) by (solve_hyps_max HP2P3P4eq HP2P3P4M3).
assert(HP2P3P4m : rk(P2 :: P3 :: P4 ::  nil) >= 1) by (solve_hyps_min HP2P3P4eq HP2P3P4m1).
intuition.
Qed.

Lemma LP1P2P3P4 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P3P4M : rk(P1 :: P2 :: P3 :: P4 ::  nil) <= 4) by (apply rk_upper_dim).
assert(HP1P2P3P4m : rk(P1 :: P2 :: P3 :: P4 ::  nil) >= 1) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m1).
intuition.
Qed.

Lemma LP5 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P5 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP5M : rk(P5 ::  nil) <= 1) by (solve_hyps_max HP5eq HP5M1).
assert(HP5m : rk(P5 ::  nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
intuition.
Qed.

Lemma LP1P5 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P5 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P5M : rk(P1 :: P5 ::  nil) <= 2) by (solve_hyps_max HP1P5eq HP1P5M2).
assert(HP1P5m : rk(P1 :: P5 ::  nil) >= 1) by (solve_hyps_min HP1P5eq HP1P5m1).
intuition.
Qed.

Lemma LP2P5 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P5 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P5M : rk(P2 :: P5 ::  nil) <= 2) by (solve_hyps_max HP2P5eq HP2P5M2).
assert(HP2P5m : rk(P2 :: P5 ::  nil) >= 1) by (solve_hyps_min HP2P5eq HP2P5m1).
intuition.
Qed.

Lemma LP1P2P5 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P5M : rk(P1 :: P2 :: P5 ::  nil) <= 3) by (solve_hyps_max HP1P2P5eq HP1P2P5M3).
assert(HP1P2P5m : rk(P1 :: P2 :: P5 ::  nil) >= 1) by (solve_hyps_min HP1P2P5eq HP1P2P5m1).
intuition.
Qed.

Lemma LP6 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P6 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP6M : rk(P6 ::  nil) <= 1) by (solve_hyps_max HP6eq HP6M1).
assert(HP6m : rk(P6 ::  nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
intuition.
Qed.

Lemma LP1P6 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P6M : rk(P1 :: P6 ::  nil) <= 2) by (solve_hyps_max HP1P6eq HP1P6M2).
assert(HP1P6m : rk(P1 :: P6 ::  nil) >= 1) by (solve_hyps_min HP1P6eq HP1P6m1).
intuition.
Qed.

Lemma LP2P6 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P6 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P3P6M3 : rk(P1 :: P2 :: P3 :: P6 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P1 :: P3 :: P6 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P6 :: nil) (P2 :: P1 :: P3 :: P6 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P1 :: P3 :: P6 :: nil) ((P2 :: nil) ++ (P1 :: P3 :: P6 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P1 :: P3 :: P6 :: nil) (nil) 1 2 0 HP2Mtmp HP1P3P6Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P3P6m2 : rk(P1 :: P2 :: P3 :: P6 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P6 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P6 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P6m3 : rk(P1 :: P2 :: P3 :: P6 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P6 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P6 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P6m2 : rk(P2 :: P6 :: nil) >= 2).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P2P3P6eq : rk(P1 :: P2 :: P3 :: P6 :: nil) = 3) by (apply LP1P2P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P6mtmp : rk(P1 :: P2 :: P3 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P3P6eq HP1P2P3P6m3).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P2 :: P6 :: nil) (P1 :: P3 :: P6 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P6 :: nil) (P2 :: P6 :: P1 :: P3 :: P6 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P6 :: P1 :: P3 :: P6 :: nil) ((P2 :: P6 :: nil) ++ (P1 :: P3 :: P6 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P6mtmp;try rewrite HT2 in HP1P2P3P6mtmp.
	assert(HT := rule_2 (P2 :: P6 :: nil) (P1 :: P3 :: P6 :: nil) (P6 :: nil) 3 1 2 HP1P2P3P6mtmp HP6mtmp HP1P3P6Mtmp Hincl);apply HT.
}


assert(HP2P6M : rk(P2 :: P6 ::  nil) <= 2) by (solve_hyps_max HP2P6eq HP2P6M2).
assert(HP2P6m : rk(P2 :: P6 ::  nil) >= 1) by (solve_hyps_min HP2P6eq HP2P6m1).
intuition.
Qed.

Lemma LP1P2P6 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P2 :: P6 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P6m2 : rk(P1 :: P2 :: P6 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6m3 : rk(P1 :: P2 :: P6 :: nil) >= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P2P3P6eq : rk(P1 :: P2 :: P3 :: P6 :: nil) = 3) by (apply LP1P2P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P6mtmp : rk(P1 :: P2 :: P3 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P3P6eq HP1P2P3P6m3).
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hincl : incl (P1 :: P6 :: nil) (list_inter (P1 :: P2 :: P6 :: nil) (P1 :: P3 :: P6 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P6 :: nil) (P1 :: P2 :: P6 :: P1 :: P3 :: P6 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P6 :: P1 :: P3 :: P6 :: nil) ((P1 :: P2 :: P6 :: nil) ++ (P1 :: P3 :: P6 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P6mtmp;try rewrite HT2 in HP1P2P3P6mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P6 :: nil) (P1 :: P3 :: P6 :: nil) (P1 :: P6 :: nil) 3 2 2 HP1P2P3P6mtmp HP1P6mtmp HP1P3P6Mtmp Hincl);apply HT.
}
try clear HP1P2P3P6M1. try clear HP1P2P3P6M2. try clear HP1P2P3P6M3. try clear HP1P2P3P6m4. try clear HP1P2P3P6m3. try clear HP1P2P3P6m2. try clear HP1P2P3P6m1. 

assert(HP1P2P6M : rk(P1 :: P2 :: P6 ::  nil) <= 3) by (solve_hyps_max HP1P2P6eq HP1P2P6M3).
assert(HP1P2P6m : rk(P1 :: P2 :: P6 ::  nil) >= 1) by (solve_hyps_min HP1P2P6eq HP1P2P6m1).
intuition.
Qed.

Lemma LP1P3P6 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P3P6M : rk(P1 :: P3 :: P6 ::  nil) <= 3) by (solve_hyps_max HP1P3P6eq HP1P3P6M3).
assert(HP1P3P6m : rk(P1 :: P3 :: P6 ::  nil) >= 1) by (solve_hyps_min HP1P3P6eq HP1P3P6m1).
intuition.
Qed.

Lemma LP2P5P6 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P5 :: P6 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P3P4P5P6P7m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P7m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P7m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P6P7m2 : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P6P7m3 : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P6P7m4 : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) >= 4).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P2P3P4P5P6P7eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) = 4) by (apply LP1P2P3P4P5P6P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P5P6P7mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P6P7eq HP1P2P3P4P5P6P7m4).
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hincl : incl (P1 :: P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: nil) (P1 :: P3 :: P6 :: P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P6P7mtmp;try rewrite HT2 in HP1P2P3P4P5P6P7mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) (P1 :: P6 :: nil) 4 2 2 HP1P2P3P4P5P6P7mtmp HP1P6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP1P2P3P4P5P6P7M1. try clear HP1P2P3P4P5P6P7M2. try clear HP1P2P3P4P5P6P7M3. try clear HP1P2P3P4P5P6P7m4. try clear HP1P2P3P4P5P6P7m3. try clear HP1P2P3P4P5P6P7m2. try clear HP1P2P3P4P5P6P7m1. 

assert(HP1P2P4P5P7m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7M3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1mtmp : rk(P1 :: nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
	assert(Hincl : incl (P1 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P7 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P7 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P7 :: nil) (P1 :: nil) 2 2 1 HP1P2P5Mtmp HP1P4P7Mtmp HP1mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P5P6m2 : rk(P2 :: P5 :: P6 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6m3 : rk(P2 :: P5 :: P6 :: nil) >= 3).
{
	try assert(HP1P2P4P5P7eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: nil) = 3) by (apply LP1P2P4P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7Mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: nil) <= 3) by (solve_hyps_max HP1P2P4P5P7eq HP1P2P4P5P7M3).
	try assert(HP1P2P4P5P6P7eq : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) = 4) by (apply LP1P2P4P5P6P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P6P7mtmp : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P6P7eq HP1P2P4P5P6P7m4).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P2 :: P5 :: P6 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: nil) (P2 :: P5 :: P6 :: P1 :: P2 :: P4 :: P5 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P5 :: P6 :: P1 :: P2 :: P4 :: P5 :: P7 :: nil) ((P2 :: P5 :: P6 :: nil) ++ (P1 :: P2 :: P4 :: P5 :: P7 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P6P7mtmp;try rewrite HT2 in HP1P2P4P5P6P7mtmp.
	assert(HT := rule_2 (P2 :: P5 :: P6 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: nil) (P2 :: P5 :: nil) 4 2 3 HP1P2P4P5P6P7mtmp HP2P5mtmp HP1P2P4P5P7Mtmp Hincl);apply HT.
}
try clear HP1P2P4P5P7M1. try clear HP1P2P4P5P7M2. try clear HP1P2P4P5P7M3. try clear HP1P2P4P5P7m4. try clear HP1P2P4P5P7m3. try clear HP1P2P4P5P7m2. try clear HP1P2P4P5P7m1. try clear HP1P2P4P5P6P7M1. try clear HP1P2P4P5P6P7M2. try clear HP1P2P4P5P6P7M3. try clear HP1P2P4P5P6P7m4. try clear HP1P2P4P5P6P7m3. try clear HP1P2P4P5P6P7m2. try clear HP1P2P4P5P6P7m1. 

assert(HP2P5P6M : rk(P2 :: P5 :: P6 ::  nil) <= 3) by (solve_hyps_max HP2P5P6eq HP2P5P6M3).
assert(HP2P5P6m : rk(P2 :: P5 :: P6 ::  nil) >= 1) by (solve_hyps_min HP2P5P6eq HP2P5P6m1).
intuition.
Qed.

Lemma LP7 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P7 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP7M : rk(P7 ::  nil) <= 1) by (solve_hyps_max HP7eq HP7M1).
assert(HP7m : rk(P7 ::  nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
intuition.
Qed.

Lemma LP1P7 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P7 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P7M : rk(P1 :: P7 ::  nil) <= 2) by (solve_hyps_max HP1P7eq HP1P7M2).
assert(HP1P7m : rk(P1 :: P7 ::  nil) >= 1) by (solve_hyps_min HP1P7eq HP1P7m1).
intuition.
Qed.

Lemma LP1P4P7 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P4P7M : rk(P1 :: P4 :: P7 ::  nil) <= 3) by (solve_hyps_max HP1P4P7eq HP1P4P7M3).
assert(HP1P4P7m : rk(P1 :: P4 :: P7 ::  nil) >= 1) by (solve_hyps_min HP1P4P7eq HP1P4P7m1).
intuition.
Qed.

Lemma LP8 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P8 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP8M : rk(P8 ::  nil) <= 1) by (solve_hyps_max HP8eq HP8M1).
assert(HP8m : rk(P8 ::  nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
intuition.
Qed.

Lemma LP2P8 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P8 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P5P6P8M3 : rk(P2 :: P5 :: P6 :: P8 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P6 :: P8 :: nil) (P2 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P5 :: P6 :: P8 :: nil) ((P2 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P5 :: P6 :: P8 :: nil) (nil) 1 2 0 HP2Mtmp HP5P6P8Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P5P6P8m2 : rk(P2 :: P5 :: P6 :: P8 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P8 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6P8m3 : rk(P2 :: P5 :: P6 :: P8 :: nil) >= 3).
{
	try assert(HP2P5P6eq : rk(P2 :: P5 :: P6 :: nil) = 3) by (apply LP2P5P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P6mtmp : rk(P2 :: P5 :: P6 :: nil) >= 3) by (solve_hyps_min HP2P5P6eq HP2P5P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P8 :: nil) 3 3 HP2P5P6mtmp Hcomp Hincl);apply HT.
}
try clear HP2P5P6M1. try clear HP2P5P6M2. try clear HP2P5P6M3. try clear HP2P5P6m4. try clear HP2P5P6m3. try clear HP2P5P6m2. try clear HP2P5P6m1. 

assert(HP2P8m2 : rk(P2 :: P8 :: nil) >= 2).
{
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP2P5P6P8eq : rk(P2 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP2P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P6P8mtmp : rk(P2 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP2P5P6P8eq HP2P5P6P8m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P8 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P6 :: P8 :: nil) (P2 :: P8 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P8 :: P5 :: P6 :: P8 :: nil) ((P2 :: P8 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P6P8mtmp;try rewrite HT2 in HP2P5P6P8mtmp.
	assert(HT := rule_2 (P2 :: P8 :: nil) (P5 :: P6 :: P8 :: nil) (P8 :: nil) 3 1 2 HP2P5P6P8mtmp HP8mtmp HP5P6P8Mtmp Hincl);apply HT.
}
try clear HP2P5P6P8M1. try clear HP2P5P6P8M2. try clear HP2P5P6P8M3. try clear HP2P5P6P8m4. try clear HP2P5P6P8m3. try clear HP2P5P6P8m2. try clear HP2P5P6P8m1. 

assert(HP2P8M : rk(P2 :: P8 ::  nil) <= 2) by (solve_hyps_max HP2P8eq HP2P8M2).
assert(HP2P8m : rk(P2 :: P8 ::  nil) >= 1) by (solve_hyps_min HP2P8eq HP2P8m1).
intuition.
Qed.

Lemma LP3P8 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P3 :: P8 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P3P5P6P8m2 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P8m3 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P6P8m2 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P6P8m3 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P6P8eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP1P2P3P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P6P8mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P6P8eq HP1P2P3P5P6P8m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P8 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P8mtmp;try rewrite HT2 in HP1P2P3P5P6P8mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P6P8mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P6P8M3 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) <= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: nil) (P1 :: P3 :: P6 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P5 :: P6 :: P8 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P8 :: nil) (P6 :: nil) 2 2 1 HP1P3P6Mtmp HP5P6P8Mtmp HP6mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP3P5P6P8M3 : rk(P3 :: P5 :: P6 :: P8 :: nil) <= 3).
{
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3Mtmp : rk(P3 :: nil) <= 1) by (solve_hyps_max HP3eq HP3M1).
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P3 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P6 :: P8 :: nil) (P3 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P5 :: P6 :: P8 :: nil) ((P3 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P3 :: nil) (P5 :: P6 :: P8 :: nil) (nil) 1 2 0 HP3Mtmp HP5P6P8Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP3P5P6P8m2 : rk(P3 :: P5 :: P6 :: P8 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P6P8eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP1P2P3P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P6P8mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P6P8eq HP1P2P3P5P6P8m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: nil) (P1 :: P2 :: P5 :: P3 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P5 :: P6 :: P8 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P8mtmp;try rewrite HT2 in HP1P2P3P5P6P8mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P6 :: P8 :: nil) (P5 :: nil) 3 1 2 HP1P2P3P5P6P8mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P6P8M1. try clear HP1P2P3P5P6P8M2. try clear HP1P2P3P5P6P8M3. try clear HP1P2P3P5P6P8m4. try clear HP1P2P3P5P6P8m3. try clear HP1P2P3P5P6P8m2. try clear HP1P2P3P5P6P8m1. 

assert(HP3P5P6P8m3 : rk(P3 :: P5 :: P6 :: P8 :: nil) >= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P5P6P8eq : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP1P3P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P5P6P8mtmp : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P3P5P6P8eq HP1P3P5P6P8m3).
	try assert(HP3P6eq : rk(P3 :: P6 :: nil) = 2) by (apply LP3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P6mtmp : rk(P3 :: P6 :: nil) >= 2) by (solve_hyps_min HP3P6eq HP3P6m2).
	assert(Hincl : incl (P3 :: P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P3 :: P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: nil) (P1 :: P3 :: P6 :: P3 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P3 :: P5 :: P6 :: P8 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P3 :: P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P8mtmp;try rewrite HT2 in HP1P3P5P6P8mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P3 :: P5 :: P6 :: P8 :: nil) (P3 :: P6 :: nil) 3 2 2 HP1P3P5P6P8mtmp HP3P6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP3P6M1. try clear HP3P6M2. try clear HP3P6M3. try clear HP3P6m4. try clear HP3P6m3. try clear HP3P6m2. try clear HP3P6m1. 

assert(HP3P8m2 : rk(P3 :: P8 :: nil) >= 2).
{
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP3P5P6P8eq : rk(P3 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP3P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P5P6P8mtmp : rk(P3 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP3P5P6P8eq HP3P5P6P8m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P3 :: P8 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P6 :: P8 :: nil) (P3 :: P8 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P8 :: P5 :: P6 :: P8 :: nil) ((P3 :: P8 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P5P6P8mtmp;try rewrite HT2 in HP3P5P6P8mtmp.
	assert(HT := rule_2 (P3 :: P8 :: nil) (P5 :: P6 :: P8 :: nil) (P8 :: nil) 3 1 2 HP3P5P6P8mtmp HP8mtmp HP5P6P8Mtmp Hincl);apply HT.
}
try clear HP3P5P6P8M1. try clear HP3P5P6P8M2. try clear HP3P5P6P8M3. try clear HP3P5P6P8m4. try clear HP3P5P6P8m3. try clear HP3P5P6P8m2. try clear HP3P5P6P8m1. 

assert(HP3P8M : rk(P3 :: P8 ::  nil) <= 2) by (solve_hyps_max HP3P8eq HP3P8M2).
assert(HP3P8m : rk(P3 :: P8 ::  nil) >= 1) by (solve_hyps_min HP3P8eq HP3P8m1).
intuition.
Qed.

Lemma LP2P3P8 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P3 :: P8 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P3P8M : rk(P2 :: P3 :: P8 ::  nil) <= 3) by (solve_hyps_max HP2P3P8eq HP2P3P8M3).
assert(HP2P3P8m : rk(P2 :: P3 :: P8 ::  nil) >= 1) by (solve_hyps_min HP2P3P8eq HP2P3P8m1).
intuition.
Qed.

Lemma LP1P5P8 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P5 :: P8 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P5P6P8M3 : rk(P1 :: P5 :: P6 :: P8 :: nil) <= 3).
{
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1Mtmp : rk(P1 :: nil) <= 1) by (solve_hyps_max HP1eq HP1M1).
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P6 :: P8 :: nil) (P1 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P6 :: P8 :: nil) ((P1 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: nil) (P5 :: P6 :: P8 :: nil) (nil) 1 2 0 HP1Mtmp HP5P6P8Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P5P6P8m2 : rk(P1 :: P5 :: P6 :: P8 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P6 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P6 :: P8 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P6P8m3 : rk(P1 :: P5 :: P6 :: P8 :: nil) >= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P5P6P8eq : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP1P3P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P5P6P8mtmp : rk(P1 :: P3 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P3P5P6P8eq HP1P3P5P6P8m3).
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hincl : incl (P1 :: P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P1 :: P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: nil) (P1 :: P3 :: P6 :: P1 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P1 :: P5 :: P6 :: P8 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P1 :: P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P8mtmp;try rewrite HT2 in HP1P3P5P6P8mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P1 :: P5 :: P6 :: P8 :: nil) (P1 :: P6 :: nil) 3 2 2 HP1P3P5P6P8mtmp HP1P6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP1P3P5P6P8M1. try clear HP1P3P5P6P8M2. try clear HP1P3P5P6P8M3. try clear HP1P3P5P6P8m4. try clear HP1P3P5P6P8m3. try clear HP1P3P5P6P8m2. try clear HP1P3P5P6P8m1. 

assert(HP1P2P3P5P8m2 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8m3 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8M3 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2mtmp : rk(P2 :: nil) >= 1) by (solve_hyps_min HP2eq HP2m1).
	assert(Hincl : incl (P2 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P8 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P8 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P8 :: nil) (P2 :: nil) 2 2 1 HP1P2P5Mtmp HP2P3P8Mtmp HP2mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P5P8m2 : rk(P2 :: P3 :: P5 :: P8 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8M3 : rk(P2 :: P3 :: P5 :: P8 :: nil) <= 3).
{
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5Mtmp : rk(P5 :: nil) <= 1) by (solve_hyps_max HP5eq HP5M1).
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: nil) (P2 :: P3 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: nil) (P5 :: P2 :: P3 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P2 :: P3 :: P8 :: nil) ((P5 :: nil) ++ (P2 :: P3 :: P8 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: nil) (P2 :: P3 :: P8 :: nil) (nil) 1 2 0 HP5Mtmp HP2P3P8Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P5P8m3 : rk(P2 :: P3 :: P5 :: P8 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) = 3) by (apply LP1P2P3P5P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P8mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8eq HP1P2P3P5P8m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8mtmp;try rewrite HT2 in HP1P2P3P5P8mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P8mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP5P8m2 : rk(P5 :: P8 :: nil) >= 2).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P8eq : rk(P2 :: P3 :: P5 :: P8 :: nil) = 3) by (apply LP2P3P5P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P5P8mtmp : rk(P2 :: P3 :: P5 :: P8 :: nil) >= 3) by (solve_hyps_min HP2P3P5P8eq HP2P3P5P8m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: nil) (P2 :: P3 :: P8 :: P5 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P5 :: P8 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P5 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P8mtmp;try rewrite HT2 in HP2P3P5P8mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: nil) (P8 :: nil) 3 1 2 HP2P3P5P8mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P5P8M1. try clear HP2P3P5P8M2. try clear HP2P3P5P8M3. try clear HP2P3P5P8m4. try clear HP2P3P5P8m3. try clear HP2P3P5P8m2. try clear HP2P3P5P8m1. 

assert(HP1P5P8m2 : rk(P1 :: P5 :: P8 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P8 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P8m3 : rk(P1 :: P5 :: P8 :: nil) >= 3).
{
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP1P5P6P8eq : rk(P1 :: P5 :: P6 :: P8 :: nil) = 3) by (apply LP1P5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5P6P8mtmp : rk(P1 :: P5 :: P6 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P5P6P8eq HP1P5P6P8m3).
	try assert(HP5P8eq : rk(P5 :: P8 :: nil) = 2) by (apply LP5P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P8mtmp : rk(P5 :: P8 :: nil) >= 2) by (solve_hyps_min HP5P8eq HP5P8m2).
	assert(Hincl : incl (P5 :: P8 :: nil) (list_inter (P1 :: P5 :: P8 :: nil) (P5 :: P6 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P6 :: P8 :: nil) (P1 :: P5 :: P8 :: P5 :: P6 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P8 :: P5 :: P6 :: P8 :: nil) ((P1 :: P5 :: P8 :: nil) ++ (P5 :: P6 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P6P8mtmp;try rewrite HT2 in HP1P5P6P8mtmp.
	assert(HT := rule_2 (P1 :: P5 :: P8 :: nil) (P5 :: P6 :: P8 :: nil) (P5 :: P8 :: nil) 3 2 2 HP1P5P6P8mtmp HP5P8mtmp HP5P6P8Mtmp Hincl);apply HT.
}
try clear HP5P8M1. try clear HP5P8M2. try clear HP5P8M3. try clear HP5P8m4. try clear HP5P8m3. try clear HP5P8m2. try clear HP5P8m1. try clear HP1P5P6P8M1. try clear HP1P5P6P8M2. try clear HP1P5P6P8M3. try clear HP1P5P6P8m4. try clear HP1P5P6P8m3. try clear HP1P5P6P8m2. try clear HP1P5P6P8m1. 

assert(HP1P5P8M : rk(P1 :: P5 :: P8 ::  nil) <= 3) by (solve_hyps_max HP1P5P8eq HP1P5P8M3).
assert(HP1P5P8m : rk(P1 :: P5 :: P8 ::  nil) >= 1) by (solve_hyps_min HP1P5P8eq HP1P5P8m1).
intuition.
Qed.

Lemma LP5P6P8 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP5P6P8M : rk(P5 :: P6 :: P8 ::  nil) <= 3) by (solve_hyps_max HP5P6P8eq HP5P6P8M3).
assert(HP5P6P8m : rk(P5 :: P6 :: P8 ::  nil) >= 1) by (solve_hyps_min HP5P6P8eq HP5P6P8m1).
intuition.
Qed.

Lemma LP9 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P9 ::  nil) = 1.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP9M : rk(P9 ::  nil) <= 1) by (solve_hyps_max HP9eq HP9M1).
assert(HP9m : rk(P9 ::  nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
intuition.
Qed.

Lemma LP2P9 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P9 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P3P4P7m2 : rk(P1 :: P2 :: P3 :: P4 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P7m3 : rk(P1 :: P2 :: P3 :: P4 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P7m4 : rk(P1 :: P2 :: P3 :: P4 :: P7 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P7m2 : rk(P1 :: P2 :: P3 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P7m3 : rk(P1 :: P2 :: P3 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P7 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P7m4 : rk(P1 :: P2 :: P3 :: P7 :: nil) >= 4).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P2P3P4P7eq : rk(P1 :: P2 :: P3 :: P4 :: P7 :: nil) = 4) by (apply LP1P2P3P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P7mtmp : rk(P1 :: P2 :: P3 :: P4 :: P7 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P7eq HP1P2P3P4P7m4).
	try assert(HP1P7eq : rk(P1 :: P7 :: nil) = 2) by (apply LP1P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P7mtmp : rk(P1 :: P7 :: nil) >= 2) by (solve_hyps_min HP1P7eq HP1P7m2).
	assert(Hincl : incl (P1 :: P7 :: nil) (list_inter (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P4 :: P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P7 :: nil) (P1 :: P2 :: P3 :: P7 :: P1 :: P4 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P7 :: P1 :: P4 :: P7 :: nil) ((P1 :: P2 :: P3 :: P7 :: nil) ++ (P1 :: P4 :: P7 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P7mtmp;try rewrite HT2 in HP1P2P3P4P7mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P4 :: P7 :: nil) (P1 :: P7 :: nil) 4 2 2 HP1P2P3P4P7mtmp HP1P7mtmp HP1P4P7Mtmp Hincl);apply HT.
}
try clear HP1P2P3P4P7M1. try clear HP1P2P3P4P7M2. try clear HP1P2P3P4P7M3. try clear HP1P2P3P4P7m4. try clear HP1P2P3P4P7m3. try clear HP1P2P3P4P7m2. try clear HP1P2P3P4P7m1. 

assert(HP1P2P3P5P7P8m2 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P7P8m3 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P7P8m4 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) >= 4).
{
	try assert(HP1P2P3P7eq : rk(P1 :: P2 :: P3 :: P7 :: nil) = 4) by (apply LP1P2P3P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P7mtmp : rk(P1 :: P2 :: P3 :: P7 :: nil) >= 4) by (solve_hyps_min HP1P2P3P7eq HP1P2P3P7m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) 4 4 HP1P2P3P7mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P7m2 : rk(P2 :: P5 :: P7 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P7 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P7m3 : rk(P2 :: P5 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P3P5P8eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) = 3) by (apply LP1P2P3P5P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P8Mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: nil) <= 3) by (solve_hyps_max HP1P2P3P5P8eq HP1P2P3P5P8M3).
	try assert(HP1P2P3P5P7P8eq : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) = 4) by (apply LP1P2P3P5P7P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P7P8mtmp : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P7P8eq HP1P2P3P5P7P8m4).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P2 :: P5 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: nil) (P2 :: P5 :: P7 :: P1 :: P2 :: P3 :: P5 :: P8 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P5 :: P7 :: P1 :: P2 :: P3 :: P5 :: P8 :: nil) ((P2 :: P5 :: P7 :: nil) ++ (P1 :: P2 :: P3 :: P5 :: P8 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P7P8mtmp;try rewrite HT2 in HP1P2P3P5P7P8mtmp.
	assert(HT := rule_2 (P2 :: P5 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: nil) (P2 :: P5 :: nil) 4 2 3 HP1P2P3P5P7P8mtmp HP2P5mtmp HP1P2P3P5P8Mtmp Hincl);apply HT.
}
try clear HP1P2P3P5P8M1. try clear HP1P2P3P5P8M2. try clear HP1P2P3P5P8M3. try clear HP1P2P3P5P8m4. try clear HP1P2P3P5P8m3. try clear HP1P2P3P5P8m2. try clear HP1P2P3P5P8m1. try clear HP1P2P3P5P7P8M1. try clear HP1P2P3P5P7P8M2. try clear HP1P2P3P5P7P8M3. try clear HP1P2P3P5P7P8m4. try clear HP1P2P3P5P7P8m3. try clear HP1P2P3P5P7P8m2. try clear HP1P2P3P5P7P8m1. 

assert(HP2P5P7P9M3 : rk(P2 :: P5 :: P7 :: P9 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P7 :: P9 :: nil) (P2 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P5 :: P7 :: P9 :: nil) ((P2 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P5 :: P7 :: P9 :: nil) (nil) 1 2 0 HP2Mtmp HP5P7P9Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P5P7P9m2 : rk(P2 :: P5 :: P7 :: P9 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P7 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P7 :: P9 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P7P9m3 : rk(P2 :: P5 :: P7 :: P9 :: nil) >= 3).
{
	try assert(HP2P5P7eq : rk(P2 :: P5 :: P7 :: nil) = 3) by (apply LP2P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P7mtmp : rk(P2 :: P5 :: P7 :: nil) >= 3) by (solve_hyps_min HP2P5P7eq HP2P5P7m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: P7 :: nil) (P2 :: P5 :: P7 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: P7 :: nil) (P2 :: P5 :: P7 :: P9 :: nil) 3 3 HP2P5P7mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9m2 : rk(P2 :: P9 :: nil) >= 2).
{
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	try assert(HP2P5P7P9eq : rk(P2 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP2P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P7P9mtmp : rk(P2 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP2P5P7P9eq HP2P5P7P9m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P9 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P7 :: P9 :: nil) (P2 :: P9 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P9 :: P5 :: P7 :: P9 :: nil) ((P2 :: P9 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P7P9mtmp;try rewrite HT2 in HP2P5P7P9mtmp.
	assert(HT := rule_2 (P2 :: P9 :: nil) (P5 :: P7 :: P9 :: nil) (P9 :: nil) 3 1 2 HP2P5P7P9mtmp HP9mtmp HP5P7P9Mtmp Hincl);apply HT.
}
try clear HP2P5P7P9M1. try clear HP2P5P7P9M2. try clear HP2P5P7P9M3. try clear HP2P5P7P9m4. try clear HP2P5P7P9m3. try clear HP2P5P7P9m2. try clear HP2P5P7P9m1. 

assert(HP2P9M : rk(P2 :: P9 ::  nil) <= 2) by (solve_hyps_max HP2P9eq HP2P9M2).
assert(HP2P9m : rk(P2 :: P9 ::  nil) >= 1) by (solve_hyps_min HP2P9eq HP2P9m1).
intuition.
Qed.

Lemma LP4P9 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P4 :: P9 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P2P4P5P7P9m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7P9m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P9m2 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P9m3 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P9eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP1P2P4P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7P9mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P9eq HP1P2P4P5P7P9m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P9 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P9mtmp;try rewrite HT2 in HP1P2P4P5P7P9mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P7P9mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P4P5P7P9M3 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) <= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P9 :: nil) (P1 :: P4 :: P7 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P7 :: P9 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P9 :: nil) (P7 :: nil) 2 2 1 HP1P4P7Mtmp HP5P7P9Mtmp HP7mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP4P5P7P9M3 : rk(P4 :: P5 :: P7 :: P9 :: nil) <= 3).
{
	try assert(HP4eq : rk(P4 :: nil) = 1) by (apply LP4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4Mtmp : rk(P4 :: nil) <= 1) by (solve_hyps_max HP4eq HP4M1).
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P4 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P7 :: P9 :: nil) (P4 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P5 :: P7 :: P9 :: nil) ((P4 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P4 :: nil) (P5 :: P7 :: P9 :: nil) (nil) 1 2 0 HP4Mtmp HP5P7P9Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP4P5P7P9m2 : rk(P4 :: P5 :: P7 :: P9 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P9eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP1P2P4P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7P9mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P9eq HP1P2P4P5P7P9m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: nil) (P1 :: P2 :: P5 :: P4 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P4 :: P5 :: P7 :: P9 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P4 :: P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P9mtmp;try rewrite HT2 in HP1P2P4P5P7P9mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P7 :: P9 :: nil) (P5 :: nil) 3 1 2 HP1P2P4P5P7P9mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P7P9M1. try clear HP1P2P4P5P7P9M2. try clear HP1P2P4P5P7P9M3. try clear HP1P2P4P5P7P9m4. try clear HP1P2P4P5P7P9m3. try clear HP1P2P4P5P7P9m2. try clear HP1P2P4P5P7P9m1. 

assert(HP4P5P7P9m3 : rk(P4 :: P5 :: P7 :: P9 :: nil) >= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P9eq : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP1P4P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P7P9mtmp : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P9eq HP1P4P5P7P9m3).
	try assert(HP4P7eq : rk(P4 :: P7 :: nil) = 2) by (apply LP4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P7mtmp : rk(P4 :: P7 :: nil) >= 2) by (solve_hyps_min HP4P7eq HP4P7m2).
	assert(Hincl : incl (P4 :: P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P4 :: P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P9 :: nil) (P1 :: P4 :: P7 :: P4 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P4 :: P5 :: P7 :: P9 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P4 :: P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P9mtmp;try rewrite HT2 in HP1P4P5P7P9mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P4 :: P5 :: P7 :: P9 :: nil) (P4 :: P7 :: nil) 3 2 2 HP1P4P5P7P9mtmp HP4P7mtmp HP1P4P7Mtmp Hincl); apply HT.
}


assert(HP4P9m2 : rk(P4 :: P9 :: nil) >= 2).
{
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	try assert(HP4P5P7P9eq : rk(P4 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP4P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P5P7P9mtmp : rk(P4 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP4P5P7P9eq HP4P5P7P9m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P4 :: P9 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P7 :: P9 :: nil) (P4 :: P9 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P9 :: P5 :: P7 :: P9 :: nil) ((P4 :: P9 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P5P7P9mtmp;try rewrite HT2 in HP4P5P7P9mtmp.
	assert(HT := rule_2 (P4 :: P9 :: nil) (P5 :: P7 :: P9 :: nil) (P9 :: nil) 3 1 2 HP4P5P7P9mtmp HP9mtmp HP5P7P9Mtmp Hincl);apply HT.
}
try clear HP4P5P7P9M1. try clear HP4P5P7P9M2. try clear HP4P5P7P9M3. try clear HP4P5P7P9m4. try clear HP4P5P7P9m3. try clear HP4P5P7P9m2. try clear HP4P5P7P9m1. 

assert(HP4P9M : rk(P4 :: P9 ::  nil) <= 2) by (solve_hyps_max HP4P9eq HP4P9M2).
assert(HP4P9m : rk(P4 :: P9 ::  nil) >= 1) by (solve_hyps_min HP4P9eq HP4P9m1).
intuition.
Qed.

Lemma LP2P4P9 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P2 :: P4 :: P9 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P4P9M : rk(P2 :: P4 :: P9 ::  nil) <= 3) by (solve_hyps_max HP2P4P9eq HP2P4P9M3).
assert(HP2P4P9m : rk(P2 :: P4 :: P9 ::  nil) >= 1) by (solve_hyps_min HP2P4P9eq HP2P4P9m1).
intuition.
Qed.

Lemma LP1P5P9 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P5 :: P9 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP1P5P7P9M3 : rk(P1 :: P5 :: P7 :: P9 :: nil) <= 3).
{
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1Mtmp : rk(P1 :: nil) <= 1) by (solve_hyps_max HP1eq HP1M1).
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P7 :: P9 :: nil) (P1 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P7 :: P9 :: nil) ((P1 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: nil) (P5 :: P7 :: P9 :: nil) (nil) 1 2 0 HP1Mtmp HP5P7P9Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P5P7P9m2 : rk(P1 :: P5 :: P7 :: P9 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P7 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P7 :: P9 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P7P9m3 : rk(P1 :: P5 :: P7 :: P9 :: nil) >= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P9eq : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP1P4P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P7P9mtmp : rk(P1 :: P4 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P9eq HP1P4P5P7P9m3).
	try assert(HP1P7eq : rk(P1 :: P7 :: nil) = 2) by (apply LP1P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P7mtmp : rk(P1 :: P7 :: nil) >= 2) by (solve_hyps_min HP1P7eq HP1P7m2).
	assert(Hincl : incl (P1 :: P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P1 :: P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P9 :: nil) (P1 :: P4 :: P7 :: P1 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P1 :: P5 :: P7 :: P9 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P1 :: P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P9mtmp;try rewrite HT2 in HP1P4P5P7P9mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P1 :: P5 :: P7 :: P9 :: nil) (P1 :: P7 :: nil) 3 2 2 HP1P4P5P7P9mtmp HP1P7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P5P7P9M1. try clear HP1P4P5P7P9M2. try clear HP1P4P5P7P9M3. try clear HP1P4P5P7P9m4. try clear HP1P4P5P7P9m3. try clear HP1P4P5P7P9m2. try clear HP1P4P5P7P9m1. 

assert(HP1P2P4P5P9m2 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9m3 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9M3 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2mtmp : rk(P2 :: nil) >= 1) by (solve_hyps_min HP2eq HP2m1).
	assert(Hincl : incl (P2 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: nil) (P1 :: P2 :: P5 :: P2 :: P4 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P4 :: P9 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P4 :: P9 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P9 :: nil) (P2 :: nil) 2 2 1 HP1P2P5Mtmp HP2P4P9Mtmp HP2mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P4P5P9m2 : rk(P2 :: P4 :: P5 :: P9 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P5P9M3 : rk(P2 :: P4 :: P5 :: P9 :: nil) <= 3).
{
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5Mtmp : rk(P5 :: nil) <= 1) by (solve_hyps_max HP5eq HP5M1).
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: nil) (P2 :: P4 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: nil) (P5 :: P2 :: P4 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P2 :: P4 :: P9 :: nil) ((P5 :: nil) ++ (P2 :: P4 :: P9 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: nil) (P2 :: P4 :: P9 :: nil) (nil) 1 2 0 HP5Mtmp HP2P4P9Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P4P5P9m3 : rk(P2 :: P4 :: P5 :: P9 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: nil) = 3) by (apply LP1P2P4P5P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P9mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9eq HP1P2P4P5P9m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: nil) (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P4 :: P5 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9mtmp;try rewrite HT2 in HP1P2P4P5P9mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P4P5P9mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P9M1. try clear HP1P2P4P5P9M2. try clear HP1P2P4P5P9M3. try clear HP1P2P4P5P9m4. try clear HP1P2P4P5P9m3. try clear HP1P2P4P5P9m2. try clear HP1P2P4P5P9m1. 

assert(HP5P9m2 : rk(P5 :: P9 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P5P9eq : rk(P2 :: P4 :: P5 :: P9 :: nil) = 3) by (apply LP2P4P5P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P5P9mtmp : rk(P2 :: P4 :: P5 :: P9 :: nil) >= 3) by (solve_hyps_min HP2P4P5P9eq HP2P4P5P9m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: nil) (P2 :: P4 :: P9 :: P5 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P5 :: P9 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P5 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P5P9mtmp;try rewrite HT2 in HP2P4P5P9mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: nil) (P9 :: nil) 3 1 2 HP2P4P5P9mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P5P9M1. try clear HP2P4P5P9M2. try clear HP2P4P5P9M3. try clear HP2P4P5P9m4. try clear HP2P4P5P9m3. try clear HP2P4P5P9m2. try clear HP2P4P5P9m1. 

assert(HP1P5P9m2 : rk(P1 :: P5 :: P9 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P9 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P9 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P9m3 : rk(P1 :: P5 :: P9 :: nil) >= 3).
{
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	try assert(HP1P5P7P9eq : rk(P1 :: P5 :: P7 :: P9 :: nil) = 3) by (apply LP1P5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5P7P9mtmp : rk(P1 :: P5 :: P7 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P5P7P9eq HP1P5P7P9m3).
	try assert(HP5P9eq : rk(P5 :: P9 :: nil) = 2) by (apply LP5P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P9mtmp : rk(P5 :: P9 :: nil) >= 2) by (solve_hyps_min HP5P9eq HP5P9m2).
	assert(Hincl : incl (P5 :: P9 :: nil) (list_inter (P1 :: P5 :: P9 :: nil) (P5 :: P7 :: P9 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P7 :: P9 :: nil) (P1 :: P5 :: P9 :: P5 :: P7 :: P9 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P9 :: P5 :: P7 :: P9 :: nil) ((P1 :: P5 :: P9 :: nil) ++ (P5 :: P7 :: P9 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P7P9mtmp;try rewrite HT2 in HP1P5P7P9mtmp.
	assert(HT := rule_2 (P1 :: P5 :: P9 :: nil) (P5 :: P7 :: P9 :: nil) (P5 :: P9 :: nil) 3 2 2 HP1P5P7P9mtmp HP5P9mtmp HP5P7P9Mtmp Hincl);apply HT.
}
try clear HP5P9M1. try clear HP5P9M2. try clear HP5P9M3. try clear HP5P9m4. try clear HP5P9m3. try clear HP5P9m2. try clear HP5P9m1. try clear HP1P5P7P9M1. try clear HP1P5P7P9M2. try clear HP1P5P7P9M3. try clear HP1P5P7P9m4. try clear HP1P5P7P9m3. try clear HP1P5P7P9m2. try clear HP1P5P7P9m1. 

assert(HP1P5P9M : rk(P1 :: P5 :: P9 ::  nil) <= 3) by (solve_hyps_max HP1P5P9eq HP1P5P9M3).
assert(HP1P5P9m : rk(P1 :: P5 :: P9 ::  nil) >= 1) by (solve_hyps_min HP1P5P9eq HP1P5P9m1).
intuition.
Qed.

Lemma LP5P7P9 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP5P7P9M : rk(P5 :: P7 :: P9 ::  nil) <= 3) by (solve_hyps_max HP5P7P9eq HP5P7P9M3).
assert(HP5P7P9m : rk(P5 :: P7 :: P9 ::  nil) >= 1) by (solve_hyps_min HP5P7P9eq HP5P7P9m1).
intuition.
Qed.

Lemma LP8P9P10 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P8 :: P9 :: P10 ::  nil) = 2.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq .

assert(HP2P3P4P8P10m2 : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P10 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P10m3 : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P10 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P10M3 : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) <= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP3P4P10eq : rk(P3 :: P4 :: P10 :: nil) = 2) by (apply LP3P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P10Mtmp : rk(P3 :: P4 :: P10 :: nil) <= 2) by (solve_hyps_max HP3P4P10eq HP3P4P10M2).
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3mtmp : rk(P3 :: nil) >= 1) by (solve_hyps_min HP3eq HP3m1).
	assert(Hincl : incl (P3 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P3 :: P4 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P10 :: nil) (P2 :: P3 :: P8 :: P3 :: P4 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P3 :: P4 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P3 :: P4 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P3 :: P8 :: nil) (P3 :: P4 :: P10 :: nil) (P3 :: nil) 2 2 1 HP2P3P8Mtmp HP3P4P10Mtmp HP3mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP3M1. try clear HP3M2. try clear HP3M3. try clear HP3m4. try clear HP3m3. try clear HP3m2. try clear HP3m1. 

assert(HP2P4P8P10m2 : rk(P2 :: P4 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P10 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P8P10m3 : rk(P2 :: P4 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P10eq : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) = 3) by (apply LP2P3P4P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4P8P10mtmp : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P10eq HP2P3P4P8P10m3).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P10 :: nil) (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P4 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P10mtmp;try rewrite HT2 in HP2P3P4P8P10mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P10 :: nil) (P2 :: P8 :: nil) 3 2 2 HP2P3P4P8P10mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}


assert(HP2P4P8P10M3 : rk(P2 :: P4 :: P8 :: P10 :: nil) <= 3).
{
	try assert(HP2P3P4P8P10eq : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) = 3) by (apply LP2P3P4P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4P8P10Mtmp : rk(P2 :: P3 :: P4 :: P8 :: P10 :: nil) <= 3) by (solve_hyps_max HP2P3P4P8P10eq HP2P3P4P8P10M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P8 :: P10 :: nil) (P2 :: P3 :: P4 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P2 :: P4 :: P8 :: P10 :: nil) (P2 :: P3 :: P4 :: P8 :: P10 :: nil) 3 3 HP2P3P4P8P10Mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3P4P8P10M1. try clear HP2P3P4P8P10M2. try clear HP2P3P4P8P10M3. try clear HP2P3P4P8P10m4. try clear HP2P3P4P8P10m3. try clear HP2P3P4P8P10m2. try clear HP2P3P4P8P10m1. 

assert(HP2P3P4P10M3 : rk(P2 :: P3 :: P4 :: P10 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP3P4P10eq : rk(P3 :: P4 :: P10 :: nil) = 2) by (apply LP3P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P10Mtmp : rk(P3 :: P4 :: P10 :: nil) <= 2) by (solve_hyps_max HP3P4P10eq HP3P4P10M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P3 :: P4 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P10 :: nil) (P2 :: P3 :: P4 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P4 :: P10 :: nil) ((P2 :: nil) ++ (P3 :: P4 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P3 :: P4 :: P10 :: nil) (nil) 1 2 0 HP2Mtmp HP3P4P10Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P4P10m2 : rk(P2 :: P3 :: P4 :: P10 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P10 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P10m3 : rk(P2 :: P3 :: P4 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P10 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4m3 : rk(P1 :: P3 :: P4 :: nil) >= 3).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2Mtmp : rk(P1 :: P2 :: nil) <= 2) by (solve_hyps_max HP1P2eq HP1P2M2).
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1mtmp : rk(P1 :: nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
	assert(Hincl : incl (P1 :: nil) (list_inter (P1 :: P2 :: nil) (P1 :: P3 :: P4 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P1 :: P3 :: P4 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P1 :: P3 :: P4 :: nil) ((P1 :: P2 :: nil) ++ (P1 :: P3 :: P4 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4mtmp;try rewrite HT2 in HP1P2P3P4mtmp.
	assert(HT := rule_4 (P1 :: P2 :: nil) (P1 :: P3 :: P4 :: nil) (P1 :: nil) 4 1 2 HP1P2P3P4mtmp HP1mtmp HP1P2Mtmp Hincl); apply HT.
}
try clear HP1M1. try clear HP1M2. try clear HP1M3. try clear HP1m4. try clear HP1m3. try clear HP1m2. try clear HP1m1. 

assert(HP1P3P4P6P7P10m2 : rk(P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P6P7P10m3 : rk(P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P3P4eq : rk(P1 :: P3 :: P4 :: nil) = 3) by (apply LP1P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4mtmp : rk(P1 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P3P4eq HP1P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) 3 3 HP1P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P6P7P10m2 : rk(P1 :: P4 :: P6 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P6 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P6 :: P7 :: P10 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P6P7P10m3 : rk(P1 :: P4 :: P6 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P4P6P7P10eq : rk(P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) = 3) by (apply LP1P3P4P6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4P6P7P10mtmp : rk(P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P3P4P6P7P10eq HP1P3P4P6P7P10m3).
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hincl : incl (P1 :: P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P1 :: P4 :: P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) (P1 :: P3 :: P6 :: P1 :: P4 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P1 :: P4 :: P6 :: P7 :: P10 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P1 :: P4 :: P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P4P6P7P10mtmp;try rewrite HT2 in HP1P3P4P6P7P10mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P1 :: P4 :: P6 :: P7 :: P10 :: nil) (P1 :: P6 :: nil) 3 2 2 HP1P3P4P6P7P10mtmp HP1P6mtmp HP1P3P6Mtmp Hincl); apply HT.
}


assert(HP1P4P6P7P10M3 : rk(P1 :: P4 :: P6 :: P7 :: P10 :: nil) <= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP6P7P10eq : rk(P6 :: P7 :: P10 :: nil) = 2) by (apply LP6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6P7P10Mtmp : rk(P6 :: P7 :: P10 :: nil) <= 2) by (solve_hyps_max HP6P7P10eq HP6P7P10M2).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P6 :: P7 :: P10 :: nil) (P1 :: P4 :: P7 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P6 :: P7 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P4 :: P7 :: nil) (P6 :: P7 :: P10 :: nil) (P7 :: nil) 2 2 1 HP1P4P7Mtmp HP6P7P10Mtmp HP7mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP4P6P7P10M3 : rk(P4 :: P6 :: P7 :: P10 :: nil) <= 3).
{
	try assert(HP4eq : rk(P4 :: nil) = 1) by (apply LP4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4Mtmp : rk(P4 :: nil) <= 1) by (solve_hyps_max HP4eq HP4M1).
	try assert(HP6P7P10eq : rk(P6 :: P7 :: P10 :: nil) = 2) by (apply LP6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6P7P10Mtmp : rk(P6 :: P7 :: P10 :: nil) <= 2) by (solve_hyps_max HP6P7P10eq HP6P7P10M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P4 :: nil) (P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P6 :: P7 :: P10 :: nil) (P4 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P6 :: P7 :: P10 :: nil) ((P4 :: nil) ++ (P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P4 :: nil) (P6 :: P7 :: P10 :: nil) (nil) 1 2 0 HP4Mtmp HP6P7P10Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP4M1. try clear HP4M2. try clear HP4M3. try clear HP4m4. try clear HP4m3. try clear HP4m2. try clear HP4m1. 

assert(HP4P6P7P10m2 : rk(P4 :: P6 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P4P6P7P10eq : rk(P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) = 3) by (apply LP1P3P4P6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4P6P7P10mtmp : rk(P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P3P4P6P7P10eq HP1P3P4P6P7P10m3).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P4 :: P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P4 :: P6 :: P7 :: P10 :: nil) (P1 :: P3 :: P6 :: P4 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P4 :: P6 :: P7 :: P10 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P4 :: P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P4P6P7P10mtmp;try rewrite HT2 in HP1P3P4P6P7P10mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P4 :: P6 :: P7 :: P10 :: nil) (P6 :: nil) 3 1 2 HP1P3P4P6P7P10mtmp HP6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP1P3P4P6P7P10M1. try clear HP1P3P4P6P7P10M2. try clear HP1P3P4P6P7P10M3. try clear HP1P3P4P6P7P10m4. try clear HP1P3P4P6P7P10m3. try clear HP1P3P4P6P7P10m2. try clear HP1P3P4P6P7P10m1. 

assert(HP4P6P7P10m3 : rk(P4 :: P6 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P6P7P10eq : rk(P1 :: P4 :: P6 :: P7 :: P10 :: nil) = 3) by (apply LP1P4P6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P6P7P10mtmp : rk(P1 :: P4 :: P6 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P4P6P7P10eq HP1P4P6P7P10m3).
	try assert(HP4P7eq : rk(P4 :: P7 :: nil) = 2) by (apply LP4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P7mtmp : rk(P4 :: P7 :: nil) >= 2) by (solve_hyps_min HP4P7eq HP4P7m2).
	assert(Hincl : incl (P4 :: P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P4 :: P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P6 :: P7 :: P10 :: nil) (P1 :: P4 :: P7 :: P4 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P4 :: P6 :: P7 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P4 :: P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P6P7P10mtmp;try rewrite HT2 in HP1P4P6P7P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P4 :: P6 :: P7 :: P10 :: nil) (P4 :: P7 :: nil) 3 2 2 HP1P4P6P7P10mtmp HP4P7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P6P7P10M1. try clear HP1P4P6P7P10M2. try clear HP1P4P6P7P10M3. try clear HP1P4P6P7P10m4. try clear HP1P4P6P7P10m3. try clear HP1P4P6P7P10m2. try clear HP1P4P6P7P10m1. 

assert(HP4P10m2 : rk(P4 :: P10 :: nil) >= 2).
{
	try assert(HP6P7P10eq : rk(P6 :: P7 :: P10 :: nil) = 2) by (apply LP6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6P7P10Mtmp : rk(P6 :: P7 :: P10 :: nil) <= 2) by (solve_hyps_max HP6P7P10eq HP6P7P10M2).
	try assert(HP4P6P7P10eq : rk(P4 :: P6 :: P7 :: P10 :: nil) = 3) by (apply LP4P6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P6P7P10mtmp : rk(P4 :: P6 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP4P6P7P10eq HP4P6P7P10m3).
	try assert(HP10eq : rk(P10 :: nil) = 1) by (apply LP10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP10mtmp : rk(P10 :: nil) >= 1) by (solve_hyps_min HP10eq HP10m1).
	assert(Hincl : incl (P10 :: nil) (list_inter (P4 :: P10 :: nil) (P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P6 :: P7 :: P10 :: nil) (P4 :: P10 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P10 :: P6 :: P7 :: P10 :: nil) ((P4 :: P10 :: nil) ++ (P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P6P7P10mtmp;try rewrite HT2 in HP4P6P7P10mtmp.
	assert(HT := rule_2 (P4 :: P10 :: nil) (P6 :: P7 :: P10 :: nil) (P10 :: nil) 3 1 2 HP4P6P7P10mtmp HP10mtmp HP6P7P10Mtmp Hincl);apply HT.
}
try clear HP4P6P7P10M1. try clear HP4P6P7P10M2. try clear HP4P6P7P10M3. try clear HP4P6P7P10m4. try clear HP4P6P7P10m3. try clear HP4P6P7P10m2. try clear HP4P6P7P10m1. 

assert(HP2P4P10m2 : rk(P2 :: P4 :: P10 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P10 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P10m3 : rk(P2 :: P4 :: P10 :: nil) >= 3).
{
	try assert(HP3P4P10eq : rk(P3 :: P4 :: P10 :: nil) = 2) by (apply LP3P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P10Mtmp : rk(P3 :: P4 :: P10 :: nil) <= 2) by (solve_hyps_max HP3P4P10eq HP3P4P10M2).
	try assert(HP2P3P4P10eq : rk(P2 :: P3 :: P4 :: P10 :: nil) = 3) by (apply LP2P3P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4P10mtmp : rk(P2 :: P3 :: P4 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P3P4P10eq HP2P3P4P10m3).
	try assert(HP4P10eq : rk(P4 :: P10 :: nil) = 2) by (apply LP4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P10mtmp : rk(P4 :: P10 :: nil) >= 2) by (solve_hyps_min HP4P10eq HP4P10m2).
	assert(Hincl : incl (P4 :: P10 :: nil) (list_inter (P2 :: P4 :: P10 :: nil) (P3 :: P4 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P10 :: nil) (P2 :: P4 :: P10 :: P3 :: P4 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P10 :: P3 :: P4 :: P10 :: nil) ((P2 :: P4 :: P10 :: nil) ++ (P3 :: P4 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P10mtmp;try rewrite HT2 in HP2P3P4P10mtmp.
	assert(HT := rule_2 (P2 :: P4 :: P10 :: nil) (P3 :: P4 :: P10 :: nil) (P4 :: P10 :: nil) 3 2 2 HP2P3P4P10mtmp HP4P10mtmp HP3P4P10Mtmp Hincl);apply HT.
}
try clear HP4P10M1. try clear HP4P10M2. try clear HP4P10M3. try clear HP4P10m4. try clear HP4P10m3. try clear HP4P10m2. try clear HP4P10m1. try clear HP2P3P4P10M1. try clear HP2P3P4P10M2. try clear HP2P3P4P10M3. try clear HP2P3P4P10m4. try clear HP2P3P4P10m3. try clear HP2P3P4P10m2. try clear HP2P3P4P10m1. 

assert(HP2P4P9P10m2 : rk(P2 :: P4 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P10 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P9P10M3 : rk(P2 :: P4 :: P9 :: P10 :: nil) <= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP10eq : rk(P10 :: nil) = 1) by (apply LP10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP10Mtmp : rk(P10 :: nil) <= 1) by (solve_hyps_max HP10eq HP10M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: P4 :: P9 :: nil) (P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P10 :: nil) (P2 :: P4 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P10 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P4 :: P9 :: nil) (P10 :: nil) (nil) 2 1 0 HP2P4P9Mtmp HP10Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P4P9P10m3 : rk(P2 :: P4 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP2P4P10eq : rk(P2 :: P4 :: P10 :: nil) = 3) by (apply LP2P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P10mtmp : rk(P2 :: P4 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P4P10eq HP2P4P10m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P10 :: nil) (P2 :: P4 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: P10 :: nil) (P2 :: P4 :: P9 :: P10 :: nil) 3 3 HP2P4P10mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P9P10m2 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P9P10m3 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3P4M1. try clear HP2P3P4M2. try clear HP2P3P4M3. try clear HP2P3P4m4. try clear HP2P3P4m3. try clear HP2P3P4m2. try clear HP2P3P4m1. 

assert(HP2P4P8P9P10m2 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}
try clear HP2P4M1. try clear HP2P4M2. try clear HP2P4M3. try clear HP2P4m4. try clear HP2P4m3. try clear HP2P4m2. try clear HP2P4m1. 

assert(HP2P4P8P9P10m3 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P9P10eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP2P3P4P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4P8P9P10mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P9P10eq HP2P3P4P8P9P10m3).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: nil) (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P4 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10mtmp;try rewrite HT2 in HP2P3P4P8P9P10mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: nil) (P2 :: P8 :: nil) 3 2 2 HP2P3P4P8P9P10mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P4P8P9P10M1. try clear HP2P3P4P8P9P10M2. try clear HP2P3P4P8P9P10M3. try clear HP2P3P4P8P9P10m4. try clear HP2P3P4P8P9P10m3. try clear HP2P3P4P8P9P10m2. try clear HP2P3P4P8P9P10m1. 

assert(HP2P4P8P9P10M3 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) <= 3).
{
	try assert(HP2P4P8P10eq : rk(P2 :: P4 :: P8 :: P10 :: nil) = 3) by (apply LP2P4P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P8P10Mtmp : rk(P2 :: P4 :: P8 :: P10 :: nil) <= 3) by (solve_hyps_max HP2P4P8P10eq HP2P4P8P10M3).
	try assert(HP2P4P9P10eq : rk(P2 :: P4 :: P9 :: P10 :: nil) = 3) by (apply LP2P4P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9P10Mtmp : rk(P2 :: P4 :: P9 :: P10 :: nil) <= 3) by (solve_hyps_max HP2P4P9P10eq HP2P4P9P10M3).
	try assert(HP2P4P10eq : rk(P2 :: P4 :: P10 :: nil) = 3) by (apply LP2P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P10mtmp : rk(P2 :: P4 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P4P10eq HP2P4P10m3).
	assert(Hincl : incl (P2 :: P4 :: P10 :: nil) (list_inter (P2 :: P4 :: P8 :: P10 :: nil) (P2 :: P4 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: nil) (P2 :: P4 :: P8 :: P10 :: P2 :: P4 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P8 :: P10 :: P2 :: P4 :: P9 :: P10 :: nil) ((P2 :: P4 :: P8 :: P10 :: nil) ++ (P2 :: P4 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P4 :: P8 :: P10 :: nil) (P2 :: P4 :: P9 :: P10 :: nil) (P2 :: P4 :: P10 :: nil) 3 3 3 HP2P4P8P10Mtmp HP2P4P9P10Mtmp HP2P4P10mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2P4P8P10M1. try clear HP2P4P8P10M2. try clear HP2P4P8P10M3. try clear HP2P4P8P10m4. try clear HP2P4P8P10m3. try clear HP2P4P8P10m2. try clear HP2P4P8P10m1. try clear HP2P4P9P10M1. try clear HP2P4P9P10M2. try clear HP2P4P9P10M3. try clear HP2P4P9P10m4. try clear HP2P4P9P10m3. try clear HP2P4P9P10m2. try clear HP2P4P9P10m1. try clear HP2P4P10M1. try clear HP2P4P10M2. try clear HP2P4P10M3. try clear HP2P4P10m4. try clear HP2P4P10m3. try clear HP2P4P10m2. try clear HP2P4P10m1. 

assert(HP2P3P8P9P10m2 : rk(P2 :: P3 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P9 :: P10 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P9P10m2 : rk(P2 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P8P9P10eq : rk(P2 :: P3 :: P8 :: P9 :: P10 :: nil) = 2) by (apply LP2P3P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8P9P10mtmp : rk(P2 :: P3 :: P8 :: P9 :: P10 :: nil) >= 2) by (solve_hyps_min HP2P3P8P9P10eq HP2P3P8P9P10m2).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P9 :: P10 :: nil) (P2 :: P3 :: P8 :: P2 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P8 :: P9 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P8P9P10mtmp;try rewrite HT2 in HP2P3P8P9P10mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P8 :: P9 :: P10 :: nil) (P2 :: P8 :: nil) 2 2 2 HP2P3P8P9P10mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P8P9P10M1. try clear HP2P3P8P9P10M2. try clear HP2P3P8P9P10M3. try clear HP2P3P8P9P10m4. try clear HP2P3P8P9P10m3. try clear HP2P3P8P9P10m2. try clear HP2P3P8P9P10m1. 

assert(HP2P8P9P10m3 : rk(P2 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P8P9P10eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP2P4P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P8P9P10mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P4P8P9P10eq HP2P4P8P9P10m3).
	try assert(HP2P9eq : rk(P2 :: P9 :: nil) = 2) by (apply LP2P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P9mtmp : rk(P2 :: P9 :: nil) >= 2) by (solve_hyps_min HP2P9eq HP2P9m2).
	assert(Hincl : incl (P2 :: P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P2 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: nil) (P2 :: P4 :: P9 :: P2 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P2 :: P8 :: P9 :: P10 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P2 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P8P9P10mtmp;try rewrite HT2 in HP2P4P8P9P10mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P2 :: P8 :: P9 :: P10 :: nil) (P2 :: P9 :: nil) 3 2 2 HP2P4P8P9P10mtmp HP2P9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P9M1. try clear HP2P9M2. try clear HP2P9M3. try clear HP2P9m4. try clear HP2P9m3. try clear HP2P9m2. try clear HP2P9m1. 

assert(HP2P8P9P10M3 : rk(P2 :: P8 :: P9 :: P10 :: nil) <= 3).
{
	try assert(HP2P4P8P9P10eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP2P4P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P8P9P10Mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) <= 3) by (solve_hyps_max HP2P4P8P9P10eq HP2P4P8P9P10M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P8 :: P9 :: P10 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P2 :: P8 :: P9 :: P10 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: nil) 3 3 HP2P4P8P9P10Mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P7P8P10m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P7P8P10m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P7P8P10m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P5P6P7P8P10m2 : rk(P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P5P6P7P8P10m3 : rk(P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P3P4eq : rk(P1 :: P3 :: P4 :: nil) = 3) by (apply LP1P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4mtmp : rk(P1 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P3P4eq HP1P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 3 3 HP1P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P5P6P7P8P10m4 : rk(P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P4P5P6P7P8P10eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 4) by (apply LP1P2P3P4P5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P5P6P7P8P10mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P6P7P8P10eq HP1P2P3P4P5P6P7P8P10m4).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P6P7P8P10mtmp;try rewrite HT2 in HP1P2P3P4P5P6P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P5 :: nil) 4 2 2 HP1P2P3P4P5P6P7P8P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P4P5P6P7P8P10M1. try clear HP1P2P3P4P5P6P7P8P10M2. try clear HP1P2P3P4P5P6P7P8P10M3. try clear HP1P2P3P4P5P6P7P8P10m4. try clear HP1P2P3P4P5P6P7P8P10m3. try clear HP1P2P3P4P5P6P7P8P10m2. try clear HP1P2P3P4P5P6P7P8P10m1. 

assert(HP1P2P4P5P6P7P8P10m2 : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P6P7P8P10m3 : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P6P7P8P10m2 : rk(P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P6P7P8P10m3 : rk(P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P6P7P8P10eq : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP1P2P4P5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P6P7P8P10mtmp : rk(P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P6P7P8P10eq HP1P2P4P5P6P7P8P10m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P6P7P8P10mtmp;try rewrite HT2 in HP1P2P4P5P6P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P6P7P8P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P6P7P8P10M1. try clear HP1P2P4P5P6P7P8P10M2. try clear HP1P2P4P5P6P7P8P10M3. try clear HP1P2P4P5P6P7P8P10m4. try clear HP1P2P4P5P6P7P8P10m3. try clear HP1P2P4P5P6P7P8P10m2. try clear HP1P2P4P5P6P7P8P10m1. 

assert(HP1P4P5P6P7P8P10m4 : rk(P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 4).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P4P5P6P7P8P10eq : rk(P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 4) by (apply LP1P3P4P5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4P5P6P7P8P10mtmp : rk(P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P3P4P5P6P7P8P10eq HP1P3P4P5P6P7P8P10m4).
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hincl : incl (P1 :: P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P3 :: P6 :: P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P4P5P6P7P8P10mtmp;try rewrite HT2 in HP1P3P4P5P6P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P6 :: nil) 4 2 2 HP1P3P4P5P6P7P8P10mtmp HP1P6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP1P6M1. try clear HP1P6M2. try clear HP1P6M3. try clear HP1P6m4. try clear HP1P6m3. try clear HP1P6m2. try clear HP1P6m1. try clear HP1P3P4P5P6P7P8P10M1. try clear HP1P3P4P5P6P7P8P10M2. try clear HP1P3P4P5P6P7P8P10M3. try clear HP1P3P4P5P6P7P8P10m4. try clear HP1P3P4P5P6P7P8P10m3. try clear HP1P3P4P5P6P7P8P10m2. try clear HP1P3P4P5P6P7P8P10m1. 

assert(HP1P2P3P5P6P7P8P10m2 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P7P8P10m3 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P6P7P8P10m2 : rk(P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P6P7P8P10m3 : rk(P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P6P7P8P10eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP1P2P3P5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P6P7P8P10mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P6P7P8P10eq HP1P2P3P5P6P7P8P10m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P7P8P10mtmp;try rewrite HT2 in HP1P2P3P5P6P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P6P7P8P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P6P7P8P10M1. try clear HP1P2P3P5P6P7P8P10M2. try clear HP1P2P3P5P6P7P8P10M3. try clear HP1P2P3P5P6P7P8P10m4. try clear HP1P2P3P5P6P7P8P10m3. try clear HP1P2P3P5P6P7P8P10m2. try clear HP1P2P3P5P6P7P8P10m1. 

assert(HP5P6P7P8P10m2 : rk(P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P5P6P7P8P10eq : rk(P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP1P3P5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P5P6P7P8P10mtmp : rk(P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P3P5P6P7P8P10eq HP1P3P5P6P7P8P10m3).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P3 :: P6 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P7P8P10mtmp;try rewrite HT2 in HP1P3P5P6P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P6 :: nil) 3 1 2 HP1P3P5P6P7P8P10mtmp HP6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP1P3P6M1. try clear HP1P3P6M2. try clear HP1P3P6M3. try clear HP1P3P6m4. try clear HP1P3P6m3. try clear HP1P3P6m2. try clear HP1P3P6m1. try clear HP1P3P5P6P7P8P10M1. try clear HP1P3P5P6P7P8P10M2. try clear HP1P3P5P6P7P8P10M3. try clear HP1P3P5P6P7P8P10m4. try clear HP1P3P5P6P7P8P10m3. try clear HP1P3P5P6P7P8P10m2. try clear HP1P3P5P6P7P8P10m1. 

assert(HP5P6P7P8P10m3 : rk(P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P6P7P8P10eq : rk(P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 4) by (apply LP1P4P5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P6P7P8P10mtmp : rk(P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P4P5P6P7P8P10eq HP1P4P5P6P7P8P10m4).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P1 :: P4 :: P7 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P6 :: P7 :: P8 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P6 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P6P7P8P10mtmp;try rewrite HT2 in HP1P4P5P6P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P7 :: nil) 4 1 2 HP1P4P5P6P7P8P10mtmp HP7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P5P6P7P8P10M1. try clear HP1P4P5P6P7P8P10M2. try clear HP1P4P5P6P7P8P10M3. try clear HP1P4P5P6P7P8P10m4. try clear HP1P4P5P6P7P8P10m3. try clear HP1P4P5P6P7P8P10m2. try clear HP1P4P5P6P7P8P10m1. 

assert(HP5P6P7P8P10M3 : rk(P5 :: P6 :: P7 :: P8 :: P10 :: nil) <= 3).
{
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP6P7P10eq : rk(P6 :: P7 :: P10 :: nil) = 2) by (apply LP6P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6P7P10Mtmp : rk(P6 :: P7 :: P10 :: nil) <= 2) by (solve_hyps_max HP6P7P10eq HP6P7P10M2).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P5 :: P6 :: P8 :: nil) (P6 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P6 :: P7 :: P8 :: P10 :: nil) (P5 :: P6 :: P8 :: P6 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P6 :: P8 :: P6 :: P7 :: P10 :: nil) ((P5 :: P6 :: P8 :: nil) ++ (P6 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P6 :: P8 :: nil) (P6 :: P7 :: P10 :: nil) (P6 :: nil) 2 2 1 HP5P6P8Mtmp HP6P7P10Mtmp HP6mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P6P8M1. try clear HP5P6P8M2. try clear HP5P6P8M3. try clear HP5P6P8m4. try clear HP5P6P8m3. try clear HP5P6P8m2. try clear HP5P6P8m1. try clear HP6P7P10M1. try clear HP6P7P10M2. try clear HP6P7P10M3. try clear HP6P7P10m4. try clear HP6P7P10m3. try clear HP6P7P10m2. try clear HP6P7P10m1. try clear HP6M1. try clear HP6M2. try clear HP6M3. try clear HP6m4. try clear HP6m3. try clear HP6m2. try clear HP6m1. 

assert(HP1P2P3P5P7P8P10m2 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P7P8P10m3 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P7P8P10m4 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P3P7eq : rk(P1 :: P2 :: P3 :: P7 :: nil) = 4) by (apply LP1P2P3P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P7mtmp : rk(P1 :: P2 :: P3 :: P7 :: nil) >= 4) by (solve_hyps_min HP1P2P3P7eq HP1P2P3P7m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) 4 4 HP1P2P3P7mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P7M3 : rk(P1 :: P2 :: P4 :: P7 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P1 :: P4 :: P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P7 :: nil) (P2 :: P1 :: P4 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P1 :: P4 :: P7 :: nil) ((P2 :: nil) ++ (P1 :: P4 :: P7 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P1 :: P4 :: P7 :: nil) (nil) 1 2 0 HP2Mtmp HP1P4P7Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2M1. try clear HP2M2. try clear HP2M3. try clear HP2m4. try clear HP2m3. try clear HP2m2. try clear HP2m1. 

assert(HP1P2P4P7m2 : rk(P1 :: P2 :: P4 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P7m3 : rk(P1 :: P2 :: P4 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P7 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P7m2 : rk(P1 :: P2 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P7m3 : rk(P1 :: P2 :: P7 :: nil) >= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P2P4P7eq : rk(P1 :: P2 :: P4 :: P7 :: nil) = 3) by (apply LP1P2P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P7mtmp : rk(P1 :: P2 :: P4 :: P7 :: nil) >= 3) by (solve_hyps_min HP1P2P4P7eq HP1P2P4P7m3).
	try assert(HP1P7eq : rk(P1 :: P7 :: nil) = 2) by (apply LP1P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P7mtmp : rk(P1 :: P7 :: nil) >= 2) by (solve_hyps_min HP1P7eq HP1P7m2).
	assert(Hincl : incl (P1 :: P7 :: nil) (list_inter (P1 :: P2 :: P7 :: nil) (P1 :: P4 :: P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P7 :: nil) (P1 :: P2 :: P7 :: P1 :: P4 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P7 :: P1 :: P4 :: P7 :: nil) ((P1 :: P2 :: P7 :: nil) ++ (P1 :: P4 :: P7 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P7mtmp;try rewrite HT2 in HP1P2P4P7mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P7 :: nil) (P1 :: P4 :: P7 :: nil) (P1 :: P7 :: nil) 3 2 2 HP1P2P4P7mtmp HP1P7mtmp HP1P4P7Mtmp Hincl);apply HT.
}
try clear HP1P7M1. try clear HP1P7M2. try clear HP1P7M3. try clear HP1P7m4. try clear HP1P7m3. try clear HP1P7m2. try clear HP1P7m1. try clear HP1P2P4P7M1. try clear HP1P2P4P7M2. try clear HP1P2P4P7M3. try clear HP1P2P4P7m4. try clear HP1P2P4P7m3. try clear HP1P2P4P7m2. try clear HP1P2P4P7m1. 

assert(HP1P2P5P7m2 : rk(P1 :: P2 :: P5 :: P7 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P7 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P7M3 : rk(P1 :: P2 :: P5 :: P7 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7Mtmp : rk(P7 :: nil) <= 1) by (solve_hyps_max HP7eq HP7M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P2 :: P5 :: nil) (P7 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P7 :: nil) (P1 :: P2 :: P5 :: P7 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P7 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P7 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P7 :: nil) (nil) 2 1 0 HP1P2P5Mtmp HP7Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P5P7m3 : rk(P1 :: P2 :: P5 :: P7 :: nil) >= 3).
{
	try assert(HP1P2P7eq : rk(P1 :: P2 :: P7 :: nil) = 3) by (apply LP1P2P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P7mtmp : rk(P1 :: P2 :: P7 :: nil) >= 3) by (solve_hyps_min HP1P2P7eq HP1P2P7m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P7 :: nil) (P1 :: P2 :: P5 :: P7 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P7 :: nil) (P1 :: P2 :: P5 :: P7 :: nil) 3 3 HP1P2P7mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P7M1. try clear HP1P2P7M2. try clear HP1P2P7M3. try clear HP1P2P7m4. try clear HP1P2P7m3. try clear HP1P2P7m2. try clear HP1P2P7m1. 

assert(HP2P3P5P7P8P10m2 : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P7P8P10m3 : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P7P8P10eq : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP1P2P3P5P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P7P8P10mtmp : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P7P8P10eq HP1P2P3P5P7P8P10m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P7P8P10mtmp;try rewrite HT2 in HP1P2P3P5P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P7P8P10mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP2P3P5P7P8P10m4 : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P5P7eq : rk(P1 :: P2 :: P5 :: P7 :: nil) = 3) by (apply LP1P2P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5P7Mtmp : rk(P1 :: P2 :: P5 :: P7 :: nil) <= 3) by (solve_hyps_max HP1P2P5P7eq HP1P2P5P7M3).
	try assert(HP1P2P3P5P7P8P10eq : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) = 4) by (apply LP1P2P3P5P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P7P8P10mtmp : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P7P8P10eq HP1P2P3P5P7P8P10m4).
	try assert(HP2P5P7eq : rk(P2 :: P5 :: P7 :: nil) = 3) by (apply LP2P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P7mtmp : rk(P2 :: P5 :: P7 :: nil) >= 3) by (solve_hyps_min HP2P5P7eq HP2P5P7m3).
	assert(Hincl : incl (P2 :: P5 :: P7 :: nil) (list_inter (P1 :: P2 :: P5 :: P7 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) (P1 :: P2 :: P5 :: P7 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P7 :: P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) ((P1 :: P2 :: P5 :: P7 :: nil) ++ (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P7P8P10mtmp;try rewrite HT2 in HP1P2P3P5P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P7 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) (P2 :: P5 :: P7 :: nil) 4 3 3 HP1P2P3P5P7P8P10mtmp HP2P5P7mtmp HP1P2P5P7Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P7P8P10M1. try clear HP1P2P3P5P7P8P10M2. try clear HP1P2P3P5P7P8P10M3. try clear HP1P2P3P5P7P8P10m4. try clear HP1P2P3P5P7P8P10m3. try clear HP1P2P3P5P7P8P10m2. try clear HP1P2P3P5P7P8P10m1. 

assert(HP1P2P4P5P7P8P10m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7P8P10m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P8P10m2 : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P8P10m3 : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P8P10eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP1P2P4P5P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7P8P10mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P8P10eq HP1P2P4P5P7P8P10m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P8P10mtmp;try rewrite HT2 in HP1P2P4P5P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P7P8P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P7P8P10M1. try clear HP1P2P4P5P7P8P10M2. try clear HP1P2P4P5P7P8P10M3. try clear HP1P2P4P5P7P8P10m4. try clear HP1P2P4P5P7P8P10m3. try clear HP1P2P4P5P7P8P10m2. try clear HP1P2P4P5P7P8P10m1. 

assert(HP5P7P8P10m2 : rk(P5 :: P7 :: P8 :: P10 :: nil) >= 2).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P8P10eq : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP1P4P5P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P7P8P10mtmp : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P8P10eq HP1P4P5P7P8P10m3).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P8 :: P10 :: nil) (P1 :: P4 :: P7 :: P5 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P7 :: P8 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P8P10mtmp;try rewrite HT2 in HP1P4P5P7P8P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P8 :: P10 :: nil) (P7 :: nil) 3 1 2 HP1P4P5P7P8P10mtmp HP7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P5P7P8P10M1. try clear HP1P4P5P7P8P10M2. try clear HP1P4P5P7P8P10M3. try clear HP1P4P5P7P8P10m4. try clear HP1P4P5P7P8P10m3. try clear HP1P4P5P7P8P10m2. try clear HP1P4P5P7P8P10m1. 

assert(HP5P7P8P10m3 : rk(P5 :: P7 :: P8 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P7P8P10eq : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) = 4) by (apply LP2P3P5P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P5P7P8P10mtmp : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) >= 4) by (solve_hyps_min HP2P3P5P7P8P10eq HP2P3P5P7P8P10m4).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P5 :: P7 :: P8 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P7 :: P8 :: P10 :: nil) (P2 :: P3 :: P8 :: P5 :: P7 :: P8 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P5 :: P7 :: P8 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P5 :: P7 :: P8 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P7P8P10mtmp;try rewrite HT2 in HP2P3P5P7P8P10mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P5 :: P7 :: P8 :: P10 :: nil) (P8 :: nil) 4 1 2 HP2P3P5P7P8P10mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P5P7P8P10M1. try clear HP2P3P5P7P8P10M2. try clear HP2P3P5P7P8P10M3. try clear HP2P3P5P7P8P10m4. try clear HP2P3P5P7P8P10m3. try clear HP2P3P5P7P8P10m2. try clear HP2P3P5P7P8P10m1. 

assert(HP5P7P8P10M3 : rk(P5 :: P7 :: P8 :: P10 :: nil) <= 3).
{
	try assert(HP5P6P7P8P10eq : rk(P5 :: P6 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP5P6P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P7P8P10Mtmp : rk(P5 :: P6 :: P7 :: P8 :: P10 :: nil) <= 3) by (solve_hyps_max HP5P6P7P8P10eq HP5P6P7P8P10M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P5 :: P7 :: P8 :: P10 :: nil) (P5 :: P6 :: P7 :: P8 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P5 :: P7 :: P8 :: P10 :: nil) (P5 :: P6 :: P7 :: P8 :: P10 :: nil) 3 3 HP5P6P7P8P10Mtmp Hcomp Hincl);apply HT.
}
try clear HP5P6P7P8P10M1. try clear HP5P6P7P8P10M2. try clear HP5P6P7P8P10M3. try clear HP5P6P7P8P10m4. try clear HP5P6P7P8P10m3. try clear HP5P6P7P8P10m2. try clear HP5P6P7P8P10m1. 

assert(HP1P2P3P4P5P7P9P10m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P7P9P10m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P7P9P10m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P5P7P9P10m2 : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P5P7P9P10m3 : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P3P4eq : rk(P1 :: P3 :: P4 :: nil) = 3) by (apply LP1P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4mtmp : rk(P1 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P3P4eq HP1P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 3 3 HP1P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P4P5P7P9P10m4 : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P4P5P7P9P10eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) = 4) by (apply LP1P2P3P4P5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P5P7P9P10mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P7P9P10eq HP1P2P3P4P5P7P9P10m4).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P7P9P10mtmp;try rewrite HT2 in HP1P2P3P4P5P7P9P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P5 :: nil) 4 2 2 HP1P2P3P4P5P7P9P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP3P4P5P7P9P10m2 : rk(P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP3P4eq : rk(P3 :: P4 :: nil) = 2) by (apply LP3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4mtmp : rk(P3 :: P4 :: nil) >= 2) by (solve_hyps_min HP3P4eq HP3P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P3 :: P4 :: nil) (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P3 :: P4 :: nil) (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 2 2 HP3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP3P4P5P7P9P10m3 : rk(P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P4P5P7P9P10eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) = 4) by (apply LP1P2P3P4P5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P5P7P9P10mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P7P9P10eq HP1P2P3P4P5P7P9P10m4).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P2 :: P5 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P7P9P10mtmp;try rewrite HT2 in HP1P2P3P4P5P7P9P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P5 :: nil) 4 1 2 HP1P2P3P4P5P7P9P10mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P4P5P7P9P10M1. try clear HP1P2P3P4P5P7P9P10M2. try clear HP1P2P3P4P5P7P9P10M3. try clear HP1P2P3P4P5P7P9P10m4. try clear HP1P2P3P4P5P7P9P10m3. try clear HP1P2P3P4P5P7P9P10m2. try clear HP1P2P3P4P5P7P9P10m1. 

assert(HP3P4P5P7P9P10m4 : rk(P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P3P4P5P7P9P10eq : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) = 4) by (apply LP1P3P4P5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4P5P7P9P10mtmp : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P3P4P5P7P9P10eq HP1P3P4P5P7P9P10m4).
	try assert(HP4P7eq : rk(P4 :: P7 :: nil) = 2) by (apply LP4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P7mtmp : rk(P4 :: P7 :: nil) >= 2) by (solve_hyps_min HP4P7eq HP4P7m2).
	assert(Hincl : incl (P4 :: P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P4 :: P7 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P4P5P7P9P10mtmp;try rewrite HT2 in HP1P3P4P5P7P9P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P4 :: P7 :: nil) 4 2 2 HP1P3P4P5P7P9P10mtmp HP4P7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P3P4P5P7P9P10M1. try clear HP1P3P4P5P7P9P10M2. try clear HP1P3P4P5P7P9P10M3. try clear HP1P3P4P5P7P9P10m4. try clear HP1P3P4P5P7P9P10m3. try clear HP1P3P4P5P7P9P10m2. try clear HP1P3P4P5P7P9P10m1. 

assert(HP1P2P4P5P7P9P10m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7P9P10m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P9P10m2 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P9P10m3 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P9P10eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) = 3) by (apply LP1P2P4P5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7P9P10mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P9P10eq HP1P2P4P5P7P9P10m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P9P10mtmp;try rewrite HT2 in HP1P2P4P5P7P9P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P7P9P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P7P9P10M1. try clear HP1P2P4P5P7P9P10M2. try clear HP1P2P4P5P7P9P10M3. try clear HP1P2P4P5P7P9P10m4. try clear HP1P2P4P5P7P9P10m3. try clear HP1P2P4P5P7P9P10m2. try clear HP1P2P4P5P7P9P10m1. 

assert(HP5P7P9P10m2 : rk(P5 :: P7 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P9P10eq : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) = 3) by (apply LP1P4P5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P7P9P10mtmp : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P9P10eq HP1P4P5P7P9P10m3).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P1 :: P4 :: P7 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P7 :: P9 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P9P10mtmp;try rewrite HT2 in HP1P4P5P7P9P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P9 :: P10 :: nil) (P7 :: nil) 3 1 2 HP1P4P5P7P9P10mtmp HP7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P5P7P9P10M1. try clear HP1P4P5P7P9P10M2. try clear HP1P4P5P7P9P10M3. try clear HP1P4P5P7P9P10m4. try clear HP1P4P5P7P9P10m3. try clear HP1P4P5P7P9P10m2. try clear HP1P4P5P7P9P10m1. 

assert(HP5P7P9P10M3 : rk(P5 :: P7 :: P9 :: P10 :: nil) <= 3).
{
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	try assert(HP10eq : rk(P10 :: nil) = 1) by (apply LP10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP10Mtmp : rk(P10 :: nil) <= 1) by (solve_hyps_max HP10eq HP10M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: P7 :: P9 :: nil) (P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P7 :: P9 :: P10 :: nil) (P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P7 :: P9 :: P10 :: nil) ((P5 :: P7 :: P9 :: nil) ++ (P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P7 :: P9 :: nil) (P10 :: nil) (nil) 2 1 0 HP5P7P9Mtmp HP10Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P7P9M1. try clear HP5P7P9M2. try clear HP5P7P9M3. try clear HP5P7P9m4. try clear HP5P7P9m3. try clear HP5P7P9m2. try clear HP5P7P9m1. 

assert(HP5P7P9P10m3 : rk(P5 :: P7 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP3P4P10eq : rk(P3 :: P4 :: P10 :: nil) = 2) by (apply LP3P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P10Mtmp : rk(P3 :: P4 :: P10 :: nil) <= 2) by (solve_hyps_max HP3P4P10eq HP3P4P10M2).
	try assert(HP3P4P5P7P9P10eq : rk(P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) = 4) by (apply LP3P4P5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P5P7P9P10mtmp : rk(P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP3P4P5P7P9P10eq HP3P4P5P7P9P10m4).
	try assert(HP10eq : rk(P10 :: nil) = 1) by (apply LP10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP10mtmp : rk(P10 :: nil) >= 1) by (solve_hyps_min HP10eq HP10m1).
	assert(Hincl : incl (P10 :: nil) (list_inter (P3 :: P4 :: P10 :: nil) (P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P4 :: P5 :: P7 :: P9 :: P10 :: nil) (P3 :: P4 :: P10 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P4 :: P10 :: P5 :: P7 :: P9 :: P10 :: nil) ((P3 :: P4 :: P10 :: nil) ++ (P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P4P5P7P9P10mtmp;try rewrite HT2 in HP3P4P5P7P9P10mtmp.
	assert(HT := rule_4 (P3 :: P4 :: P10 :: nil) (P5 :: P7 :: P9 :: P10 :: nil) (P10 :: nil) 4 1 2 HP3P4P5P7P9P10mtmp HP10mtmp HP3P4P10Mtmp Hincl); apply HT.
}
try clear HP3P4P5P7P9P10M1. try clear HP3P4P5P7P9P10M2. try clear HP3P4P5P7P9P10M3. try clear HP3P4P5P7P9P10m4. try clear HP3P4P5P7P9P10m3. try clear HP3P4P5P7P9P10m2. try clear HP3P4P5P7P9P10m1. 

assert(HP1P2P3P4P5P7P10m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P7P10m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P7P10m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P3P4M1. try clear HP1P2P3P4M2. try clear HP1P2P3P4M3. try clear HP1P2P3P4m4. try clear HP1P2P3P4m3. try clear HP1P2P3P4m2. try clear HP1P2P3P4m1. 

assert(HP1P3P4P5P7P10m2 : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}
try clear HP1P3M1. try clear HP1P3M2. try clear HP1P3M3. try clear HP1P3m4. try clear HP1P3m3. try clear HP1P3m2. try clear HP1P3m1. 

assert(HP1P3P4P5P7P10m3 : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P3P4eq : rk(P1 :: P3 :: P4 :: nil) = 3) by (apply LP1P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4mtmp : rk(P1 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P3P4eq HP1P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: P4 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) 3 3 HP1P3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P3P4M1. try clear HP1P3P4M2. try clear HP1P3P4M3. try clear HP1P3P4m4. try clear HP1P3P4m3. try clear HP1P3P4m2. try clear HP1P3P4m1. 

assert(HP1P3P4P5P7P10m4 : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P4P5P7P10eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) = 4) by (apply LP1P2P3P4P5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P5P7P10mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P7P10eq HP1P2P3P4P5P7P10m4).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P7P10mtmp;try rewrite HT2 in HP1P2P3P4P5P7P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P5 :: nil) 4 2 2 HP1P2P3P4P5P7P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP3P4P5P7P10m2 : rk(P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP3P4eq : rk(P3 :: P4 :: nil) = 2) by (apply LP3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4mtmp : rk(P3 :: P4 :: nil) >= 2) by (solve_hyps_min HP3P4eq HP3P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P3 :: P4 :: nil) (P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P3 :: P4 :: nil) (P3 :: P4 :: P5 :: P7 :: P10 :: nil) 2 2 HP3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP3P4M1. try clear HP3P4M2. try clear HP3P4M3. try clear HP3P4m4. try clear HP3P4m3. try clear HP3P4m2. try clear HP3P4m1. 

assert(HP3P4P5P7P10m3 : rk(P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P4P5P7P10eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) = 4) by (apply LP1P2P3P4P5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4P5P7P10mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P7P10eq HP1P2P3P4P5P7P10m4).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P4 :: P5 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P2 :: P5 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P4 :: P5 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P7P10mtmp;try rewrite HT2 in HP1P2P3P4P5P7P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P5 :: nil) 4 1 2 HP1P2P3P4P5P7P10mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP5M1. try clear HP5M2. try clear HP5M3. try clear HP5m4. try clear HP5m3. try clear HP5m2. try clear HP5m1. try clear HP1P2P3P4P5P7P10M1. try clear HP1P2P3P4P5P7P10M2. try clear HP1P2P3P4P5P7P10M3. try clear HP1P2P3P4P5P7P10m4. try clear HP1P2P3P4P5P7P10m3. try clear HP1P2P3P4P5P7P10m2. try clear HP1P2P3P4P5P7P10m1. 

assert(HP3P4P5P7P10m4 : rk(P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P3P4P5P7P10eq : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) = 4) by (apply LP1P3P4P5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P4P5P7P10mtmp : rk(P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P3P4P5P7P10eq HP1P3P4P5P7P10m4).
	try assert(HP4P7eq : rk(P4 :: P7 :: nil) = 2) by (apply LP4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P7mtmp : rk(P4 :: P7 :: nil) >= 2) by (solve_hyps_min HP4P7eq HP4P7m2).
	assert(Hincl : incl (P4 :: P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P3 :: P4 :: P5 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P4 :: P7 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P3 :: P4 :: P5 :: P7 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P3 :: P4 :: P5 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P4P5P7P10mtmp;try rewrite HT2 in HP1P3P4P5P7P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P4 :: P7 :: nil) 4 2 2 HP1P3P4P5P7P10mtmp HP4P7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP4P7M1. try clear HP4P7M2. try clear HP4P7M3. try clear HP4P7m4. try clear HP4P7m3. try clear HP4P7m2. try clear HP4P7m1. try clear HP1P3P4P5P7P10M1. try clear HP1P3P4P5P7P10M2. try clear HP1P3P4P5P7P10M3. try clear HP1P3P4P5P7P10m4. try clear HP1P3P4P5P7P10m3. try clear HP1P3P4P5P7P10m2. try clear HP1P3P4P5P7P10m1. 

assert(HP1P2P4P5P7P10m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7P10m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P10m2 : rk(P1 :: P4 :: P5 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P10 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P10m3 : rk(P1 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P10eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) = 3) by (apply LP1P2P4P5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7P10mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P10eq HP1P2P4P5P7P10m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P10mtmp;try rewrite HT2 in HP1P2P4P5P7P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P7P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P7P10M1. try clear HP1P2P4P5P7P10M2. try clear HP1P2P4P5P7P10M3. try clear HP1P2P4P5P7P10m4. try clear HP1P2P4P5P7P10m3. try clear HP1P2P4P5P7P10m2. try clear HP1P2P4P5P7P10m1. 

assert(HP5P7P10m2 : rk(P5 :: P7 :: P10 :: nil) >= 2).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P10eq : rk(P1 :: P4 :: P5 :: P7 :: P10 :: nil) = 3) by (apply LP1P4P5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P7P10mtmp : rk(P1 :: P4 :: P5 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P10eq HP1P4P5P7P10m3).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P10 :: nil) (P1 :: P4 :: P7 :: P5 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P7 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P10mtmp;try rewrite HT2 in HP1P4P5P7P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P10 :: nil) (P7 :: nil) 3 1 2 HP1P4P5P7P10mtmp HP7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P5P7P10M1. try clear HP1P4P5P7P10M2. try clear HP1P4P5P7P10M3. try clear HP1P4P5P7P10m4. try clear HP1P4P5P7P10m3. try clear HP1P4P5P7P10m2. try clear HP1P4P5P7P10m1. 

assert(HP5P7P10m3 : rk(P5 :: P7 :: P10 :: nil) >= 3).
{
	try assert(HP3P4P10eq : rk(P3 :: P4 :: P10 :: nil) = 2) by (apply LP3P4P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P10Mtmp : rk(P3 :: P4 :: P10 :: nil) <= 2) by (solve_hyps_max HP3P4P10eq HP3P4P10M2).
	try assert(HP3P4P5P7P10eq : rk(P3 :: P4 :: P5 :: P7 :: P10 :: nil) = 4) by (apply LP3P4P5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4P5P7P10mtmp : rk(P3 :: P4 :: P5 :: P7 :: P10 :: nil) >= 4) by (solve_hyps_min HP3P4P5P7P10eq HP3P4P5P7P10m4).
	try assert(HP10eq : rk(P10 :: nil) = 1) by (apply LP10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP10mtmp : rk(P10 :: nil) >= 1) by (solve_hyps_min HP10eq HP10m1).
	assert(Hincl : incl (P10 :: nil) (list_inter (P3 :: P4 :: P10 :: nil) (P5 :: P7 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P4 :: P5 :: P7 :: P10 :: nil) (P3 :: P4 :: P10 :: P5 :: P7 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P4 :: P10 :: P5 :: P7 :: P10 :: nil) ((P3 :: P4 :: P10 :: nil) ++ (P5 :: P7 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P4P5P7P10mtmp;try rewrite HT2 in HP3P4P5P7P10mtmp.
	assert(HT := rule_4 (P3 :: P4 :: P10 :: nil) (P5 :: P7 :: P10 :: nil) (P10 :: nil) 4 1 2 HP3P4P5P7P10mtmp HP10mtmp HP3P4P10Mtmp Hincl); apply HT.
}
try clear HP3P4P10M1. try clear HP3P4P10M2. try clear HP3P4P10M3. try clear HP3P4P10m4. try clear HP3P4P10m3. try clear HP3P4P10m2. try clear HP3P4P10m1. try clear HP10M1. try clear HP10M2. try clear HP10M3. try clear HP10m4. try clear HP10m3. try clear HP10m2. try clear HP10m1. try clear HP3P4P5P7P10M1. try clear HP3P4P5P7P10M2. try clear HP3P4P5P7P10M3. try clear HP3P4P5P7P10m4. try clear HP3P4P5P7P10m3. try clear HP3P4P5P7P10m2. try clear HP3P4P5P7P10m1. 

assert(HP1P2P3P5P7P8P9P10m2 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P7P8P9P10m3 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P3M1. try clear HP1P2P3M2. try clear HP1P2P3M3. try clear HP1P2P3m4. try clear HP1P2P3m3. try clear HP1P2P3m2. try clear HP1P2P3m1. 

assert(HP1P2P3P5P7P8P9P10m4 : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P3P7eq : rk(P1 :: P2 :: P3 :: P7 :: nil) = 4) by (apply LP1P2P3P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P7mtmp : rk(P1 :: P2 :: P3 :: P7 :: nil) >= 4) by (solve_hyps_min HP1P2P3P7eq HP1P2P3P7m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P7 :: nil) (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 4 4 HP1P2P3P7mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P3P7M1. try clear HP1P2P3P7M2. try clear HP1P2P3P7M3. try clear HP1P2P3P7m4. try clear HP1P2P3P7m3. try clear HP1P2P3P7m2. try clear HP1P2P3P7m1. 

assert(HP2P3P5P7P8P9P10m2 : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3M1. try clear HP2P3M2. try clear HP2P3M3. try clear HP2P3m4. try clear HP2P3m3. try clear HP2P3m2. try clear HP2P3m1. 

assert(HP2P3P5P7P8P9P10m3 : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P7P8P9P10eq : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP1P2P3P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P7P8P9P10mtmp : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P7P8P9P10eq HP1P2P3P5P7P8P9P10m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P7P8P9P10mtmp;try rewrite HT2 in HP1P2P3P5P7P8P9P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P7P8P9P10mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP2P3P5P7P8P9P10m4 : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4).
{
	try assert(HP1P2P5P7eq : rk(P1 :: P2 :: P5 :: P7 :: nil) = 3) by (apply LP1P2P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5P7Mtmp : rk(P1 :: P2 :: P5 :: P7 :: nil) <= 3) by (solve_hyps_max HP1P2P5P7eq HP1P2P5P7M3).
	try assert(HP1P2P3P5P7P8P9P10eq : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 4) by (apply LP1P2P3P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P5P7P8P9P10mtmp : rk(P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P7P8P9P10eq HP1P2P3P5P7P8P9P10m4).
	try assert(HP2P5P7eq : rk(P2 :: P5 :: P7 :: nil) = 3) by (apply LP2P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P7mtmp : rk(P2 :: P5 :: P7 :: nil) >= 3) by (solve_hyps_min HP2P5P7eq HP2P5P7m3).
	assert(Hincl : incl (P2 :: P5 :: P7 :: nil) (list_inter (P1 :: P2 :: P5 :: P7 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P1 :: P2 :: P5 :: P7 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P7 :: P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P1 :: P2 :: P5 :: P7 :: nil) ++ (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P7P8P9P10mtmp;try rewrite HT2 in HP1P2P3P5P7P8P9P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P7 :: nil) (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P2 :: P5 :: P7 :: nil) 4 3 3 HP1P2P3P5P7P8P9P10mtmp HP2P5P7mtmp HP1P2P5P7Mtmp Hincl); apply HT.
}
try clear HP1P2P5P7M1. try clear HP1P2P5P7M2. try clear HP1P2P5P7M3. try clear HP1P2P5P7m4. try clear HP1P2P5P7m3. try clear HP1P2P5P7m2. try clear HP1P2P5P7m1. try clear HP1P2P3P5P7P8P9P10M1. try clear HP1P2P3P5P7P8P9P10M2. try clear HP1P2P3P5P7P8P9P10M3. try clear HP1P2P3P5P7P8P9P10m4. try clear HP1P2P3P5P7P8P9P10m3. try clear HP1P2P3P5P7P8P9P10m2. try clear HP1P2P3P5P7P8P9P10m1. 

assert(HP1P2P4P5P7P8P9P10m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2M1. try clear HP1P2M2. try clear HP1P2M3. try clear HP1P2m4. try clear HP1P2m3. try clear HP1P2m2. try clear HP1P2m1. 

assert(HP1P2P4P5P7P8P9P10m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P4M1. try clear HP1P2P4M2. try clear HP1P2P4M3. try clear HP1P2P4m4. try clear HP1P2P4m3. try clear HP1P2P4m2. try clear HP1P2P4m1. 

assert(HP1P4P5P7P8P9P10m2 : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P4M1. try clear HP1P4M2. try clear HP1P4M3. try clear HP1P4m4. try clear HP1P4m3. try clear HP1P4m2. try clear HP1P4m1. 

assert(HP1P4P5P7P8P9P10m3 : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P8P9P10eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP1P2P4P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4P5P7P8P9P10mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P8P9P10eq HP1P2P4P5P7P8P9P10m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P8P9P10mtmp;try rewrite HT2 in HP1P2P4P5P7P8P9P10mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P7P8P9P10mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P5M1. try clear HP1P2P5M2. try clear HP1P2P5M3. try clear HP1P2P5m4. try clear HP1P2P5m3. try clear HP1P2P5m2. try clear HP1P2P5m1. try clear HP1P5M1. try clear HP1P5M2. try clear HP1P5M3. try clear HP1P5m4. try clear HP1P5m3. try clear HP1P5m2. try clear HP1P5m1. try clear HP1P2P4P5P7P8P9P10M1. try clear HP1P2P4P5P7P8P9P10M2. try clear HP1P2P4P5P7P8P9P10M3. try clear HP1P2P4P5P7P8P9P10m4. try clear HP1P2P4P5P7P8P9P10m3. try clear HP1P2P4P5P7P8P9P10m2. try clear HP1P2P4P5P7P8P9P10m1. 

assert(HP5P7P8P9P10m2 : rk(P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P8P9P10eq : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP1P4P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P5P7P8P9P10mtmp : rk(P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P8P9P10eq HP1P4P5P7P8P9P10m3).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P1 :: P4 :: P7 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P8P9P10mtmp;try rewrite HT2 in HP1P4P5P7P8P9P10mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P7 :: nil) 3 1 2 HP1P4P5P7P8P9P10mtmp HP7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P7M1. try clear HP1P4P7M2. try clear HP1P4P7M3. try clear HP1P4P7m4. try clear HP1P4P7m3. try clear HP1P4P7m2. try clear HP1P4P7m1. try clear HP7M1. try clear HP7M2. try clear HP7M3. try clear HP7m4. try clear HP7m3. try clear HP7m2. try clear HP7m1. try clear HP1P4P5P7P8P9P10M1. try clear HP1P4P5P7P8P9P10M2. try clear HP1P4P5P7P8P9P10M3. try clear HP1P4P5P7P8P9P10m4. try clear HP1P4P5P7P8P9P10m3. try clear HP1P4P5P7P8P9P10m2. try clear HP1P4P5P7P8P9P10m1. 

assert(HP5P7P8P9P10m3 : rk(P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P7P8P9P10eq : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 4) by (apply LP2P3P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P5P7P8P9P10mtmp : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP2P3P5P7P8P9P10eq HP2P3P5P7P8P9P10m4).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P2 :: P3 :: P8 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P7P8P9P10mtmp;try rewrite HT2 in HP2P3P5P7P8P9P10mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P8 :: nil) 4 1 2 HP2P3P5P7P8P9P10mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP8M1. try clear HP8M2. try clear HP8M3. try clear HP8m4. try clear HP8m3. try clear HP8m2. try clear HP8m1. 

assert(HP5P7P8P9P10M3 : rk(P5 :: P7 :: P8 :: P9 :: P10 :: nil) <= 3).
{
	try assert(HP5P7P8P10eq : rk(P5 :: P7 :: P8 :: P10 :: nil) = 3) by (apply LP5P7P8P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P8P10Mtmp : rk(P5 :: P7 :: P8 :: P10 :: nil) <= 3) by (solve_hyps_max HP5P7P8P10eq HP5P7P8P10M3).
	try assert(HP5P7P9P10eq : rk(P5 :: P7 :: P9 :: P10 :: nil) = 3) by (apply LP5P7P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9P10Mtmp : rk(P5 :: P7 :: P9 :: P10 :: nil) <= 3) by (solve_hyps_max HP5P7P9P10eq HP5P7P9P10M3).
	try assert(HP5P7P10eq : rk(P5 :: P7 :: P10 :: nil) = 3) by (apply LP5P7P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P10mtmp : rk(P5 :: P7 :: P10 :: nil) >= 3) by (solve_hyps_min HP5P7P10eq HP5P7P10m3).
	assert(Hincl : incl (P5 :: P7 :: P10 :: nil) (list_inter (P5 :: P7 :: P8 :: P10 :: nil) (P5 :: P7 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P5 :: P7 :: P8 :: P10 :: P5 :: P7 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P7 :: P8 :: P10 :: P5 :: P7 :: P9 :: P10 :: nil) ((P5 :: P7 :: P8 :: P10 :: nil) ++ (P5 :: P7 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P7 :: P8 :: P10 :: nil) (P5 :: P7 :: P9 :: P10 :: nil) (P5 :: P7 :: P10 :: nil) 3 3 3 HP5P7P8P10Mtmp HP5P7P9P10Mtmp HP5P7P10mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P7P8P10M1. try clear HP5P7P8P10M2. try clear HP5P7P8P10M3. try clear HP5P7P8P10m4. try clear HP5P7P8P10m3. try clear HP5P7P8P10m2. try clear HP5P7P8P10m1. try clear HP5P7P9P10M1. try clear HP5P7P9P10M2. try clear HP5P7P9P10M3. try clear HP5P7P9P10m4. try clear HP5P7P9P10m3. try clear HP5P7P9P10m2. try clear HP5P7P9P10m1. try clear HP5P7P10M1. try clear HP5P7P10M2. try clear HP5P7P10M3. try clear HP5P7P10m4. try clear HP5P7P10m3. try clear HP5P7P10m2. try clear HP5P7P10m1. 

assert(HP2P5P7P8P9P10m2 : rk(P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}
try clear HP2P5M1. try clear HP2P5M2. try clear HP2P5M3. try clear HP2P5m4. try clear HP2P5m3. try clear HP2P5m2. try clear HP2P5m1. 

assert(HP2P5P7P8P9P10m3 : rk(P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 3).
{
	try assert(HP2P5P7eq : rk(P2 :: P5 :: P7 :: nil) = 3) by (apply LP2P5P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P7mtmp : rk(P2 :: P5 :: P7 :: nil) >= 3) by (solve_hyps_min HP2P5P7eq HP2P5P7m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: P7 :: nil) (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: P7 :: nil) (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) 3 3 HP2P5P7mtmp Hcomp Hincl);apply HT.
}
try clear HP2P5P7M1. try clear HP2P5P7M2. try clear HP2P5P7M3. try clear HP2P5P7m4. try clear HP2P5P7m3. try clear HP2P5P7m2. try clear HP2P5P7m1. 

assert(HP2P5P7P8P9P10m4 : rk(P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P7P8P9P10eq : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 4) by (apply LP2P3P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P5P7P8P9P10mtmp : rk(P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP2P3P5P7P8P9P10eq HP2P3P5P7P8P9P10m4).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P2 :: P3 :: P8 :: P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P7P8P9P10mtmp;try rewrite HT2 in HP2P3P5P7P8P9P10mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P2 :: P8 :: nil) 4 2 2 HP2P3P5P7P8P9P10mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P8M1. try clear HP2P3P8M2. try clear HP2P3P8M3. try clear HP2P3P8m4. try clear HP2P3P8m3. try clear HP2P3P8m2. try clear HP2P3P8m1. try clear HP2P8M1. try clear HP2P8M2. try clear HP2P8M3. try clear HP2P8m4. try clear HP2P8m3. try clear HP2P8m2. try clear HP2P8m1. try clear HP2P3P5P7P8P9P10M1. try clear HP2P3P5P7P8P9P10M2. try clear HP2P3P5P7P8P9P10M3. try clear HP2P3P5P7P8P9P10m4. try clear HP2P3P5P7P8P9P10m3. try clear HP2P3P5P7P8P9P10m2. try clear HP2P3P5P7P8P9P10m1. 

assert(HP8P9P10m2 : rk(P8 :: P9 :: P10 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P8P9P10eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP2P4P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P8P9P10mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: nil) >= 3) by (solve_hyps_min HP2P4P8P9P10eq HP2P4P8P9P10m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: nil) (P2 :: P4 :: P9 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P8 :: P9 :: P10 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P8P9P10mtmp;try rewrite HT2 in HP2P4P8P9P10mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P8 :: P9 :: P10 :: nil) (P9 :: nil) 3 1 2 HP2P4P8P9P10mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P9M1. try clear HP2P4P9M2. try clear HP2P4P9M3. try clear HP2P4P9m4. try clear HP2P4P9m3. try clear HP2P4P9m2. try clear HP2P4P9m1. try clear HP9M1. try clear HP9M2. try clear HP9M3. try clear HP9m4. try clear HP9m3. try clear HP9m2. try clear HP9m1. try clear HP2P4P8P9P10M1. try clear HP2P4P8P9P10M2. try clear HP2P4P8P9P10M3. try clear HP2P4P8P9P10m4. try clear HP2P4P8P9P10m3. try clear HP2P4P8P9P10m2. try clear HP2P4P8P9P10m1. 

assert(HP8P9P10M2 : rk(P8 :: P9 :: P10 :: nil) <= 2).
{
	try assert(HP2P8P9P10eq : rk(P2 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP2P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8P9P10Mtmp : rk(P2 :: P8 :: P9 :: P10 :: nil) <= 3) by (solve_hyps_max HP2P8P9P10eq HP2P8P9P10M3).
	try assert(HP5P7P8P9P10eq : rk(P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 3) by (apply LP5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P8P9P10Mtmp : rk(P5 :: P7 :: P8 :: P9 :: P10 :: nil) <= 3) by (solve_hyps_max HP5P7P8P9P10eq HP5P7P8P9P10M3).
	try assert(HP2P5P7P8P9P10eq : rk(P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) = 4) by (apply LP2P5P7P8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P7P8P9P10mtmp : rk(P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) >= 4) by (solve_hyps_min HP2P5P7P8P9P10eq HP2P5P7P8P9P10m4).
	assert(Hincl : incl (P8 :: P9 :: P10 :: nil) (list_inter (P2 :: P8 :: P9 :: P10 :: nil) (P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P2 :: P8 :: P9 :: P10 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P8 :: P9 :: P10 :: P5 :: P7 :: P8 :: P9 :: P10 :: nil) ((P2 :: P8 :: P9 :: P10 :: nil) ++ (P5 :: P7 :: P8 :: P9 :: P10 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P7P8P9P10mtmp;try rewrite HT2 in HP2P5P7P8P9P10mtmp.
	assert(HT := rule_3 (P2 :: P8 :: P9 :: P10 :: nil) (P5 :: P7 :: P8 :: P9 :: P10 :: nil) (P8 :: P9 :: P10 :: nil) 3 3 4 HP2P8P9P10Mtmp HP5P7P8P9P10Mtmp HP2P5P7P8P9P10mtmp Hincl);apply HT.
}
try clear HP2P8P9P10M1. try clear HP2P8P9P10M2. try clear HP2P8P9P10M3. try clear HP2P8P9P10m4. try clear HP2P8P9P10m3. try clear HP2P8P9P10m2. try clear HP2P8P9P10m1. try clear HP5P7P8P9P10M1. try clear HP5P7P8P9P10M2. try clear HP5P7P8P9P10M3. try clear HP5P7P8P9P10m4. try clear HP5P7P8P9P10m3. try clear HP5P7P8P9P10m2. try clear HP5P7P8P9P10m1. try clear HP2P5P7P8P9P10M1. try clear HP2P5P7P8P9P10M2. try clear HP2P5P7P8P9P10M3. try clear HP2P5P7P8P9P10m4. try clear HP2P5P7P8P9P10m3. try clear HP2P5P7P8P9P10m2. try clear HP2P5P7P8P9P10m1. 

assert(HP8P9P10M : rk(P8 :: P9 :: P10 ::  nil) <= 3) by (solve_hyps_max HP8P9P10eq HP8P9P10M3).
assert(HP8P9P10m : rk(P8 :: P9 :: P10 ::  nil) >= 1) by (solve_hyps_min HP8P9P10eq HP8P9P10m1).
intuition.
Qed.

Lemma LP8P9P10P13P14P15 : forall P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 ,
rk(P1 :: P2 ::  nil) = 2 -> rk(P1 :: P3 ::  nil) = 2 -> rk(P2 :: P3 ::  nil) = 2 ->
rk(P1 :: P4 ::  nil) = 2 -> rk(P2 :: P4 ::  nil) = 2 -> rk(P3 :: P4 ::  nil) = 2 ->
rk(P2 :: P3 :: P4 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P4 ::  nil) = 4 -> rk(P1 :: P5 ::  nil) = 2 ->
rk(P2 :: P5 ::  nil) = 2 -> rk(P1 :: P2 :: P5 ::  nil) = 2 -> rk(P1 :: P6 ::  nil) = 2 ->
rk(P3 :: P6 ::  nil) = 2 -> rk(P1 :: P3 :: P6 ::  nil) = 2 -> rk(P5 :: P6 ::  nil) = 2 ->
rk(P1 :: P7 ::  nil) = 2 -> rk(P4 :: P7 ::  nil) = 2 -> rk(P1 :: P4 :: P7 ::  nil) = 2 ->
rk(P5 :: P7 ::  nil) = 2 -> rk(P6 :: P7 ::  nil) = 2 -> rk(P5 :: P6 :: P7 ::  nil) = 3 ->
rk(P1 :: P5 :: P6 :: P7 ::  nil) = 4 -> rk(P2 :: P3 :: P8 ::  nil) = 2 -> rk(P5 :: P6 :: P8 ::  nil) = 2 ->
rk(P2 :: P4 :: P9 ::  nil) = 2 -> rk(P5 :: P7 :: P9 ::  nil) = 2 -> rk(P3 :: P4 :: P10 ::  nil) = 2 ->
rk(P6 :: P7 :: P10 ::  nil) = 2 -> rk(P1 :: P11 ::  nil) = 2 -> rk(P2 :: P11 ::  nil) = 2 ->
rk(P3 :: P11 ::  nil) = 2 -> rk(P2 :: P3 :: P11 ::  nil) = 3 -> rk(P1 :: P2 :: P3 :: P11 ::  nil) = 4 ->
rk(P4 :: P11 ::  nil) = 2 -> rk(P2 :: P4 :: P11 ::  nil) = 3 -> rk(P1 :: P2 :: P4 :: P11 ::  nil) = 4 ->
rk(P3 :: P4 :: P11 ::  nil) = 3 -> rk(P1 :: P3 :: P4 :: P11 ::  nil) = 4 -> rk(P2 :: P3 :: P4 :: P11 ::  nil) = 4 ->
rk(P1 :: P12 ::  nil) = 2 -> rk(P5 :: P12 ::  nil) = 2 -> rk(P6 :: P12 ::  nil) = 2 ->
rk(P5 :: P6 :: P12 ::  nil) = 3 -> rk(P1 :: P5 :: P6 :: P12 ::  nil) = 4 -> rk(P7 :: P12 ::  nil) = 2 ->
rk(P5 :: P7 :: P12 ::  nil) = 3 -> rk(P1 :: P5 :: P7 :: P12 ::  nil) = 4 -> rk(P6 :: P7 :: P12 ::  nil) = 3 ->
rk(P1 :: P6 :: P7 :: P12 ::  nil) = 4 -> rk(P5 :: P6 :: P7 :: P12 ::  nil) = 4 -> rk(P11 :: P12 ::  nil) = 2 ->
rk(P1 :: P11 :: P12 ::  nil) = 2 -> rk(P2 :: P11 :: P13 ::  nil) = 2 -> rk(P5 :: P12 :: P13 ::  nil) = 2 ->
rk(P3 :: P11 :: P14 ::  nil) = 2 -> rk(P6 :: P12 :: P14 ::  nil) = 2 -> rk(P4 :: P11 :: P15 ::  nil) = 2 ->
rk(P7 :: P12 :: P15 ::  nil) = 2 -> rk(P8 :: P9 :: P10 :: P13 :: P14 :: P15 ::  nil) = 3.
Proof.

intros P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 
HP1P2eq HP1P3eq HP2P3eq HP1P4eq HP2P4eq HP3P4eq HP2P3P4eq HP1P2P3P4eq HP1P5eq HP2P5eq
HP1P2P5eq HP1P6eq HP3P6eq HP1P3P6eq HP5P6eq HP1P7eq HP4P7eq HP1P4P7eq HP5P7eq HP6P7eq
HP5P6P7eq HP1P5P6P7eq HP2P3P8eq HP5P6P8eq HP2P4P9eq HP5P7P9eq HP3P4P10eq HP6P7P10eq HP1P11eq HP2P11eq
HP3P11eq HP2P3P11eq HP1P2P3P11eq HP4P11eq HP2P4P11eq HP1P2P4P11eq HP3P4P11eq HP1P3P4P11eq HP2P3P4P11eq HP1P12eq
HP5P12eq HP6P12eq HP5P6P12eq HP1P5P6P12eq HP7P12eq HP5P7P12eq HP1P5P7P12eq HP6P7P12eq HP1P6P7P12eq HP5P6P7P12eq
HP11P12eq HP1P11P12eq HP2P11P13eq HP5P12P13eq HP3P11P14eq HP6P12P14eq HP4P11P15eq HP7P12P15eq .

assert(HP2P3P8P11P14m2 : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P8P11P14M3 : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) <= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3mtmp : rk(P3 :: nil) >= 1) by (solve_hyps_min HP3eq HP3m1).
	assert(Hincl : incl (P3 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P3 :: P11 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P11 :: P14 :: nil) (P2 :: P3 :: P8 :: P3 :: P11 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P3 :: P11 :: P14 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P3 :: P11 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P3 :: P8 :: nil) (P3 :: P11 :: P14 :: nil) (P3 :: nil) 2 2 1 HP2P3P8Mtmp HP3P11P14Mtmp HP3mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P8P11P14m3 : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) >= 3).
{
	try assert(HP2P3P11eq : rk(P2 :: P3 :: P11 :: nil) = 3) by (apply LP2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11mtmp : rk(P2 :: P3 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P3P11eq HP2P3P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil) 3 3 HP2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P11P14M3 : rk(P2 :: P3 :: P11 :: P14 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P3 :: P11 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P11 :: P14 :: nil) (P2 :: P3 :: P11 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P11 :: P14 :: nil) ((P2 :: nil) ++ (P3 :: P11 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P3 :: P11 :: P14 :: nil) (nil) 1 2 0 HP2Mtmp HP3P11P14Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P11P14m2 : rk(P2 :: P3 :: P11 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P11 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P11P14m3 : rk(P2 :: P3 :: P11 :: P14 :: nil) >= 3).
{
	try assert(HP2P3P11eq : rk(P2 :: P3 :: P11 :: nil) = 3) by (apply LP2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11mtmp : rk(P2 :: P3 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P3P11eq HP2P3P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P11 :: P14 :: nil) 3 3 HP2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P6P12m3 : rk(P1 :: P6 :: P12 :: nil) >= 3).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5Mtmp : rk(P1 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P5eq HP1P5M2).
	try assert(HP1P5P6P12eq : rk(P1 :: P5 :: P6 :: P12 :: nil) = 4) by (apply LP1P5P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P6P12mtmp : rk(P1 :: P5 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P5P6P12eq HP1P5P6P12m4).
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1mtmp : rk(P1 :: nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
	assert(Hincl : incl (P1 :: nil) (list_inter (P1 :: P5 :: nil) (P1 :: P6 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P6 :: P12 :: nil) (P1 :: P5 :: P1 :: P6 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P1 :: P6 :: P12 :: nil) ((P1 :: P5 :: nil) ++ (P1 :: P6 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P6P12mtmp;try rewrite HT2 in HP1P5P6P12mtmp.
	assert(HT := rule_4 (P1 :: P5 :: nil) (P1 :: P6 :: P12 :: nil) (P1 :: nil) 4 1 2 HP1P5P6P12mtmp HP1mtmp HP1P5Mtmp Hincl); apply HT.
}


assert(HP1P6P11P12P14m2 : rk(P1 :: P6 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P6 :: nil) (P1 :: P6 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P6 :: nil) (P1 :: P6 :: P11 :: P12 :: P14 :: nil) 2 2 HP1P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P6P11P12P14m3 : rk(P1 :: P6 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P6P12eq : rk(P1 :: P6 :: P12 :: nil) = 3) by (apply LP1P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P6P12mtmp : rk(P1 :: P6 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P6P12eq HP1P6P12m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P6 :: P12 :: nil) (P1 :: P6 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P6 :: P12 :: nil) (P1 :: P6 :: P11 :: P12 :: P14 :: nil) 3 3 HP1P6P12mtmp Hcomp Hincl);apply HT.
}


assert(HP1P6P11P12P14M3 : rk(P1 :: P6 :: P11 :: P12 :: P14 :: nil) <= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP6P12P14eq : rk(P6 :: P12 :: P14 :: nil) = 2) by (apply LP6P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P12P14Mtmp : rk(P6 :: P12 :: P14 :: nil) <= 2) by (solve_hyps_max HP6P12P14eq HP6P12P14M2).
	try assert(HP12eq : rk(P12 :: nil) = 1) by (apply LP12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP12mtmp : rk(P12 :: nil) >= 1) by (solve_hyps_min HP12eq HP12m1).
	assert(Hincl : incl (P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P6 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P6 :: P11 :: P12 :: P14 :: nil) (P1 :: P11 :: P12 :: P6 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P6 :: P12 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P6 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P11 :: P12 :: nil) (P6 :: P12 :: P14 :: nil) (P12 :: nil) 2 2 1 HP1P11P12Mtmp HP6P12P14Mtmp HP12mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP6P11P12P14M3 : rk(P6 :: P11 :: P12 :: P14 :: nil) <= 3).
{
	try assert(HP11eq : rk(P11 :: nil) = 1) by (apply LP11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11Mtmp : rk(P11 :: nil) <= 1) by (solve_hyps_max HP11eq HP11M1).
	try assert(HP6P12P14eq : rk(P6 :: P12 :: P14 :: nil) = 2) by (apply LP6P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P12P14Mtmp : rk(P6 :: P12 :: P14 :: nil) <= 2) by (solve_hyps_max HP6P12P14eq HP6P12P14M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P11 :: nil) (P6 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P6 :: P11 :: P12 :: P14 :: nil) (P11 :: P6 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P11 :: P6 :: P12 :: P14 :: nil) ((P11 :: nil) ++ (P6 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P11 :: nil) (P6 :: P12 :: P14 :: nil) (nil) 1 2 0 HP11Mtmp HP6P12P14Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP6P11P12P14m2 : rk(P6 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP6P12eq : rk(P6 :: P12 :: nil) = 2) by (apply LP6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P12mtmp : rk(P6 :: P12 :: nil) >= 2) by (solve_hyps_min HP6P12eq HP6P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P6 :: P12 :: nil) (P6 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P6 :: P12 :: nil) (P6 :: P11 :: P12 :: P14 :: nil) 2 2 HP6P12mtmp Hcomp Hincl);apply HT.
}


assert(HP6P11P12P14m3 : rk(P6 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P6P11P12P14eq : rk(P1 :: P6 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP1P6P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P6P11P12P14mtmp : rk(P1 :: P6 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P6P11P12P14eq HP1P6P11P12P14m3).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P6 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P6 :: P11 :: P12 :: P14 :: nil) (P1 :: P11 :: P12 :: P6 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P6 :: P11 :: P12 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P6 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P6P11P12P14mtmp;try rewrite HT2 in HP1P6P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P6 :: P11 :: P12 :: P14 :: nil) (P11 :: P12 :: nil) 3 2 2 HP1P6P11P12P14mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P6P11P12P14M1. try clear HP1P6P11P12P14M2. try clear HP1P6P11P12P14M3. try clear HP1P6P11P12P14m4. try clear HP1P6P11P12P14m3. try clear HP1P6P11P12P14m2. try clear HP1P6P11P12P14m1. 

assert(HP11P14m2 : rk(P11 :: P14 :: nil) >= 2).
{
	try assert(HP6P12P14eq : rk(P6 :: P12 :: P14 :: nil) = 2) by (apply LP6P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P12P14Mtmp : rk(P6 :: P12 :: P14 :: nil) <= 2) by (solve_hyps_max HP6P12P14eq HP6P12P14M2).
	try assert(HP6P11P12P14eq : rk(P6 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP6P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P11P12P14mtmp : rk(P6 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP6P11P12P14eq HP6P11P12P14m3).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14mtmp : rk(P14 :: nil) >= 1) by (solve_hyps_min HP14eq HP14m1).
	assert(Hincl : incl (P14 :: nil) (list_inter (P11 :: P14 :: nil) (P6 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P6 :: P11 :: P12 :: P14 :: nil) (P11 :: P14 :: P6 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P11 :: P14 :: P6 :: P12 :: P14 :: nil) ((P11 :: P14 :: nil) ++ (P6 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP6P11P12P14mtmp;try rewrite HT2 in HP6P11P12P14mtmp.
	assert(HT := rule_2 (P11 :: P14 :: nil) (P6 :: P12 :: P14 :: nil) (P14 :: nil) 3 1 2 HP6P11P12P14mtmp HP14mtmp HP6P12P14Mtmp Hincl);apply HT.
}
try clear HP6P11P12P14M1. try clear HP6P11P12P14M2. try clear HP6P11P12P14M3. try clear HP6P11P12P14m4. try clear HP6P11P12P14m3. try clear HP6P11P12P14m2. try clear HP6P11P12P14m1. 

assert(HP2P11P14m2 : rk(P2 :: P11 :: P14 :: nil) >= 2).
{
	try assert(HP2P11eq : rk(P2 :: P11 :: nil) = 2) by (apply LP2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11mtmp : rk(P2 :: P11 :: nil) >= 2) by (solve_hyps_min HP2P11eq HP2P11m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: nil) (P2 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: nil) (P2 :: P11 :: P14 :: nil) 2 2 HP2P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P11P14m3 : rk(P2 :: P11 :: P14 :: nil) >= 3).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP2P3P11P14eq : rk(P2 :: P3 :: P11 :: P14 :: nil) = 3) by (apply LP2P3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11P14mtmp : rk(P2 :: P3 :: P11 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P11P14eq HP2P3P11P14m3).
	try assert(HP11P14eq : rk(P11 :: P14 :: nil) = 2) by (apply LP11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P14mtmp : rk(P11 :: P14 :: nil) >= 2) by (solve_hyps_min HP11P14eq HP11P14m2).
	assert(Hincl : incl (P11 :: P14 :: nil) (list_inter (P2 :: P11 :: P14 :: nil) (P3 :: P11 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P11 :: P14 :: nil) (P2 :: P11 :: P14 :: P3 :: P11 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P14 :: P3 :: P11 :: P14 :: nil) ((P2 :: P11 :: P14 :: nil) ++ (P3 :: P11 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P11P14mtmp;try rewrite HT2 in HP2P3P11P14mtmp.
	assert(HT := rule_2 (P2 :: P11 :: P14 :: nil) (P3 :: P11 :: P14 :: nil) (P11 :: P14 :: nil) 3 2 2 HP2P3P11P14mtmp HP11P14mtmp HP3P11P14Mtmp Hincl);apply HT.
}
try clear HP2P3P11P14M1. try clear HP2P3P11P14M2. try clear HP2P3P11P14M3. try clear HP2P3P11P14m4. try clear HP2P3P11P14m3. try clear HP2P3P11P14m2. try clear HP2P3P11P14m1. 

assert(HP2P8P11P14m2 : rk(P2 :: P8 :: P11 :: P14 :: nil) >= 2).
{
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P8 :: nil) (P2 :: P8 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P8 :: nil) (P2 :: P8 :: P11 :: P14 :: nil) 2 2 HP2P8mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P11P14m3 : rk(P2 :: P8 :: P11 :: P14 :: nil) >= 3).
{
	try assert(HP2P11P14eq : rk(P2 :: P11 :: P14 :: nil) = 3) by (apply LP2P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P14mtmp : rk(P2 :: P11 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P11P14eq HP2P11P14m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: P14 :: nil) (P2 :: P8 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: P14 :: nil) (P2 :: P8 :: P11 :: P14 :: nil) 3 3 HP2P11P14mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P11P14M3 : rk(P2 :: P8 :: P11 :: P14 :: nil) <= 3).
{
	try assert(HP2P3P8P11P14eq : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) = 3) by (apply LP2P3P8P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P11P14Mtmp : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) <= 3) by (solve_hyps_max HP2P3P8P11P14eq HP2P3P8P11P14M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P8 :: P11 :: P14 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P2 :: P8 :: P11 :: P14 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil) 3 3 HP2P3P8P11P14Mtmp Hcomp Hincl);apply HT.
}


assert(HP2P11P13P14m2 : rk(P2 :: P11 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P11eq : rk(P2 :: P11 :: nil) = 2) by (apply LP2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11mtmp : rk(P2 :: P11 :: nil) >= 2) by (solve_hyps_min HP2P11eq HP2P11m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: nil) (P2 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: nil) (P2 :: P11 :: P13 :: P14 :: nil) 2 2 HP2P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P11P13P14M3 : rk(P2 :: P11 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14Mtmp : rk(P14 :: nil) <= 1) by (solve_hyps_max HP14eq HP14M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: P11 :: P13 :: nil) (P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P11 :: P13 :: P14 :: nil) (P2 :: P11 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P14 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P11 :: P13 :: nil) (P14 :: nil) (nil) 2 1 0 HP2P11P13Mtmp HP14Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P11P13P14m3 : rk(P2 :: P11 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP2P11P14eq : rk(P2 :: P11 :: P14 :: nil) = 3) by (apply LP2P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P14mtmp : rk(P2 :: P11 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P11P14eq HP2P11P14m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: P14 :: nil) (P2 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: P14 :: nil) (P2 :: P11 :: P13 :: P14 :: nil) 3 3 HP2P11P14mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P11P13P14m2 : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P8 :: nil) (P2 :: P8 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P8 :: nil) (P2 :: P8 :: P11 :: P13 :: P14 :: nil) 2 2 HP2P8mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P11P13P14m3 : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP2P11P14eq : rk(P2 :: P11 :: P14 :: nil) = 3) by (apply LP2P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P14mtmp : rk(P2 :: P11 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P11P14eq HP2P11P14m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: P14 :: nil) (P2 :: P8 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: P14 :: nil) (P2 :: P8 :: P11 :: P13 :: P14 :: nil) 3 3 HP2P11P14mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P11P13P14M3 : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP2P8P11P14eq : rk(P2 :: P8 :: P11 :: P14 :: nil) = 3) by (apply LP2P8P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P8P11P14Mtmp : rk(P2 :: P8 :: P11 :: P14 :: nil) <= 3) by (solve_hyps_max HP2P8P11P14eq HP2P8P11P14M3).
	try assert(HP2P11P13P14eq : rk(P2 :: P11 :: P13 :: P14 :: nil) = 3) by (apply LP2P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13P14Mtmp : rk(P2 :: P11 :: P13 :: P14 :: nil) <= 3) by (solve_hyps_max HP2P11P13P14eq HP2P11P13P14M3).
	try assert(HP2P11P14eq : rk(P2 :: P11 :: P14 :: nil) = 3) by (apply LP2P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P14mtmp : rk(P2 :: P11 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P11P14eq HP2P11P14m3).
	assert(Hincl : incl (P2 :: P11 :: P14 :: nil) (list_inter (P2 :: P8 :: P11 :: P14 :: nil) (P2 :: P11 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P8 :: P11 :: P13 :: P14 :: nil) (P2 :: P8 :: P11 :: P14 :: P2 :: P11 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P8 :: P11 :: P14 :: P2 :: P11 :: P13 :: P14 :: nil) ((P2 :: P8 :: P11 :: P14 :: nil) ++ (P2 :: P11 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P8 :: P11 :: P14 :: nil) (P2 :: P11 :: P13 :: P14 :: nil) (P2 :: P11 :: P14 :: nil) 3 3 3 HP2P8P11P14Mtmp HP2P11P13P14Mtmp HP2P11P14mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2P8P11P14M1. try clear HP2P8P11P14M2. try clear HP2P8P11P14M3. try clear HP2P8P11P14m4. try clear HP2P8P11P14m3. try clear HP2P8P11P14m2. try clear HP2P8P11P14m1. try clear HP2P11P13P14M1. try clear HP2P11P13P14M2. try clear HP2P11P13P14M3. try clear HP2P11P13P14m4. try clear HP2P11P13P14m3. try clear HP2P11P13P14m2. try clear HP2P11P13P14m1. try clear HP2P11P14M1. try clear HP2P11P14M2. try clear HP2P11P14M3. try clear HP2P11P14m4. try clear HP2P11P14m3. try clear HP2P11P14m2. try clear HP2P11P14m1. 

assert(HP2P3P8P11P13m2 : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P8P11P13M3 : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2mtmp : rk(P2 :: nil) >= 1) by (solve_hyps_min HP2eq HP2m1).
	assert(Hincl : incl (P2 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P11 :: P13 :: nil) (P2 :: P3 :: P8 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P11 :: P13 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P3 :: P8 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: nil) 2 2 1 HP2P3P8Mtmp HP2P11P13Mtmp HP2mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P8P11P13m3 : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P3P11eq : rk(P2 :: P3 :: P11 :: nil) = 3) by (apply LP2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11mtmp : rk(P2 :: P3 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P3P11eq HP2P3P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: nil) 3 3 HP2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P12m2 : rk(P1 :: P5 :: P12 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P12 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P12m3 : rk(P1 :: P5 :: P12 :: nil) >= 3).
{
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6Mtmp : rk(P6 :: nil) <= 1) by (solve_hyps_max HP6eq HP6M1).
	try assert(HP1P5P6P12eq : rk(P1 :: P5 :: P6 :: P12 :: nil) = 4) by (apply LP1P5P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P6P12mtmp : rk(P1 :: P5 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P5P6P12eq HP1P5P6P12m4).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P6 :: nil) (P1 :: P5 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P6 :: P12 :: nil) (P6 :: P1 :: P5 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P6 :: P1 :: P5 :: P12 :: nil) ((P6 :: nil) ++ (P1 :: P5 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P6P12mtmp;try rewrite HT2 in HP1P5P6P12mtmp.
	assert(HT := rule_4 (P6 :: nil) (P1 :: P5 :: P12 :: nil) (nil) 4 0 1 HP1P5P6P12mtmp Hmtmp HP6Mtmp Hincl); apply HT.
}
try clear HP1P5P6P12M1. try clear HP1P5P6P12M2. try clear HP1P5P6P12M3. try clear HP1P5P6P12m4. try clear HP1P5P6P12m3. try clear HP1P5P6P12m2. try clear HP1P5P6P12m1. 

assert(HP1P5P11P12P13m2 : rk(P1 :: P5 :: P11 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P11 :: P12 :: P13 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P11P12P13m3 : rk(P1 :: P5 :: P11 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (P1 :: P5 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: P12 :: nil) (P1 :: P5 :: P11 :: P12 :: P13 :: nil) 3 3 HP1P5P12mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P11P12P13M3 : rk(P1 :: P5 :: P11 :: P12 :: P13 :: nil) <= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP12eq : rk(P12 :: nil) = 1) by (apply LP12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP12mtmp : rk(P12 :: nil) >= 1) by (solve_hyps_min HP12eq HP12m1).
	assert(Hincl : incl (P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P11 :: P12 :: P13 :: nil) (P1 :: P11 :: P12 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P5 :: P12 :: P13 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P11 :: P12 :: nil) (P5 :: P12 :: P13 :: nil) (P12 :: nil) 2 2 1 HP1P11P12Mtmp HP5P12P13Mtmp HP12mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP5P11P12P13M3 : rk(P5 :: P11 :: P12 :: P13 :: nil) <= 3).
{
	try assert(HP11eq : rk(P11 :: nil) = 1) by (apply LP11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11Mtmp : rk(P11 :: nil) <= 1) by (solve_hyps_max HP11eq HP11M1).
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P11 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P11 :: P12 :: P13 :: nil) (P11 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P11 :: P5 :: P12 :: P13 :: nil) ((P11 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P11 :: nil) (P5 :: P12 :: P13 :: nil) (nil) 1 2 0 HP11Mtmp HP5P12P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP5P11P12P13m2 : rk(P5 :: P11 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P5 :: P12 :: nil) (P5 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P5 :: P12 :: nil) (P5 :: P11 :: P12 :: P13 :: nil) 2 2 HP5P12mtmp Hcomp Hincl);apply HT.
}


assert(HP5P11P12P13m3 : rk(P5 :: P11 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P5P11P12P13eq : rk(P1 :: P5 :: P11 :: P12 :: P13 :: nil) = 3) by (apply LP1P5P11P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P11P12P13mtmp : rk(P1 :: P5 :: P11 :: P12 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P5P11P12P13eq HP1P5P11P12P13m3).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P5 :: P11 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P11 :: P12 :: P13 :: nil) (P1 :: P11 :: P12 :: P5 :: P11 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P5 :: P11 :: P12 :: P13 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P5 :: P11 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P11P12P13mtmp;try rewrite HT2 in HP1P5P11P12P13mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P5 :: P11 :: P12 :: P13 :: nil) (P11 :: P12 :: nil) 3 2 2 HP1P5P11P12P13mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P5P11P12P13M1. try clear HP1P5P11P12P13M2. try clear HP1P5P11P12P13M3. try clear HP1P5P11P12P13m4. try clear HP1P5P11P12P13m3. try clear HP1P5P11P12P13m2. try clear HP1P5P11P12P13m1. 

assert(HP11P13m2 : rk(P11 :: P13 :: nil) >= 2).
{
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP5P11P12P13eq : rk(P5 :: P11 :: P12 :: P13 :: nil) = 3) by (apply LP5P11P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P11P12P13mtmp : rk(P5 :: P11 :: P12 :: P13 :: nil) >= 3) by (solve_hyps_min HP5P11P12P13eq HP5P11P12P13m3).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P11 :: P13 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P11 :: P12 :: P13 :: nil) (P11 :: P13 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P11 :: P13 :: P5 :: P12 :: P13 :: nil) ((P11 :: P13 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP5P11P12P13mtmp;try rewrite HT2 in HP5P11P12P13mtmp.
	assert(HT := rule_2 (P11 :: P13 :: nil) (P5 :: P12 :: P13 :: nil) (P13 :: nil) 3 1 2 HP5P11P12P13mtmp HP13mtmp HP5P12P13Mtmp Hincl);apply HT.
}
try clear HP5P11P12P13M1. try clear HP5P11P12P13M2. try clear HP5P11P12P13M3. try clear HP5P11P12P13m4. try clear HP5P11P12P13m3. try clear HP5P11P12P13m2. try clear HP5P11P12P13m1. 

assert(HP3P8P11P13m2 : rk(P3 :: P8 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP3P8eq : rk(P3 :: P8 :: nil) = 2) by (apply LP3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P8mtmp : rk(P3 :: P8 :: nil) >= 2) by (solve_hyps_min HP3P8eq HP3P8m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P3 :: P8 :: nil) (P3 :: P8 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P3 :: P8 :: nil) (P3 :: P8 :: P11 :: P13 :: nil) 2 2 HP3P8mtmp Hcomp Hincl);apply HT.
}


assert(HP3P8P11P13m3 : rk(P3 :: P8 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P3P8P11P13eq : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) = 3) by (apply LP2P3P8P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P11P13mtmp : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P3P8P11P13eq HP2P3P8P11P13m3).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P3 :: P8 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P11 :: P13 :: nil) (P2 :: P11 :: P13 :: P3 :: P8 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P3 :: P8 :: P11 :: P13 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P3 :: P8 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P8P11P13mtmp;try rewrite HT2 in HP2P3P8P11P13mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P3 :: P8 :: P11 :: P13 :: nil) (P11 :: P13 :: nil) 3 2 2 HP2P3P8P11P13mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}


assert(HP3P8P11P13M3 : rk(P3 :: P8 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP2P3P8P11P13eq : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) = 3) by (apply LP2P3P8P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P11P13Mtmp : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) <= 3) by (solve_hyps_max HP2P3P8P11P13eq HP2P3P8P11P13M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P3 :: P8 :: P11 :: P13 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P3 :: P8 :: P11 :: P13 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: nil) 3 3 HP2P3P8P11P13Mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P8P11P13P14m2 : rk(P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P8P11P13P14m3 : rk(P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP2P3P11eq : rk(P2 :: P3 :: P11 :: nil) = 3) by (apply LP2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11mtmp : rk(P2 :: P3 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P3P11eq HP2P3P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) 3 3 HP2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P8P11P13P14M3 : rk(P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P3P8P11P14eq : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) = 3) by (apply LP2P3P8P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P11P14Mtmp : rk(P2 :: P3 :: P8 :: P11 :: P14 :: nil) <= 3) by (solve_hyps_max HP2P3P8P11P14eq HP2P3P8P11P14M3).
	try assert(HP2P11eq : rk(P2 :: P11 :: nil) = 2) by (apply LP2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11mtmp : rk(P2 :: P11 :: nil) >= 2) by (solve_hyps_min HP2P11eq HP2P11m2).
	assert(Hincl : incl (P2 :: P11 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) (P2 :: P11 :: P13 :: P2 :: P3 :: P8 :: P11 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P2 :: P3 :: P8 :: P11 :: P14 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P2 :: P3 :: P8 :: P11 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P11 :: P13 :: nil) (P2 :: P3 :: P8 :: P11 :: P14 :: nil) (P2 :: P11 :: nil) 2 3 2 HP2P11P13Mtmp HP2P3P8P11P14Mtmp HP2P11mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2P3P8P11P14M1. try clear HP2P3P8P11P14M2. try clear HP2P3P8P11P14M3. try clear HP2P3P8P11P14m4. try clear HP2P3P8P11P14m3. try clear HP2P3P8P11P14m2. try clear HP2P3P8P11P14m1. 

assert(HP3P8P11P13P14m2 : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP3P8eq : rk(P3 :: P8 :: nil) = 2) by (apply LP3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P8mtmp : rk(P3 :: P8 :: nil) >= 2) by (solve_hyps_min HP3P8eq HP3P8m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P3 :: P8 :: nil) (P3 :: P8 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P3 :: P8 :: nil) (P3 :: P8 :: P11 :: P13 :: P14 :: nil) 2 2 HP3P8mtmp Hcomp Hincl);apply HT.
}


assert(HP3P8P11P13P14m3 : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P3P8P11P13P14eq : rk(P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) = 3) by (apply LP2P3P8P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P11P13P14mtmp : rk(P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P8P11P13P14eq HP2P3P8P11P13P14m3).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P3 :: P8 :: P11 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) (P2 :: P11 :: P13 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P3 :: P8 :: P11 :: P13 :: P14 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P3 :: P8 :: P11 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P8P11P13P14mtmp;try rewrite HT2 in HP2P3P8P11P13P14mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P3 :: P8 :: P11 :: P13 :: P14 :: nil) (P11 :: P13 :: nil) 3 2 2 HP2P3P8P11P13P14mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}
try clear HP2P3P8P11P13P14M1. try clear HP2P3P8P11P13P14M2. try clear HP2P3P8P11P13P14M3. try clear HP2P3P8P11P13P14m4. try clear HP2P3P8P11P13P14m3. try clear HP2P3P8P11P13P14m2. try clear HP2P3P8P11P13P14m1. 

assert(HP3P8P11P13P14M3 : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP3P8P11P13eq : rk(P3 :: P8 :: P11 :: P13 :: nil) = 3) by (apply LP3P8P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P8P11P13Mtmp : rk(P3 :: P8 :: P11 :: P13 :: nil) <= 3) by (solve_hyps_max HP3P8P11P13eq HP3P8P11P13M3).
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P11eq : rk(P3 :: P11 :: nil) = 2) by (apply LP3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11mtmp : rk(P3 :: P11 :: nil) >= 2) by (solve_hyps_min HP3P11eq HP3P11m2).
	assert(Hincl : incl (P3 :: P11 :: nil) (list_inter (P3 :: P8 :: P11 :: P13 :: nil) (P3 :: P11 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P8 :: P11 :: P13 :: P14 :: nil) (P3 :: P8 :: P11 :: P13 :: P3 :: P11 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P8 :: P11 :: P13 :: P3 :: P11 :: P14 :: nil) ((P3 :: P8 :: P11 :: P13 :: nil) ++ (P3 :: P11 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P3 :: P8 :: P11 :: P13 :: nil) (P3 :: P11 :: P14 :: nil) (P3 :: P11 :: nil) 3 2 2 HP3P8P11P13Mtmp HP3P11P14Mtmp HP3P11mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP3P8P11P13M1. try clear HP3P8P11P13M2. try clear HP3P8P11P13M3. try clear HP3P8P11P13m4. try clear HP3P8P11P13m3. try clear HP3P8P11P13m2. try clear HP3P8P11P13m1. try clear HP3P11M1. try clear HP3P11M2. try clear HP3P11M3. try clear HP3P11m4. try clear HP3P11m3. try clear HP3P11m2. try clear HP3P11m1. 

assert(HP8P11P13P14m2 : rk(P8 :: P11 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P8P11P13P14eq : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) = 2) by (apply LP2P8P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P8P11P13P14mtmp : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) >= 2) by (solve_hyps_min HP2P8P11P13P14eq HP2P8P11P13P14m2).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P8 :: P11 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P8 :: P11 :: P13 :: P14 :: nil) (P2 :: P11 :: P13 :: P8 :: P11 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P8 :: P11 :: P13 :: P14 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P8 :: P11 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P8P11P13P14mtmp;try rewrite HT2 in HP2P8P11P13P14mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P8 :: P11 :: P13 :: P14 :: nil) (P11 :: P13 :: nil) 2 2 2 HP2P8P11P13P14mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}


assert(HP8P11P13P14m3 : rk(P8 :: P11 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P8P11P13P14eq : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) = 3) by (apply LP3P8P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P8P11P13P14mtmp : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP3P8P11P13P14eq HP3P8P11P13P14m3).
	try assert(HP11P14eq : rk(P11 :: P14 :: nil) = 2) by (apply LP11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P14mtmp : rk(P11 :: P14 :: nil) >= 2) by (solve_hyps_min HP11P14eq HP11P14m2).
	assert(Hincl : incl (P11 :: P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P8 :: P11 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P8 :: P11 :: P13 :: P14 :: nil) (P3 :: P11 :: P14 :: P8 :: P11 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P8 :: P11 :: P13 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P8 :: P11 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P8P11P13P14mtmp;try rewrite HT2 in HP3P8P11P13P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P8 :: P11 :: P13 :: P14 :: nil) (P11 :: P14 :: nil) 3 2 2 HP3P8P11P13P14mtmp HP11P14mtmp HP3P11P14Mtmp Hincl); apply HT.
}


assert(HP8P11P13P14M3 : rk(P8 :: P11 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP2P8P11P13P14eq : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) = 3) by (apply LP2P8P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P8P11P13P14Mtmp : rk(P2 :: P8 :: P11 :: P13 :: P14 :: nil) <= 3) by (solve_hyps_max HP2P8P11P13P14eq HP2P8P11P13P14M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P8 :: P11 :: P13 :: P14 :: nil) (P2 :: P8 :: P11 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P8 :: P11 :: P13 :: P14 :: nil) (P2 :: P8 :: P11 :: P13 :: P14 :: nil) 3 3 HP2P8P11P13P14Mtmp Hcomp Hincl);apply HT.
}
try clear HP2P8P11P13P14M1. try clear HP2P8P11P13P14M2. try clear HP2P8P11P13P14M3. try clear HP2P8P11P13P14m4. try clear HP2P8P11P13P14m3. try clear HP2P8P11P13P14m2. try clear HP2P8P11P13P14m1. 

assert(HP1P2P3P11P12m2 : rk(P1 :: P2 :: P3 :: P11 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P11 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P11P12m3 : rk(P1 :: P2 :: P3 :: P11 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P11 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P11P12m4 : rk(P1 :: P2 :: P3 :: P11 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P11 :: P12 :: nil) 4 4 HP1P2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P12m2 : rk(P1 :: P2 :: P3 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P12m3 : rk(P1 :: P2 :: P3 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P12m4 : rk(P1 :: P2 :: P3 :: P12 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P2P3P11P12eq : rk(P1 :: P2 :: P3 :: P11 :: P12 :: nil) = 4) by (apply LP1P2P3P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11P12mtmp : rk(P1 :: P2 :: P3 :: P11 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11P12eq HP1P2P3P11P12m4).
	try assert(HP1P12eq : rk(P1 :: P12 :: nil) = 2) by (apply LP1P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P12mtmp : rk(P1 :: P12 :: nil) >= 2) by (solve_hyps_min HP1P12eq HP1P12m2).
	assert(Hincl : incl (P1 :: P12 :: nil) (list_inter (P1 :: P2 :: P3 :: P12 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P11 :: P12 :: nil) (P1 :: P2 :: P3 :: P12 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P12 :: P1 :: P11 :: P12 :: nil) ((P1 :: P2 :: P3 :: P12 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P11P12mtmp;try rewrite HT2 in HP1P2P3P11P12mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P3 :: P12 :: nil) (P1 :: P11 :: P12 :: nil) (P1 :: P12 :: nil) 4 2 2 HP1P2P3P11P12mtmp HP1P12mtmp HP1P11P12Mtmp Hincl);apply HT.
}
try clear HP1P2P3P11P12M1. try clear HP1P2P3P11P12M2. try clear HP1P2P3P11P12M3. try clear HP1P2P3P11P12m4. try clear HP1P2P3P11P12m3. try clear HP1P2P3P11P12m2. try clear HP1P2P3P11P12m1. 

assert(HP1P2P3P5P6P8P12P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P8P12P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P8P12P14m4 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P3P12eq : rk(P1 :: P2 :: P3 :: P12 :: nil) = 4) by (apply LP1P2P3P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P12mtmp : rk(P1 :: P2 :: P3 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P12eq HP1P2P3P12m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P12 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P12 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) 4 4 HP1P2P3P12mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P12m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P12m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P12m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P11m2 : rk(P1 :: P2 :: P11 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P11 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P11 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P11m3 : rk(P1 :: P2 :: P11 :: nil) >= 3).
{
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3Mtmp : rk(P3 :: nil) <= 1) by (solve_hyps_max HP3eq HP3M1).
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P3 :: nil) (P1 :: P2 :: P11 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P11 :: nil) (P3 :: P1 :: P2 :: P11 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P1 :: P2 :: P11 :: nil) ((P3 :: nil) ++ (P1 :: P2 :: P11 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P11mtmp;try rewrite HT2 in HP1P2P3P11mtmp.
	assert(HT := rule_4 (P3 :: nil) (P1 :: P2 :: P11 :: nil) (nil) 4 0 1 HP1P2P3P11mtmp Hmtmp HP3Mtmp Hincl); apply HT.
}


assert(HP1P2P11P12M3 : rk(P1 :: P2 :: P11 :: P12 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P11 :: P12 :: nil) (P2 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P1 :: P11 :: P12 :: nil) ((P2 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P1 :: P11 :: P12 :: nil) (nil) 1 2 0 HP2Mtmp HP1P11P12Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P11P12m2 : rk(P1 :: P2 :: P11 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P11 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P11P12m3 : rk(P1 :: P2 :: P11 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P11eq : rk(P1 :: P2 :: P11 :: nil) = 3) by (apply LP1P2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P11mtmp : rk(P1 :: P2 :: P11 :: nil) >= 3) by (solve_hyps_min HP1P2P11eq HP1P2P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P11 :: nil) (P1 :: P2 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P11 :: nil) (P1 :: P2 :: P11 :: P12 :: nil) 3 3 HP1P2P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P12m2 : rk(P1 :: P2 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P12m3 : rk(P1 :: P2 :: P12 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P2P11P12eq : rk(P1 :: P2 :: P11 :: P12 :: nil) = 3) by (apply LP1P2P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P11P12mtmp : rk(P1 :: P2 :: P11 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P2P11P12eq HP1P2P11P12m3).
	try assert(HP1P12eq : rk(P1 :: P12 :: nil) = 2) by (apply LP1P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P12mtmp : rk(P1 :: P12 :: nil) >= 2) by (solve_hyps_min HP1P12eq HP1P12m2).
	assert(Hincl : incl (P1 :: P12 :: nil) (list_inter (P1 :: P2 :: P12 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P11 :: P12 :: nil) (P1 :: P2 :: P12 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P12 :: P1 :: P11 :: P12 :: nil) ((P1 :: P2 :: P12 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P11P12mtmp;try rewrite HT2 in HP1P2P11P12mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P12 :: nil) (P1 :: P11 :: P12 :: nil) (P1 :: P12 :: nil) 3 2 2 HP1P2P11P12mtmp HP1P12mtmp HP1P11P12Mtmp Hincl);apply HT.
}
try clear HP1P2P11P12M1. try clear HP1P2P11P12M2. try clear HP1P2P11P12M3. try clear HP1P2P11P12m4. try clear HP1P2P11P12m3. try clear HP1P2P11P12m2. try clear HP1P2P11P12m1. 

assert(HP1P2P3P4P12m2 : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P12m3 : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P12m4 : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P12m2 : rk(P1 :: P2 :: P5 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P12M3 : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP12eq : rk(P12 :: nil) = 1) by (apply LP12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP12Mtmp : rk(P12 :: nil) <= 1) by (solve_hyps_max HP12eq HP12M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P2 :: P5 :: nil) (P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P2 :: P5 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P12 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P12 :: nil) (nil) 2 1 0 HP1P2P5Mtmp HP12Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P5P12m3 : rk(P1 :: P2 :: P5 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3P4P12eq : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) = 4) by (apply LP1P2P3P4P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P12Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P12eq HP1P2P3P4P12M4).
	try assert(HP1P2P3P4P5P12eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) = 4) by (apply LP1P2P3P4P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P5P12mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P12eq HP1P2P3P4P5P12m4).
	try assert(HP1P2P12eq : rk(P1 :: P2 :: P12 :: nil) = 3) by (apply LP1P2P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P12mtmp : rk(P1 :: P2 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P2P12eq HP1P2P12m3).
	assert(Hincl : incl (P1 :: P2 :: P12 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P2 :: P5 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P12 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P2 :: P5 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P2 :: P5 :: P12 :: nil) ((P1 :: P2 :: P3 :: P4 :: P12 :: nil) ++ (P1 :: P2 :: P5 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P12mtmp;try rewrite HT2 in HP1P2P3P4P5P12mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P2 :: P12 :: nil) 4 3 4 HP1P2P3P4P5P12mtmp HP1P2P12mtmp HP1P2P3P4P12Mtmp Hincl); apply HT.
}
try clear HP1P2P3P4P5P12M1. try clear HP1P2P3P4P5P12M2. try clear HP1P2P3P4P5P12M3. try clear HP1P2P3P4P5P12m4. try clear HP1P2P3P4P5P12m3. try clear HP1P2P3P4P5P12m2. try clear HP1P2P3P4P5P12m1. 

assert(HP1P3P5P6P8P12P14m2 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P6P8P12P14m3 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P6P8P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P6P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P6P8P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P6P8P12P14eq HP1P2P3P5P6P8P12P14m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P8P12P14mtmp;try rewrite HT2 in HP1P2P3P5P6P8P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P6P8P12P14mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P6P8P12P14m4 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P6P8P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) = 4) by (apply LP1P2P3P5P6P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P6P8P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P6P8P12P14eq HP1P2P3P5P6P8P12P14m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P8P12P14mtmp;try rewrite HT2 in HP1P2P3P5P6P8P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P3P5P6P8P12P14mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P6P8P12P14M1. try clear HP1P2P3P5P6P8P12P14M2. try clear HP1P2P3P5P6P8P12P14M3. try clear HP1P2P3P5P6P8P12P14m4. try clear HP1P2P3P5P6P8P12P14m3. try clear HP1P2P3P5P6P8P12P14m2. try clear HP1P2P3P5P6P8P12P14m1. 

assert(HP1P2P3P4P6P12m2 : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P6P12m3 : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P6P12m4 : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P11m3 : rk(P1 :: P3 :: P11 :: nil) >= 3).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2Mtmp : rk(P1 :: P2 :: nil) <= 2) by (solve_hyps_max HP1P2eq HP1P2M2).
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1mtmp : rk(P1 :: nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
	assert(Hincl : incl (P1 :: nil) (list_inter (P1 :: P2 :: nil) (P1 :: P3 :: P11 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P1 :: P3 :: P11 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P1 :: P3 :: P11 :: nil) ((P1 :: P2 :: nil) ++ (P1 :: P3 :: P11 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P11mtmp;try rewrite HT2 in HP1P2P3P11mtmp.
	assert(HT := rule_4 (P1 :: P2 :: nil) (P1 :: P3 :: P11 :: nil) (P1 :: nil) 4 1 2 HP1P2P3P11mtmp HP1mtmp HP1P2Mtmp Hincl); apply HT.
}


assert(HP1P3P11P12M3 : rk(P1 :: P3 :: P11 :: P12 :: nil) <= 3).
{
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3Mtmp : rk(P3 :: nil) <= 1) by (solve_hyps_max HP3eq HP3M1).
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P3 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P11 :: P12 :: nil) (P3 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P1 :: P11 :: P12 :: nil) ((P3 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P3 :: nil) (P1 :: P11 :: P12 :: nil) (nil) 1 2 0 HP3Mtmp HP1P11P12Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P3P11P12m2 : rk(P1 :: P3 :: P11 :: P12 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P11 :: P12 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P11P12m3 : rk(P1 :: P3 :: P11 :: P12 :: nil) >= 3).
{
	try assert(HP1P3P11eq : rk(P1 :: P3 :: P11 :: nil) = 3) by (apply LP1P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P11mtmp : rk(P1 :: P3 :: P11 :: nil) >= 3) by (solve_hyps_min HP1P3P11eq HP1P3P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: P11 :: nil) (P1 :: P3 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: P11 :: nil) (P1 :: P3 :: P11 :: P12 :: nil) 3 3 HP1P3P11mtmp Hcomp Hincl);apply HT.
}
try clear HP1P3P11M1. try clear HP1P3P11M2. try clear HP1P3P11M3. try clear HP1P3P11m4. try clear HP1P3P11m3. try clear HP1P3P11m2. try clear HP1P3P11m1. 

assert(HP1P3P12m2 : rk(P1 :: P3 :: P12 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P12 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P12m3 : rk(P1 :: P3 :: P12 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P3P11P12eq : rk(P1 :: P3 :: P11 :: P12 :: nil) = 3) by (apply LP1P3P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P11P12mtmp : rk(P1 :: P3 :: P11 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P3P11P12eq HP1P3P11P12m3).
	try assert(HP1P12eq : rk(P1 :: P12 :: nil) = 2) by (apply LP1P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P12mtmp : rk(P1 :: P12 :: nil) >= 2) by (solve_hyps_min HP1P12eq HP1P12m2).
	assert(Hincl : incl (P1 :: P12 :: nil) (list_inter (P1 :: P3 :: P12 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P11 :: P12 :: nil) (P1 :: P3 :: P12 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P12 :: P1 :: P11 :: P12 :: nil) ((P1 :: P3 :: P12 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P11P12mtmp;try rewrite HT2 in HP1P3P11P12mtmp.
	assert(HT := rule_2 (P1 :: P3 :: P12 :: nil) (P1 :: P11 :: P12 :: nil) (P1 :: P12 :: nil) 3 2 2 HP1P3P11P12mtmp HP1P12mtmp HP1P11P12Mtmp Hincl);apply HT.
}
try clear HP1P3P11P12M1. try clear HP1P3P11P12M2. try clear HP1P3P11P12M3. try clear HP1P3P11P12m4. try clear HP1P3P11P12m3. try clear HP1P3P11P12m2. try clear HP1P3P11P12m1. 

assert(HP1P3P6P12m2 : rk(P1 :: P3 :: P6 :: P12 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P6 :: P12 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P6P12M3 : rk(P1 :: P3 :: P6 :: P12 :: nil) <= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP12eq : rk(P12 :: nil) = 1) by (apply LP12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP12Mtmp : rk(P12 :: nil) <= 1) by (solve_hyps_max HP12eq HP12M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P3 :: P6 :: nil) (P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P6 :: P12 :: nil) (P1 :: P3 :: P6 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P12 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P12 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P3 :: P6 :: nil) (P12 :: nil) (nil) 2 1 0 HP1P3P6Mtmp HP12Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P3P6P12m3 : rk(P1 :: P3 :: P6 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3P4P12eq : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) = 4) by (apply LP1P2P3P4P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P12Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P12eq HP1P2P3P4P12M4).
	try assert(HP1P2P3P4P6P12eq : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) = 4) by (apply LP1P2P3P4P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P6P12mtmp : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P6P12eq HP1P2P3P4P6P12m4).
	try assert(HP1P3P12eq : rk(P1 :: P3 :: P12 :: nil) = 3) by (apply LP1P3P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P12mtmp : rk(P1 :: P3 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P3P12eq HP1P3P12m3).
	assert(Hincl : incl (P1 :: P3 :: P12 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P3 :: P6 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P3 :: P6 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P3 :: P6 :: P12 :: nil) ((P1 :: P2 :: P3 :: P4 :: P12 :: nil) ++ (P1 :: P3 :: P6 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P6P12mtmp;try rewrite HT2 in HP1P2P3P4P6P12mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P3 :: P6 :: P12 :: nil) (P1 :: P3 :: P12 :: nil) 4 3 4 HP1P2P3P4P6P12mtmp HP1P3P12mtmp HP1P2P3P4P12Mtmp Hincl); apply HT.
}
try clear HP1P3P12M1. try clear HP1P3P12M2. try clear HP1P3P12M3. try clear HP1P3P12m4. try clear HP1P3P12m3. try clear HP1P3P12m2. try clear HP1P3P12m1. 

assert(HP5P6P8P12P14m2 : rk(P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P5P6P8P12P14eq : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) = 3) by (apply LP1P3P5P6P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P6P8P12P14mtmp : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P3P5P6P8P12P14eq HP1P3P5P6P8P12P14m3).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P1 :: P3 :: P6 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P8P12P14mtmp;try rewrite HT2 in HP1P3P5P6P8P12P14mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P6 :: nil) 3 1 2 HP1P3P5P6P8P12P14mtmp HP6mtmp HP1P3P6Mtmp Hincl); apply HT.
}


assert(HP5P6P8P12P14M3 : rk(P5 :: P6 :: P8 :: P12 :: P14 :: nil) <= 3).
{
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP6P12P14eq : rk(P6 :: P12 :: P14 :: nil) = 2) by (apply LP6P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P12P14Mtmp : rk(P6 :: P12 :: P14 :: nil) <= 2) by (solve_hyps_max HP6P12P14eq HP6P12P14M2).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P5 :: P6 :: P8 :: nil) (P6 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P5 :: P6 :: P8 :: P6 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P6 :: P8 :: P6 :: P12 :: P14 :: nil) ((P5 :: P6 :: P8 :: nil) ++ (P6 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P6 :: P8 :: nil) (P6 :: P12 :: P14 :: nil) (P6 :: nil) 2 2 1 HP5P6P8Mtmp HP6P12P14Mtmp HP6mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP6P12P14M1. try clear HP6P12P14M2. try clear HP6P12P14M3. try clear HP6P12P14m4. try clear HP6P12P14m3. try clear HP6P12P14m2. try clear HP6P12P14m1. 

assert(HP5P6P8P12P14m3 : rk(P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P3P6P12eq : rk(P1 :: P3 :: P6 :: P12 :: nil) = 3) by (apply LP1P3P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P6P12Mtmp : rk(P1 :: P3 :: P6 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P3P6P12eq HP1P3P6P12M3).
	try assert(HP1P3P5P6P8P12P14eq : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) = 4) by (apply LP1P3P5P6P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P6P8P12P14mtmp : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P3P5P6P8P12P14eq HP1P3P5P6P8P12P14m4).
	try assert(HP6P12eq : rk(P6 :: P12 :: nil) = 2) by (apply LP6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P12mtmp : rk(P6 :: P12 :: nil) >= 2) by (solve_hyps_min HP6P12eq HP6P12m2).
	assert(Hincl : incl (P6 :: P12 :: nil) (list_inter (P1 :: P3 :: P6 :: P12 :: nil) (P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P1 :: P3 :: P6 :: P12 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P12 :: P5 :: P6 :: P8 :: P12 :: P14 :: nil) ((P1 :: P3 :: P6 :: P12 :: nil) ++ (P5 :: P6 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P8P12P14mtmp;try rewrite HT2 in HP1P3P5P6P8P12P14mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: P12 :: nil) (P5 :: P6 :: P8 :: P12 :: P14 :: nil) (P6 :: P12 :: nil) 4 2 3 HP1P3P5P6P8P12P14mtmp HP6P12mtmp HP1P3P6P12Mtmp Hincl); apply HT.
}
try clear HP6P12M1. try clear HP6P12M2. try clear HP6P12M3. try clear HP6P12m4. try clear HP6P12m3. try clear HP6P12m2. try clear HP6P12m1. try clear HP1P3P5P6P8P12P14M1. try clear HP1P3P5P6P8P12P14M2. try clear HP1P3P5P6P8P12P14M3. try clear HP1P3P5P6P8P12P14m4. try clear HP1P3P5P6P8P12P14m3. try clear HP1P3P5P6P8P12P14m2. try clear HP1P3P5P6P8P12P14m1. 

assert(HP1P2P3P5P8P11P12P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8P11P12P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8P11P12P14m4 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) 4 4 HP1P2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P8P11P12P14m2 : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P8P11P12P14m3 : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P11P12P14eq HP1P2P3P5P8P11P12P14m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P8P11P12P14mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P8P11P12P14m4 : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P8P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP1P2P3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P8P11P12P14eq HP1P2P3P5P8P11P12P14m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P3P5P8P11P12P14mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP2P3P5P8P11P12P14m2 : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8P11P12P14m3 : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P11P12P14eq HP1P2P3P5P8P11P12P14m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P8P11P12P14mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP3P5P8P11P12P14m2 : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P11P12P14eq HP1P2P3P5P8P11P12P14m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P5 :: nil) 3 1 2 HP1P2P3P5P8P11P12P14mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P8P11P12P14M1. try clear HP1P2P3P5P8P11P12P14M2. try clear HP1P2P3P5P8P11P12P14M3. try clear HP1P2P3P5P8P11P12P14m4. try clear HP1P2P3P5P8P11P12P14m3. try clear HP1P2P3P5P8P11P12P14m2. try clear HP1P2P3P5P8P11P12P14m1. 

assert(HP3P5P8P11P12P14m3 : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P8P11P12P14eq : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP2P3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P5P8P11P12P14mtmp : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P5P8P11P12P14eq HP2P3P5P8P11P12P14m3).
	try assert(HP3P8eq : rk(P3 :: P8 :: nil) = 2) by (apply LP3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P8mtmp : rk(P3 :: P8 :: nil) >= 2) by (solve_hyps_min HP3P8eq HP3P8m2).
	assert(Hincl : incl (P3 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P2 :: P3 :: P8 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P8P11P12P14mtmp;try rewrite HT2 in HP2P3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P3 :: P8 :: nil) 3 2 2 HP2P3P5P8P11P12P14mtmp HP3P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P5P8P11P12P14M1. try clear HP2P3P5P8P11P12P14M2. try clear HP2P3P5P8P11P12P14M3. try clear HP2P3P5P8P11P12P14m4. try clear HP2P3P5P8P11P12P14m3. try clear HP2P3P5P8P11P12P14m2. try clear HP2P3P5P8P11P12P14m1. 

assert(HP3P5P8P11P12P14m4 : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P3P5P8P11P12P14eq : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP1P3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P8P11P12P14mtmp : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P3P5P8P11P12P14eq HP1P3P5P8P11P12P14m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P1 :: P11 :: P12 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P8P11P12P14mtmp;try rewrite HT2 in HP1P3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P3P5P8P11P12P14mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P3P5P8P11P12P14M1. try clear HP1P3P5P8P11P12P14M2. try clear HP1P3P5P8P11P12P14M3. try clear HP1P3P5P8P11P12P14m4. try clear HP1P3P5P8P11P12P14m3. try clear HP1P3P5P8P11P12P14m2. try clear HP1P3P5P8P11P12P14m1. 

assert(HP1P2P3P5P8P12P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8P12P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8P12P14m2 : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8P12P14m3 : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P12P14eq HP1P2P3P5P8P12P14m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P12P14mtmp;try rewrite HT2 in HP1P2P3P5P8P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P8P12P14mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P8P12P14M1. try clear HP1P2P3P5P8P12P14M2. try clear HP1P2P3P5P8P12P14M3. try clear HP1P2P3P5P8P12P14m4. try clear HP1P2P3P5P8P12P14m3. try clear HP1P2P3P5P8P12P14m2. try clear HP1P2P3P5P8P12P14m1. 

assert(HP5P8P12P14m2 : rk(P5 :: P8 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P8P12P14eq : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) = 3) by (apply LP2P3P5P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P5P8P12P14mtmp : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P5P8P12P14eq HP2P3P5P8P12P14m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: P12 :: P14 :: nil) (P2 :: P3 :: P8 :: P5 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P5 :: P8 :: P12 :: P14 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P5 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P8P12P14mtmp;try rewrite HT2 in HP2P3P5P8P12P14mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: P12 :: P14 :: nil) (P8 :: nil) 3 1 2 HP2P3P5P8P12P14mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P5P8P12P14M1. try clear HP2P3P5P8P12P14M2. try clear HP2P3P5P8P12P14M3. try clear HP2P3P5P8P12P14m4. try clear HP2P3P5P8P12P14m3. try clear HP2P3P5P8P12P14m2. try clear HP2P3P5P8P12P14m1. 

assert(HP5P8P12P14m3 : rk(P5 :: P8 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P5P8P11P12P14eq : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP3P5P8P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P5P8P11P12P14mtmp : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP3P5P8P11P12P14eq HP3P5P8P11P12P14m4).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14mtmp : rk(P14 :: nil) >= 1) by (solve_hyps_min HP14eq HP14m1).
	assert(Hincl : incl (P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P5 :: P8 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P8 :: P11 :: P12 :: P14 :: nil) (P3 :: P11 :: P14 :: P5 :: P8 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P5 :: P8 :: P12 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P5 :: P8 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P5P8P11P12P14mtmp;try rewrite HT2 in HP3P5P8P11P12P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P5 :: P8 :: P12 :: P14 :: nil) (P14 :: nil) 4 1 2 HP3P5P8P11P12P14mtmp HP14mtmp HP3P11P14Mtmp Hincl); apply HT.
}
try clear HP3P5P8P11P12P14M1. try clear HP3P5P8P11P12P14M2. try clear HP3P5P8P11P12P14M3. try clear HP3P5P8P11P12P14m4. try clear HP3P5P8P11P12P14m3. try clear HP3P5P8P11P12P14m2. try clear HP3P5P8P11P12P14m1. 

assert(HP5P8P12P14M3 : rk(P5 :: P8 :: P12 :: P14 :: nil) <= 3).
{
	try assert(HP5P6P8P12P14eq : rk(P5 :: P6 :: P8 :: P12 :: P14 :: nil) = 3) by (apply LP5P6P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P6P8P12P14Mtmp : rk(P5 :: P6 :: P8 :: P12 :: P14 :: nil) <= 3) by (solve_hyps_max HP5P6P8P12P14eq HP5P6P8P12P14M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P5 :: P8 :: P12 :: P14 :: nil) (P5 :: P6 :: P8 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P5 :: P8 :: P12 :: P14 :: nil) (P5 :: P6 :: P8 :: P12 :: P14 :: nil) 3 3 HP5P6P8P12P14Mtmp Hcomp Hincl);apply HT.
}
try clear HP5P6P8P12P14M1. try clear HP5P6P8P12P14M2. try clear HP5P6P8P12P14M3. try clear HP5P6P8P12P14m4. try clear HP5P6P8P12P14m3. try clear HP5P6P8P12P14m2. try clear HP5P6P8P12P14m1. 

assert(HP1P2P3P5P11P12P13P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P11P12P13P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P11P12P13P14m4 : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) 4 4 HP1P2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P11P12P13P14m2 : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P11P12P13P14m3 : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P2P3P5P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P11P12P13P14eq HP1P2P3P5P11P12P13P14m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P11P12P13P14mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P11P12P13P14m4 : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP1P2P3P5P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P11P12P13P14eq HP1P2P3P5P11P12P13P14m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P3P5P11P12P13P14mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP3P5P11P12P13P14m2 : rk(P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P2P3P5P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P11P12P13P14eq HP1P2P3P5P11P12P13P14m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P5 :: nil) 3 1 2 HP1P2P3P5P11P12P13P14mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP3P5P11P12P13P14m3 : rk(P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP1P2P3P5P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P11P12P13P14eq HP1P2P3P5P11P12P13P14m4).
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hincl : incl (P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P5 :: P12 :: nil) 4 2 3 HP1P2P3P5P11P12P13P14mtmp HP5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P11P12P13P14M1. try clear HP1P2P3P5P11P12P13P14M2. try clear HP1P2P3P5P11P12P13P14M3. try clear HP1P2P3P5P11P12P13P14m4. try clear HP1P2P3P5P11P12P13P14m3. try clear HP1P2P3P5P11P12P13P14m2. try clear HP1P2P3P5P11P12P13P14m1. 

assert(HP3P5P11P12P13P14m4 : rk(P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P3P5P11P12P13P14eq : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP1P3P5P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P11P12P13P14mtmp : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P3P5P11P12P13P14eq HP1P3P5P11P12P13P14m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P11 :: P12 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P11P12P13P14mtmp;try rewrite HT2 in HP1P3P5P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P3P5P11P12P13P14mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P3P5P11P12P13P14M1. try clear HP1P3P5P11P12P13P14M2. try clear HP1P3P5P11P12P13P14M3. try clear HP1P3P5P11P12P13P14m4. try clear HP1P3P5P11P12P13P14m3. try clear HP1P3P5P11P12P13P14m2. try clear HP1P3P5P11P12P13P14m1. 

assert(HP5P12P13P14m2 : rk(P5 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P5 :: P12 :: nil) (P5 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P5 :: P12 :: nil) (P5 :: P12 :: P13 :: P14 :: nil) 2 2 HP5P12mtmp Hcomp Hincl);apply HT.
}


assert(HP5P12P13P14M3 : rk(P5 :: P12 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14Mtmp : rk(P14 :: nil) <= 1) by (solve_hyps_max HP14eq HP14M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: P12 :: P13 :: nil) (P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P12 :: P13 :: P14 :: nil) (P5 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P12 :: P13 :: P14 :: nil) ((P5 :: P12 :: P13 :: nil) ++ (P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P12 :: P13 :: nil) (P14 :: nil) (nil) 2 1 0 HP5P12P13Mtmp HP14Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP5P12P13P14m3 : rk(P5 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P5P11P12P13P14eq : rk(P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP3P5P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P5P11P12P13P14mtmp : rk(P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP3P5P11P12P13P14eq HP3P5P11P12P13P14m4).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14mtmp : rk(P14 :: nil) >= 1) by (solve_hyps_min HP14eq HP14m1).
	assert(Hincl : incl (P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P5 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P11 :: P12 :: P13 :: P14 :: nil) (P3 :: P11 :: P14 :: P5 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P5 :: P12 :: P13 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P5 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P5P11P12P13P14mtmp;try rewrite HT2 in HP3P5P11P12P13P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P5 :: P12 :: P13 :: P14 :: nil) (P14 :: nil) 4 1 2 HP3P5P11P12P13P14mtmp HP14mtmp HP3P11P14Mtmp Hincl); apply HT.
}
try clear HP3P5P11P12P13P14M1. try clear HP3P5P11P12P13P14M2. try clear HP3P5P11P12P13P14M3. try clear HP3P5P11P12P13P14m4. try clear HP3P5P11P12P13P14m3. try clear HP3P5P11P12P13P14m2. try clear HP3P5P11P12P13P14m1. 

assert(HP1P2P3P5P11P12P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P11P12P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P11P12P14m4 : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) 4 4 HP1P2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P11P12P14m2 : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P11P12P14m3 : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P11P12P14eq HP1P2P3P5P11P12P14m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P11P12P14mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P11P12P14m4 : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP1P2P3P5P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P11P12P14eq HP1P2P3P5P11P12P14m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P3P5P11P12P14mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP3P5P11P12P14m2 : rk(P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) = 3) by (apply LP1P2P3P5P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P11P12P14eq HP1P2P3P5P11P12P14m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P5 :: nil) 3 1 2 HP1P2P3P5P11P12P14mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP3P5P11P12P14m3 : rk(P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P11P12P14eq : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP1P2P3P5P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P11P12P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P11P12P14eq HP1P2P3P5P11P12P14m4).
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hincl : incl (P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P11P12P14mtmp;try rewrite HT2 in HP1P2P3P5P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P5 :: P12 :: nil) 4 2 3 HP1P2P3P5P11P12P14mtmp HP5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P11P12P14M1. try clear HP1P2P3P5P11P12P14M2. try clear HP1P2P3P5P11P12P14M3. try clear HP1P2P3P5P11P12P14m4. try clear HP1P2P3P5P11P12P14m3. try clear HP1P2P3P5P11P12P14m2. try clear HP1P2P3P5P11P12P14m1. 

assert(HP3P5P11P12P14m4 : rk(P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P3P5P11P12P14eq : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP1P3P5P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P11P12P14mtmp : rk(P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P3P5P11P12P14eq HP1P3P5P11P12P14m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P1 :: P11 :: P12 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P3 :: P5 :: P11 :: P12 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P3 :: P5 :: P11 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P11P12P14mtmp;try rewrite HT2 in HP1P3P5P11P12P14mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P3P5P11P12P14mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P3P5P11P12P14M1. try clear HP1P3P5P11P12P14M2. try clear HP1P3P5P11P12P14M3. try clear HP1P3P5P11P12P14m4. try clear HP1P3P5P11P12P14m3. try clear HP1P3P5P11P12P14m2. try clear HP1P3P5P11P12P14m1. 

assert(HP5P12P14m2 : rk(P5 :: P12 :: P14 :: nil) >= 2).
{
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P5 :: P12 :: nil) (P5 :: P12 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P5 :: P12 :: nil) (P5 :: P12 :: P14 :: nil) 2 2 HP5P12mtmp Hcomp Hincl);apply HT.
}


assert(HP5P12P14m3 : rk(P5 :: P12 :: P14 :: nil) >= 3).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P5P11P12P14eq : rk(P3 :: P5 :: P11 :: P12 :: P14 :: nil) = 4) by (apply LP3P5P11P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P5P11P12P14mtmp : rk(P3 :: P5 :: P11 :: P12 :: P14 :: nil) >= 4) by (solve_hyps_min HP3P5P11P12P14eq HP3P5P11P12P14m4).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14mtmp : rk(P14 :: nil) >= 1) by (solve_hyps_min HP14eq HP14m1).
	assert(Hincl : incl (P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P5 :: P12 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P11 :: P12 :: P14 :: nil) (P3 :: P11 :: P14 :: P5 :: P12 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P5 :: P12 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P5 :: P12 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P5P11P12P14mtmp;try rewrite HT2 in HP3P5P11P12P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P5 :: P12 :: P14 :: nil) (P14 :: nil) 4 1 2 HP3P5P11P12P14mtmp HP14mtmp HP3P11P14Mtmp Hincl); apply HT.
}
try clear HP3P5P11P12P14M1. try clear HP3P5P11P12P14M2. try clear HP3P5P11P12P14M3. try clear HP3P5P11P12P14m4. try clear HP3P5P11P12P14m3. try clear HP3P5P11P12P14m2. try clear HP3P5P11P12P14m1. 

assert(HP1P2P3P5P8P11P12P13P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8P11P12P13P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8P11P12P13P14m4 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 4 4 HP1P2P3P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P8P11P12P13P14m2 : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P5P8P11P12P13P14m3 : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P11P12P13P14eq HP1P2P3P5P8P11P12P13P14m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P8P11P12P13P14mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P8P11P12P13P14m4 : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P3P5P8P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP1P2P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P8P11P12P13P14eq HP1P2P3P5P8P11P12P13P14m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P3P5P8P11P12P13P14mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP2P3P5P8P11P12P13P14m2 : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8P11P12P13P14m3 : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P11P12P13P14eq HP1P2P3P5P8P11P12P13P14m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P8P11P12P13P14mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP3P5P8P11P12P13P14m2 : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P11P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P11P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P11P12P13P14eq HP1P2P3P5P8P11P12P13P14m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P5 :: nil) 3 1 2 HP1P2P3P5P8P11P12P13P14mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P8P11P12P13P14M1. try clear HP1P2P3P5P8P11P12P13P14M2. try clear HP1P2P3P5P8P11P12P13P14M3. try clear HP1P2P3P5P8P11P12P13P14m4. try clear HP1P2P3P5P8P11P12P13P14m3. try clear HP1P2P3P5P8P11P12P13P14m2. try clear HP1P2P3P5P8P11P12P13P14m1. 

assert(HP3P5P8P11P12P13P14m3 : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P8P11P12P13P14eq : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP2P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P5P8P11P12P13P14mtmp : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P5P8P11P12P13P14eq HP2P3P5P8P11P12P13P14m3).
	try assert(HP3P8eq : rk(P3 :: P8 :: nil) = 2) by (apply LP3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P8mtmp : rk(P3 :: P8 :: nil) >= 2) by (solve_hyps_min HP3P8eq HP3P8m2).
	assert(Hincl : incl (P3 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P2 :: P3 :: P8 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP2P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P3 :: P8 :: nil) 3 2 2 HP2P3P5P8P11P12P13P14mtmp HP3P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}


assert(HP3P5P8P11P12P13P14m4 : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P3P5P8P11P12P13P14eq : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP1P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P8P11P12P13P14mtmp : rk(P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP1P3P5P8P11P12P13P14eq HP1P3P5P8P11P12P13P14m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P11 :: P12 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP1P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P3P5P8P11P12P13P14mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P3P5P8P11P12P13P14M1. try clear HP1P3P5P8P11P12P13P14M2. try clear HP1P3P5P8P11P12P13P14M3. try clear HP1P3P5P8P11P12P13P14m4. try clear HP1P3P5P8P11P12P13P14m3. try clear HP1P3P5P8P11P12P13P14m2. try clear HP1P3P5P8P11P12P13P14m1. 

assert(HP1P2P3P5P8P12P13P14m2 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P8P12P13P14m3 : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8P12P13P14m2 : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P5P8P12P13P14m3 : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P8P12P13P14eq : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P2P3P5P8P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P8P12P13P14mtmp : rk(P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P8P12P13P14eq HP1P2P3P5P8P12P13P14m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P8P12P13P14mtmp;try rewrite HT2 in HP1P2P3P5P8P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P3P5P8P12P13P14mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P3P5P8P12P13P14M1. try clear HP1P2P3P5P8P12P13P14M2. try clear HP1P2P3P5P8P12P13P14M3. try clear HP1P2P3P5P8P12P13P14m4. try clear HP1P2P3P5P8P12P13P14m3. try clear HP1P2P3P5P8P12P13P14m2. try clear HP1P2P3P5P8P12P13P14m1. 

assert(HP5P8P12P13P14m2 : rk(P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P8P12P13P14eq : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP2P3P5P8P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P5P8P12P13P14mtmp : rk(P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P5P8P12P13P14eq HP2P3P5P8P12P13P14m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P2 :: P3 :: P8 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P8P12P13P14mtmp;try rewrite HT2 in HP2P3P5P8P12P13P14mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P8 :: nil) 3 1 2 HP2P3P5P8P12P13P14mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P5P8P12P13P14M1. try clear HP2P3P5P8P12P13P14M2. try clear HP2P3P5P8P12P13P14M3. try clear HP2P3P5P8P12P13P14m4. try clear HP2P3P5P8P12P13P14m3. try clear HP2P3P5P8P12P13P14m2. try clear HP2P3P5P8P12P13P14m1. 

assert(HP5P8P12P13P14m3 : rk(P5 :: P8 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P5P8P11P12P13P14eq : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P5P8P11P12P13P14mtmp : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP3P5P8P11P12P13P14eq HP3P5P8P11P12P13P14m4).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14mtmp : rk(P14 :: nil) >= 1) by (solve_hyps_min HP14eq HP14m1).
	assert(Hincl : incl (P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P3 :: P11 :: P14 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P14 :: nil) 4 1 2 HP3P5P8P11P12P13P14mtmp HP14mtmp HP3P11P14Mtmp Hincl); apply HT.
}


assert(HP5P8P12P13P14M3 : rk(P5 :: P8 :: P12 :: P13 :: P14 :: nil) <= 3).
{
	try assert(HP5P8P12P14eq : rk(P5 :: P8 :: P12 :: P14 :: nil) = 3) by (apply LP5P8P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P8P12P14Mtmp : rk(P5 :: P8 :: P12 :: P14 :: nil) <= 3) by (solve_hyps_max HP5P8P12P14eq HP5P8P12P14M3).
	try assert(HP5P12P13P14eq : rk(P5 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP5P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13P14Mtmp : rk(P5 :: P12 :: P13 :: P14 :: nil) <= 3) by (solve_hyps_max HP5P12P13P14eq HP5P12P13P14M3).
	try assert(HP5P12P14eq : rk(P5 :: P12 :: P14 :: nil) = 3) by (apply LP5P12P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P14mtmp : rk(P5 :: P12 :: P14 :: nil) >= 3) by (solve_hyps_min HP5P12P14eq HP5P12P14m3).
	assert(Hincl : incl (P5 :: P12 :: P14 :: nil) (list_inter (P5 :: P8 :: P12 :: P14 :: nil) (P5 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P5 :: P8 :: P12 :: P14 :: P5 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P8 :: P12 :: P14 :: P5 :: P12 :: P13 :: P14 :: nil) ((P5 :: P8 :: P12 :: P14 :: nil) ++ (P5 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P8 :: P12 :: P14 :: nil) (P5 :: P12 :: P13 :: P14 :: nil) (P5 :: P12 :: P14 :: nil) 3 3 3 HP5P8P12P14Mtmp HP5P12P13P14Mtmp HP5P12P14mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P8P12P14M1. try clear HP5P8P12P14M2. try clear HP5P8P12P14M3. try clear HP5P8P12P14m4. try clear HP5P8P12P14m3. try clear HP5P8P12P14m2. try clear HP5P8P12P14m1. try clear HP5P12P13P14M1. try clear HP5P12P13P14M2. try clear HP5P12P13P14M3. try clear HP5P12P13P14m4. try clear HP5P12P13P14m3. try clear HP5P12P13P14m2. try clear HP5P12P13P14m1. try clear HP5P12P14M1. try clear HP5P12P14M2. try clear HP5P12P14M3. try clear HP5P12P14m4. try clear HP5P12P14m3. try clear HP5P12P14m2. try clear HP5P12P14m1. 

assert(HP1P5P8P11P12P13P14m2 : rk(P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P8P11P12P13P14m3 : rk(P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P5P8eq : rk(P1 :: P5 :: P8 :: nil) = 3) by (apply LP1P5P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5P8mtmp : rk(P1 :: P5 :: P8 :: nil) >= 3) by (solve_hyps_min HP1P5P8eq HP1P5P8m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: P8 :: nil) (P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: P8 :: nil) (P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) 3 3 HP1P5P8mtmp Hcomp Hincl);apply HT.
}
try clear HP1P5P8M1. try clear HP1P5P8M2. try clear HP1P5P8M3. try clear HP1P5P8m4. try clear HP1P5P8m3. try clear HP1P5P8m2. try clear HP1P5P8m1. 

assert(HP5P8P11P12P13P14m2 : rk(P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P5P8P11P12P13P14eq : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP2P3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P5P8P11P12P13P14mtmp : rk(P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP2P3P5P8P11P12P13P14eq HP2P3P5P8P11P12P13P14m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P2 :: P3 :: P8 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP2P3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P8 :: nil) 3 1 2 HP2P3P5P8P11P12P13P14mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P5P8P11P12P13P14M1. try clear HP2P3P5P8P11P12P13P14M2. try clear HP2P3P5P8P11P12P13P14M3. try clear HP2P3P5P8P11P12P13P14m4. try clear HP2P3P5P8P11P12P13P14m3. try clear HP2P3P5P8P11P12P13P14m2. try clear HP2P3P5P8P11P12P13P14m1. 

assert(HP5P8P11P12P13P14m3 : rk(P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P5P8P11P12P13P14eq : rk(P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP1P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P8P11P12P13P14mtmp : rk(P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP1P5P8P11P12P13P14eq HP1P5P8P11P12P13P14m3).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P1 :: P11 :: P12 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P8P11P12P13P14mtmp;try rewrite HT2 in HP1P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P11 :: P12 :: nil) 3 2 2 HP1P5P8P11P12P13P14mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P5P8P11P12P13P14M1. try clear HP1P5P8P11P12P13P14M2. try clear HP1P5P8P11P12P13P14M3. try clear HP1P5P8P11P12P13P14m4. try clear HP1P5P8P11P12P13P14m3. try clear HP1P5P8P11P12P13P14m2. try clear HP1P5P8P11P12P13P14m1. 

assert(HP5P8P11P12P13P14m4 : rk(P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P5P8P11P12P13P14eq : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP3P5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P5P8P11P12P13P14mtmp : rk(P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP3P5P8P11P12P13P14eq HP3P5P8P11P12P13P14m4).
	try assert(HP11P14eq : rk(P11 :: P14 :: nil) = 2) by (apply LP11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P14mtmp : rk(P11 :: P14 :: nil) >= 2) by (solve_hyps_min HP11P14eq HP11P14m2).
	assert(Hincl : incl (P11 :: P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P3 :: P11 :: P14 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P5P8P11P12P13P14mtmp;try rewrite HT2 in HP3P5P8P11P12P13P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P11 :: P14 :: nil) 4 2 2 HP3P5P8P11P12P13P14mtmp HP11P14mtmp HP3P11P14Mtmp Hincl); apply HT.
}
try clear HP3P5P8P11P12P13P14M1. try clear HP3P5P8P11P12P13P14M2. try clear HP3P5P8P11P12P13P14M3. try clear HP3P5P8P11P12P13P14m4. try clear HP3P5P8P11P12P13P14m3. try clear HP3P5P8P11P12P13P14m2. try clear HP3P5P8P11P12P13P14m1. 

assert(HP8P13P14m2 : rk(P8 :: P13 :: P14 :: nil) >= 2).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P8P11P13P14eq : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) = 3) by (apply LP3P8P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P8P11P13P14mtmp : rk(P3 :: P8 :: P11 :: P13 :: P14 :: nil) >= 3) by (solve_hyps_min HP3P8P11P13P14eq HP3P8P11P13P14m3).
	try assert(HP14eq : rk(P14 :: nil) = 1) by (apply LP14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP14mtmp : rk(P14 :: nil) >= 1) by (solve_hyps_min HP14eq HP14m1).
	assert(Hincl : incl (P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P8 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P8 :: P11 :: P13 :: P14 :: nil) (P3 :: P11 :: P14 :: P8 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P8 :: P13 :: P14 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P8 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P8P11P13P14mtmp;try rewrite HT2 in HP3P8P11P13P14mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P8 :: P13 :: P14 :: nil) (P14 :: nil) 3 1 2 HP3P8P11P13P14mtmp HP14mtmp HP3P11P14Mtmp Hincl); apply HT.
}
try clear HP14M1. try clear HP14M2. try clear HP14M3. try clear HP14m4. try clear HP14m3. try clear HP14m2. try clear HP14m1. try clear HP3P8P11P13P14M1. try clear HP3P8P11P13P14M2. try clear HP3P8P11P13P14M3. try clear HP3P8P11P13P14m4. try clear HP3P8P11P13P14m3. try clear HP3P8P11P13P14m2. try clear HP3P8P11P13P14m1. 

assert(HP8P13P14M2 : rk(P8 :: P13 :: P14 :: nil) <= 2).
{
	try assert(HP8P11P13P14eq : rk(P8 :: P11 :: P13 :: P14 :: nil) = 3) by (apply LP8P11P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP8P11P13P14Mtmp : rk(P8 :: P11 :: P13 :: P14 :: nil) <= 3) by (solve_hyps_max HP8P11P13P14eq HP8P11P13P14M3).
	try assert(HP5P8P12P13P14eq : rk(P5 :: P8 :: P12 :: P13 :: P14 :: nil) = 3) by (apply LP5P8P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P8P12P13P14Mtmp : rk(P5 :: P8 :: P12 :: P13 :: P14 :: nil) <= 3) by (solve_hyps_max HP5P8P12P13P14eq HP5P8P12P13P14M3).
	try assert(HP5P8P11P12P13P14eq : rk(P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) = 4) by (apply LP5P8P11P12P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P8P11P12P13P14mtmp : rk(P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) >= 4) by (solve_hyps_min HP5P8P11P12P13P14eq HP5P8P11P12P13P14m4).
	assert(Hincl : incl (P8 :: P13 :: P14 :: nil) (list_inter (P8 :: P11 :: P13 :: P14 :: nil) (P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P8 :: P11 :: P12 :: P13 :: P14 :: nil) (P8 :: P11 :: P13 :: P14 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P8 :: P11 :: P13 :: P14 :: P5 :: P8 :: P12 :: P13 :: P14 :: nil) ((P8 :: P11 :: P13 :: P14 :: nil) ++ (P5 :: P8 :: P12 :: P13 :: P14 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP5P8P11P12P13P14mtmp;try rewrite HT2 in HP5P8P11P12P13P14mtmp.
	assert(HT := rule_3 (P8 :: P11 :: P13 :: P14 :: nil) (P5 :: P8 :: P12 :: P13 :: P14 :: nil) (P8 :: P13 :: P14 :: nil) 3 3 4 HP8P11P13P14Mtmp HP5P8P12P13P14Mtmp HP5P8P11P12P13P14mtmp Hincl);apply HT.
}
try clear HP8P11P13P14M1. try clear HP8P11P13P14M2. try clear HP8P11P13P14M3. try clear HP8P11P13P14m4. try clear HP8P11P13P14m3. try clear HP8P11P13P14m2. try clear HP8P11P13P14m1. try clear HP5P8P12P13P14M1. try clear HP5P8P12P13P14M2. try clear HP5P8P12P13P14M3. try clear HP5P8P12P13P14m4. try clear HP5P8P12P13P14m3. try clear HP5P8P12P13P14m2. try clear HP5P8P12P13P14m1. try clear HP5P8P11P12P13P14M1. try clear HP5P8P11P12P13P14M2. try clear HP5P8P11P12P13P14M3. try clear HP5P8P11P12P13P14m4. try clear HP5P8P11P12P13P14m3. try clear HP5P8P11P12P13P14m2. try clear HP5P8P11P12P13P14m1. 

assert(HP2P3P4P11P13m2 : rk(P2 :: P3 :: P4 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P11 :: P13 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P11P13m3 : rk(P2 :: P3 :: P4 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P11 :: P13 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P11P13m4 : rk(P2 :: P3 :: P4 :: P11 :: P13 :: nil) >= 4).
{
	try assert(HP2P3P4P11eq : rk(P2 :: P3 :: P4 :: P11 :: nil) = 4) by (apply LP2P3P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P11mtmp : rk(P2 :: P3 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP2P3P4P11eq HP2P3P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: P11 :: nil) (P2 :: P3 :: P4 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: P11 :: nil) (P2 :: P3 :: P4 :: P11 :: P13 :: nil) 4 4 HP2P3P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P12P13m2 : rk(P1 :: P2 :: P5 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P12 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P12P13M3 : rk(P1 :: P2 :: P5 :: P12 :: P13 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P12 :: P13 :: nil) (P1 :: P2 :: P5 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P5 :: P12 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P5 :: P12 :: P13 :: nil) (P5 :: nil) 2 2 1 HP1P2P5Mtmp HP5P12P13Mtmp HP5mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P5P12P13m3 : rk(P1 :: P2 :: P5 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P12eq : rk(P1 :: P2 :: P12 :: nil) = 3) by (apply LP1P2P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P12mtmp : rk(P1 :: P2 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P2P12eq HP1P2P12m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P12 :: nil) (P1 :: P2 :: P5 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P12 :: nil) (P1 :: P2 :: P5 :: P12 :: P13 :: nil) 3 3 HP1P2P12mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P12M1. try clear HP1P2P12M2. try clear HP1P2P12M3. try clear HP1P2P12m4. try clear HP1P2P12m3. try clear HP1P2P12m2. try clear HP1P2P12m1. 

assert(HP2P5P12P13M3 : rk(P2 :: P5 :: P12 :: P13 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P12 :: P13 :: nil) (P2 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P5 :: P12 :: P13 :: nil) ((P2 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P5 :: P12 :: P13 :: nil) (nil) 1 2 0 HP2Mtmp HP5P12P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P5P12P13m2 : rk(P2 :: P5 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P12 :: P13 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P12P13m3 : rk(P2 :: P5 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P5P12P13eq : rk(P1 :: P2 :: P5 :: P12 :: P13 :: nil) = 3) by (apply LP1P2P5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12P13mtmp : rk(P1 :: P2 :: P5 :: P12 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P2P5P12P13eq HP1P2P5P12P13m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P12 :: P13 :: nil) (P1 :: P2 :: P5 :: P2 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P5 :: P12 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P5P12P13mtmp;try rewrite HT2 in HP1P2P5P12P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P5 :: P12 :: P13 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P5P12P13mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P5P12P13M1. try clear HP1P2P5P12P13M2. try clear HP1P2P5P12P13M3. try clear HP1P2P5P12P13m4. try clear HP1P2P5P12P13m3. try clear HP1P2P5P12P13m2. try clear HP1P2P5P12P13m1. 

assert(HP2P13m2 : rk(P2 :: P13 :: nil) >= 2).
{
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP2P5P12P13eq : rk(P2 :: P5 :: P12 :: P13 :: nil) = 3) by (apply LP2P5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P5P12P13mtmp : rk(P2 :: P5 :: P12 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P5P12P13eq HP2P5P12P13m3).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P2 :: P13 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P12 :: P13 :: nil) (P2 :: P13 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P13 :: P5 :: P12 :: P13 :: nil) ((P2 :: P13 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P12P13mtmp;try rewrite HT2 in HP2P5P12P13mtmp.
	assert(HT := rule_2 (P2 :: P13 :: nil) (P5 :: P12 :: P13 :: nil) (P13 :: nil) 3 1 2 HP2P5P12P13mtmp HP13mtmp HP5P12P13Mtmp Hincl);apply HT.
}
try clear HP2P5P12P13M1. try clear HP2P5P12P13M2. try clear HP2P5P12P13M3. try clear HP2P5P12P13m4. try clear HP2P5P12P13m3. try clear HP2P5P12P13m2. try clear HP2P5P12P13m1. 

assert(HP2P3P4P13m2 : rk(P2 :: P3 :: P4 :: P13 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P13 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P13m3 : rk(P2 :: P3 :: P4 :: P13 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P13 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P13m4 : rk(P2 :: P3 :: P4 :: P13 :: nil) >= 4).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P3P4P11P13eq : rk(P2 :: P3 :: P4 :: P11 :: P13 :: nil) = 4) by (apply LP2P3P4P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P11P13mtmp : rk(P2 :: P3 :: P4 :: P11 :: P13 :: nil) >= 4) by (solve_hyps_min HP2P3P4P11P13eq HP2P3P4P11P13m4).
	try assert(HP2P13eq : rk(P2 :: P13 :: nil) = 2) by (apply LP2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P13mtmp : rk(P2 :: P13 :: nil) >= 2) by (solve_hyps_min HP2P13eq HP2P13m2).
	assert(Hincl : incl (P2 :: P13 :: nil) (list_inter (P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P11 :: P13 :: nil) (P2 :: P3 :: P4 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P4 :: P13 :: P2 :: P11 :: P13 :: nil) ((P2 :: P3 :: P4 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P11P13mtmp;try rewrite HT2 in HP2P3P4P11P13mtmp.
	assert(HT := rule_2 (P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: P13 :: nil) 4 2 2 HP2P3P4P11P13mtmp HP2P13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P3P4P11P13M1. try clear HP2P3P4P11P13M2. try clear HP2P3P4P11P13M3. try clear HP2P3P4P11P13m4. try clear HP2P3P4P11P13m3. try clear HP2P3P4P11P13m2. try clear HP2P3P4P11P13m1. 

assert(HP2P3P4P8P9P10P13P15m2 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P9P10P13P15m3 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P9P10P13P15m4 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP2P3P4P13eq : rk(P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P13mtmp : rk(P2 :: P3 :: P4 :: P13 :: nil) >= 4) by (solve_hyps_min HP2P3P4P13eq HP2P3P4P13m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) 4 4 HP2P3P4P13mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3P4P13M1. try clear HP2P3P4P13M2. try clear HP2P3P4P13M3. try clear HP2P3P4P13m4. try clear HP2P3P4P13m3. try clear HP2P3P4P13m2. try clear HP2P3P4P13m1. 

assert(HP1P2P3P4P6P13m2 : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P6P13m3 : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P6P13m4 : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P11P13m2 : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P11 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P11P13m3 : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P11 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P11P13m4 : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P11eq : rk(P1 :: P2 :: P3 :: P11 :: nil) = 4) by (apply LP1P2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11mtmp : rk(P1 :: P2 :: P3 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11eq HP1P2P3P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P11 :: nil) (P1 :: P2 :: P3 :: P11 :: P13 :: nil) 4 4 HP1P2P3P11mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P3P11M1. try clear HP1P2P3P11M2. try clear HP1P2P3P11M3. try clear HP1P2P3P11m4. try clear HP1P2P3P11m3. try clear HP1P2P3P11m2. try clear HP1P2P3P11m1. 

assert(HP1P2P3P13m2 : rk(P1 :: P2 :: P3 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P13m3 : rk(P1 :: P2 :: P3 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P13m4 : rk(P1 :: P2 :: P3 :: P13 :: nil) >= 4).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP1P2P3P11P13eq : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) = 4) by (apply LP1P2P3P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11P13mtmp : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11P13eq HP1P2P3P11P13m4).
	try assert(HP2P13eq : rk(P2 :: P13 :: nil) = 2) by (apply LP2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P13mtmp : rk(P2 :: P13 :: nil) >= 2) by (solve_hyps_min HP2P13eq HP2P13m2).
	assert(Hincl : incl (P2 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P11 :: P13 :: nil) (P1 :: P2 :: P3 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P13 :: P2 :: P11 :: P13 :: nil) ((P1 :: P2 :: P3 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P11P13mtmp;try rewrite HT2 in HP1P2P3P11P13mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P3 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: P13 :: nil) 4 2 2 HP1P2P3P11P13mtmp HP2P13mtmp HP2P11P13Mtmp Hincl);apply HT.
}


assert(HP1P2P3P4P13m2 : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P13m3 : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P13m4 : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P6P13m2 : rk(P1 :: P2 :: P3 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P6 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P6P13m3 : rk(P1 :: P2 :: P3 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P6 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P6P13m4 : rk(P1 :: P2 :: P3 :: P6 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4P13eq : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP1P2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P13Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P13eq HP1P2P3P4P13M4).
	try assert(HP1P2P3P4P6P13eq : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) = 4) by (apply LP1P2P3P4P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P6P13mtmp : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P6P13eq HP1P2P3P4P6P13m4).
	try assert(HP1P2P3P13eq : rk(P1 :: P2 :: P3 :: P13 :: nil) = 4) by (apply LP1P2P3P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P13mtmp : rk(P1 :: P2 :: P3 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P13eq HP1P2P3P13m4).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P2 :: P3 :: P6 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P2 :: P3 :: P6 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P2 :: P3 :: P6 :: P13 :: nil) ((P1 :: P2 :: P3 :: P4 :: P13 :: nil) ++ (P1 :: P2 :: P3 :: P6 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P6P13mtmp;try rewrite HT2 in HP1P2P3P4P6P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P2 :: P3 :: P6 :: P13 :: nil) (P1 :: P2 :: P3 :: P13 :: nil) 4 4 4 HP1P2P3P4P6P13mtmp HP1P2P3P13mtmp HP1P2P3P4P13Mtmp Hincl); apply HT.
}


assert(HP1P2P3P6P12m2 : rk(P1 :: P2 :: P3 :: P6 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P6 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P6P12m3 : rk(P1 :: P2 :: P3 :: P6 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P6 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P6P12m4 : rk(P1 :: P2 :: P3 :: P6 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P3P4P12eq : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) = 4) by (apply LP1P2P3P4P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P12Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P12eq HP1P2P3P4P12M4).
	try assert(HP1P2P3P4P6P12eq : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) = 4) by (apply LP1P2P3P4P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P6P12mtmp : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P6P12eq HP1P2P3P4P6P12m4).
	try assert(HP1P2P3P12eq : rk(P1 :: P2 :: P3 :: P12 :: nil) = 4) by (apply LP1P2P3P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P12mtmp : rk(P1 :: P2 :: P3 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P12eq HP1P2P3P12m4).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P12 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P2 :: P3 :: P6 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P6 :: P12 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P2 :: P3 :: P6 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P2 :: P3 :: P6 :: P12 :: nil) ((P1 :: P2 :: P3 :: P4 :: P12 :: nil) ++ (P1 :: P2 :: P3 :: P6 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P6P12mtmp;try rewrite HT2 in HP1P2P3P4P6P12mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P2 :: P3 :: P6 :: P12 :: nil) (P1 :: P2 :: P3 :: P12 :: nil) 4 4 4 HP1P2P3P4P6P12mtmp HP1P2P3P12mtmp HP1P2P3P4P12Mtmp Hincl); apply HT.
}
try clear HP1P2P3P12M1. try clear HP1P2P3P12M2. try clear HP1P2P3P12M3. try clear HP1P2P3P12m4. try clear HP1P2P3P12m3. try clear HP1P2P3P12m2. try clear HP1P2P3P12m1. try clear HP1P2P3P4P6P12M1. try clear HP1P2P3P4P6P12M2. try clear HP1P2P3P4P6P12M3. try clear HP1P2P3P4P6P12m4. try clear HP1P2P3P4P6P12m3. try clear HP1P2P3P4P6P12m2. try clear HP1P2P3P4P6P12m1. 

assert(HP1P2P6P12m2 : rk(P1 :: P2 :: P6 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P12m3 : rk(P1 :: P2 :: P6 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P12 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P12m4 : rk(P1 :: P2 :: P6 :: P12 :: nil) >= 4).
{
	try assert(HP1P3P6P12eq : rk(P1 :: P3 :: P6 :: P12 :: nil) = 3) by (apply LP1P3P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P6P12Mtmp : rk(P1 :: P3 :: P6 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P3P6P12eq HP1P3P6P12M3).
	try assert(HP1P2P3P6P12eq : rk(P1 :: P2 :: P3 :: P6 :: P12 :: nil) = 4) by (apply LP1P2P3P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P6P12mtmp : rk(P1 :: P2 :: P3 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P6P12eq HP1P2P3P6P12m4).
	try assert(HP1P6P12eq : rk(P1 :: P6 :: P12 :: nil) = 3) by (apply LP1P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P6P12mtmp : rk(P1 :: P6 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P6P12eq HP1P6P12m3).
	assert(Hincl : incl (P1 :: P6 :: P12 :: nil) (list_inter (P1 :: P2 :: P6 :: P12 :: nil) (P1 :: P3 :: P6 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P6 :: P12 :: nil) (P1 :: P2 :: P6 :: P12 :: P1 :: P3 :: P6 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P6 :: P12 :: P1 :: P3 :: P6 :: P12 :: nil) ((P1 :: P2 :: P6 :: P12 :: nil) ++ (P1 :: P3 :: P6 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P6P12mtmp;try rewrite HT2 in HP1P2P3P6P12mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P6 :: P12 :: nil) (P1 :: P3 :: P6 :: P12 :: nil) (P1 :: P6 :: P12 :: nil) 4 3 3 HP1P2P3P6P12mtmp HP1P6P12mtmp HP1P3P6P12Mtmp Hincl);apply HT.
}
try clear HP1P3P6P12M1. try clear HP1P3P6P12M2. try clear HP1P3P6P12M3. try clear HP1P3P6P12m4. try clear HP1P3P6P12m3. try clear HP1P3P6P12m2. try clear HP1P3P6P12m1. try clear HP1P6P12M1. try clear HP1P6P12M2. try clear HP1P6P12M3. try clear HP1P6P12m4. try clear HP1P6P12m3. try clear HP1P6P12m2. try clear HP1P6P12m1. try clear HP1P2P3P6P12M1. try clear HP1P2P3P6P12M2. try clear HP1P2P3P6P12M3. try clear HP1P2P3P6P12m4. try clear HP1P2P3P6P12m3. try clear HP1P2P3P6P12m2. try clear HP1P2P3P6P12m1. 

assert(HP1P2P6P11P12P13m2 : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P11P12P13m3 : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P11P12P13m4 : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P6P12eq : rk(P1 :: P2 :: P6 :: P12 :: nil) = 4) by (apply LP1P2P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P12mtmp : rk(P1 :: P2 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P6P12eq HP1P2P6P12m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: P12 :: nil) (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: P12 :: nil) (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) 4 4 HP1P2P6P12mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P11P13m2 : rk(P1 :: P2 :: P6 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P11 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P11P13m3 : rk(P1 :: P2 :: P6 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P11 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P11P13m4 : rk(P1 :: P2 :: P6 :: P11 :: P13 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P2P6P11P12P13eq : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) = 4) by (apply LP1P2P6P11P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P11P12P13mtmp : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P6P11P12P13eq HP1P2P6P11P12P13m4).
	try assert(HP1P11eq : rk(P1 :: P11 :: nil) = 2) by (apply LP1P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11mtmp : rk(P1 :: P11 :: nil) >= 2) by (solve_hyps_min HP1P11eq HP1P11m2).
	assert(Hincl : incl (P1 :: P11 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P1 :: P2 :: P6 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) (P1 :: P11 :: P12 :: P1 :: P2 :: P6 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P1 :: P2 :: P6 :: P11 :: P13 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P1 :: P2 :: P6 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P6P11P12P13mtmp;try rewrite HT2 in HP1P2P6P11P12P13mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P1 :: P2 :: P6 :: P11 :: P13 :: nil) (P1 :: P11 :: nil) 4 2 2 HP1P2P6P11P12P13mtmp HP1P11mtmp HP1P11P12Mtmp Hincl); apply HT.
}


assert(HP1P6P13m2 : rk(P1 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP1P6eq : rk(P1 :: P6 :: nil) = 2) by (apply LP1P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P6mtmp : rk(P1 :: P6 :: nil) >= 2) by (solve_hyps_min HP1P6eq HP1P6m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P6 :: nil) (P1 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P6 :: nil) (P1 :: P6 :: P13 :: nil) 2 2 HP1P6mtmp Hcomp Hincl);apply HT.
}
try clear HP1P6M1. try clear HP1P6M2. try clear HP1P6M3. try clear HP1P6m4. try clear HP1P6m3. try clear HP1P6m2. try clear HP1P6m1. 

assert(HP1P6P13m3 : rk(P1 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP1P2P6P11P13eq : rk(P1 :: P2 :: P6 :: P11 :: P13 :: nil) = 4) by (apply LP1P2P6P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P11P13mtmp : rk(P1 :: P2 :: P6 :: P11 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P6P11P13eq HP1P2P6P11P13m4).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P1 :: P6 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P6 :: P11 :: P13 :: nil) (P1 :: P6 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P6 :: P13 :: P2 :: P11 :: P13 :: nil) ((P1 :: P6 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P6P11P13mtmp;try rewrite HT2 in HP1P2P6P11P13mtmp.
	assert(HT := rule_2 (P1 :: P6 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P13 :: nil) 4 1 2 HP1P2P6P11P13mtmp HP13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP1P2P6P11P13M1. try clear HP1P2P6P11P13M2. try clear HP1P2P6P11P13M3. try clear HP1P2P6P11P13m4. try clear HP1P2P6P11P13m3. try clear HP1P2P6P11P13m2. try clear HP1P2P6P11P13m1. 

assert(HP1P3P13m2 : rk(P1 :: P3 :: P13 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P13 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P13m3 : rk(P1 :: P3 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP1P2P3P11P13eq : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) = 4) by (apply LP1P2P3P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P11P13mtmp : rk(P1 :: P2 :: P3 :: P11 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P11P13eq HP1P2P3P11P13m4).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P1 :: P3 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P11 :: P13 :: nil) (P1 :: P3 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P13 :: P2 :: P11 :: P13 :: nil) ((P1 :: P3 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P11P13mtmp;try rewrite HT2 in HP1P2P3P11P13mtmp.
	assert(HT := rule_2 (P1 :: P3 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P13 :: nil) 4 1 2 HP1P2P3P11P13mtmp HP13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP1P2P3P11P13M1. try clear HP1P2P3P11P13M2. try clear HP1P2P3P11P13M3. try clear HP1P2P3P11P13m4. try clear HP1P2P3P11P13m3. try clear HP1P2P3P11P13m2. try clear HP1P2P3P11P13m1. 

assert(HP1P3P6P13m2 : rk(P1 :: P3 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P6 :: P13 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P3P6P13M3 : rk(P1 :: P3 :: P6 :: P13 :: nil) <= 3).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13Mtmp : rk(P13 :: nil) <= 1) by (solve_hyps_max HP13eq HP13M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P3 :: P6 :: nil) (P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P6 :: P13 :: nil) (P1 :: P3 :: P6 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P13 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P3 :: P6 :: nil) (P13 :: nil) (nil) 2 1 0 HP1P3P6Mtmp HP13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P3P6P13m3 : rk(P1 :: P3 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3P4P13eq : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP1P2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P13Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P13eq HP1P2P3P4P13M4).
	try assert(HP1P2P3P4P6P13eq : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) = 4) by (apply LP1P2P3P4P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P6P13mtmp : rk(P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P6P13eq HP1P2P3P4P6P13m4).
	try assert(HP1P3P13eq : rk(P1 :: P3 :: P13 :: nil) = 3) by (apply LP1P3P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P13mtmp : rk(P1 :: P3 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P3P13eq HP1P3P13m3).
	assert(Hincl : incl (P1 :: P3 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P3 :: P6 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P6 :: P13 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P3 :: P6 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P3 :: P6 :: P13 :: nil) ((P1 :: P2 :: P3 :: P4 :: P13 :: nil) ++ (P1 :: P3 :: P6 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P6P13mtmp;try rewrite HT2 in HP1P2P3P4P6P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P3 :: P6 :: P13 :: nil) (P1 :: P3 :: P13 :: nil) 4 3 4 HP1P2P3P4P6P13mtmp HP1P3P13mtmp HP1P2P3P4P13Mtmp Hincl); apply HT.
}
try clear HP1P3P13M1. try clear HP1P3P13M2. try clear HP1P3P13M3. try clear HP1P3P13m4. try clear HP1P3P13m3. try clear HP1P3P13m2. try clear HP1P3P13m1. try clear HP1P2P3P4P6P13M1. try clear HP1P2P3P4P6P13M2. try clear HP1P2P3P4P6P13M3. try clear HP1P2P3P4P6P13m4. try clear HP1P2P3P4P6P13m3. try clear HP1P2P3P4P6P13m2. try clear HP1P2P3P4P6P13m1. 

assert(HP1P2P6P13m2 : rk(P1 :: P2 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P6 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P13m3 : rk(P1 :: P2 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P6 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P6P13m4 : rk(P1 :: P2 :: P6 :: P13 :: nil) >= 4).
{
	try assert(HP1P3P6P13eq : rk(P1 :: P3 :: P6 :: P13 :: nil) = 3) by (apply LP1P3P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P6P13Mtmp : rk(P1 :: P3 :: P6 :: P13 :: nil) <= 3) by (solve_hyps_max HP1P3P6P13eq HP1P3P6P13M3).
	try assert(HP1P2P3P6P13eq : rk(P1 :: P2 :: P3 :: P6 :: P13 :: nil) = 4) by (apply LP1P2P3P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P6P13mtmp : rk(P1 :: P2 :: P3 :: P6 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P6P13eq HP1P2P3P6P13m4).
	try assert(HP1P6P13eq : rk(P1 :: P6 :: P13 :: nil) = 3) by (apply LP1P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P6P13mtmp : rk(P1 :: P6 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P6P13eq HP1P6P13m3).
	assert(Hincl : incl (P1 :: P6 :: P13 :: nil) (list_inter (P1 :: P2 :: P6 :: P13 :: nil) (P1 :: P3 :: P6 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P6 :: P13 :: nil) (P1 :: P2 :: P6 :: P13 :: P1 :: P3 :: P6 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P6 :: P13 :: P1 :: P3 :: P6 :: P13 :: nil) ((P1 :: P2 :: P6 :: P13 :: nil) ++ (P1 :: P3 :: P6 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P6P13mtmp;try rewrite HT2 in HP1P2P3P6P13mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P6 :: P13 :: nil) (P1 :: P3 :: P6 :: P13 :: nil) (P1 :: P6 :: P13 :: nil) 4 3 3 HP1P2P3P6P13mtmp HP1P6P13mtmp HP1P3P6P13Mtmp Hincl);apply HT.
}
try clear HP1P6P13M1. try clear HP1P6P13M2. try clear HP1P6P13M3. try clear HP1P6P13m4. try clear HP1P6P13m3. try clear HP1P6P13m2. try clear HP1P6P13m1. try clear HP1P2P3P6P13M1. try clear HP1P2P3P6P13M2. try clear HP1P2P3P6P13M3. try clear HP1P2P3P6P13m4. try clear HP1P2P3P6P13m3. try clear HP1P2P3P6P13m2. try clear HP1P2P3P6P13m1. 

assert(HP1P2P5P6P8P13m2 : rk(P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P8P13m3 : rk(P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P8P13m4 : rk(P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P6P13eq : rk(P1 :: P2 :: P6 :: P13 :: nil) = 4) by (apply LP1P2P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P13mtmp : rk(P1 :: P2 :: P6 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P6P13eq HP1P2P6P13m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: P13 :: nil) (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: P13 :: nil) (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) 4 4 HP1P2P6P13mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P11P12P13m2 : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P11P12P13m3 : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P11P12P13m4 : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P6P12eq : rk(P1 :: P2 :: P6 :: P12 :: nil) = 4) by (apply LP1P2P6P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P12mtmp : rk(P1 :: P2 :: P6 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P6P12eq HP1P2P6P12m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: P12 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: P12 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) 4 4 HP1P2P6P12mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P6P12M1. try clear HP1P2P6P12M2. try clear HP1P2P6P12M3. try clear HP1P2P6P12m4. try clear HP1P2P6P12m3. try clear HP1P2P6P12m2. try clear HP1P2P6P12m1. 

assert(HP1P2P5P6P11P13m2 : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P11P13m3 : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P11P13m4 : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P2P5P6P11P12P13eq : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) = 4) by (apply LP1P2P5P6P11P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P6P11P12P13mtmp : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P5P6P11P12P13eq HP1P2P5P6P11P12P13m4).
	try assert(HP1P11eq : rk(P1 :: P11 :: nil) = 2) by (apply LP1P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11mtmp : rk(P1 :: P11 :: nil) >= 2) by (solve_hyps_min HP1P11eq HP1P11m2).
	assert(Hincl : incl (P1 :: P11 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P6 :: P11 :: P12 :: P13 :: nil) (P1 :: P11 :: P12 :: P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P5P6P11P12P13mtmp;try rewrite HT2 in HP1P2P5P6P11P12P13mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) (P1 :: P11 :: nil) 4 2 2 HP1P2P5P6P11P12P13mtmp HP1P11mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P11M1. try clear HP1P11M2. try clear HP1P11M3. try clear HP1P11m4. try clear HP1P11m3. try clear HP1P11m2. try clear HP1P11m1. try clear HP1P2P5P6P11P12P13M1. try clear HP1P2P5P6P11P12P13M2. try clear HP1P2P5P6P11P12P13M3. try clear HP1P2P5P6P11P12P13m4. try clear HP1P2P5P6P11P12P13m3. try clear HP1P2P5P6P11P12P13m2. try clear HP1P2P5P6P11P12P13m1. 

assert(HP2P5P6P11P13m2 : rk(P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P11 :: P13 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6P11P13m3 : rk(P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P5P6eq : rk(P2 :: P5 :: P6 :: nil) = 3) by (apply LP2P5P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P6mtmp : rk(P2 :: P5 :: P6 :: nil) >= 3) by (solve_hyps_min HP2P5P6eq HP2P5P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P11 :: P13 :: nil) 3 3 HP2P5P6mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6P11P13m4 : rk(P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P5P6P11P13eq : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) = 4) by (apply LP1P2P5P6P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P6P11P13mtmp : rk(P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P5P6P11P13eq HP1P2P5P6P11P13m4).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) (P1 :: P2 :: P5 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P5 :: P6 :: P11 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P5 :: P6 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P5P6P11P13mtmp;try rewrite HT2 in HP1P2P5P6P11P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P11 :: P13 :: nil) (P2 :: P5 :: nil) 4 2 2 HP1P2P5P6P11P13mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P5P6P11P13M1. try clear HP1P2P5P6P11P13M2. try clear HP1P2P5P6P11P13M3. try clear HP1P2P5P6P11P13m4. try clear HP1P2P5P6P11P13m3. try clear HP1P2P5P6P11P13m2. try clear HP1P2P5P6P11P13m1. 

assert(HP2P5P6P13m2 : rk(P2 :: P5 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P13 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6P13m3 : rk(P2 :: P5 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP2P5P6eq : rk(P2 :: P5 :: P6 :: nil) = 3) by (apply LP2P5P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P6mtmp : rk(P2 :: P5 :: P6 :: nil) >= 3) by (solve_hyps_min HP2P5P6eq HP2P5P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P13 :: nil) 3 3 HP2P5P6mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6P13m4 : rk(P2 :: P5 :: P6 :: P13 :: nil) >= 4).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P5P6P11P13eq : rk(P2 :: P5 :: P6 :: P11 :: P13 :: nil) = 4) by (apply LP2P5P6P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P5P6P11P13mtmp : rk(P2 :: P5 :: P6 :: P11 :: P13 :: nil) >= 4) by (solve_hyps_min HP2P5P6P11P13eq HP2P5P6P11P13m4).
	try assert(HP2P13eq : rk(P2 :: P13 :: nil) = 2) by (apply LP2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P13mtmp : rk(P2 :: P13 :: nil) >= 2) by (solve_hyps_min HP2P13eq HP2P13m2).
	assert(Hincl : incl (P2 :: P13 :: nil) (list_inter (P2 :: P5 :: P6 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P6 :: P11 :: P13 :: nil) (P2 :: P5 :: P6 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P5 :: P6 :: P13 :: P2 :: P11 :: P13 :: nil) ((P2 :: P5 :: P6 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P6P11P13mtmp;try rewrite HT2 in HP2P5P6P11P13mtmp.
	assert(HT := rule_2 (P2 :: P5 :: P6 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: P13 :: nil) 4 2 2 HP2P5P6P11P13mtmp HP2P13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P5P6P11P13M1. try clear HP2P5P6P11P13M2. try clear HP2P5P6P11P13M3. try clear HP2P5P6P11P13m4. try clear HP2P5P6P11P13m3. try clear HP2P5P6P11P13m2. try clear HP2P5P6P11P13m1. 

assert(HP1P2P5P6P13m2 : rk(P1 :: P2 :: P5 :: P6 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P6P13m3 : rk(P1 :: P2 :: P5 :: P6 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P6eq : rk(P1 :: P2 :: P6 :: nil) = 3) by (apply LP1P2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P6mtmp : rk(P1 :: P2 :: P6 :: nil) >= 3) by (solve_hyps_min HP1P2P6eq HP1P2P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: nil) 3 3 HP1P2P6mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P6M1. try clear HP1P2P6M2. try clear HP1P2P6M3. try clear HP1P2P6m4. try clear HP1P2P6m3. try clear HP1P2P6m2. try clear HP1P2P6m1. 

assert(HP1P2P5P6P13m4 : rk(P1 :: P2 :: P5 :: P6 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P6P13eq : rk(P1 :: P2 :: P6 :: P13 :: nil) = 4) by (apply LP1P2P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P13mtmp : rk(P1 :: P2 :: P6 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P6P13eq HP1P2P6P13m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P6 :: P13 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P6 :: P13 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: nil) 4 4 HP1P2P6P13mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P6P13M1. try clear HP1P2P6P13M2. try clear HP1P2P6P13M3. try clear HP1P2P6P13m4. try clear HP1P2P6P13m3. try clear HP1P2P6P13m2. try clear HP1P2P6P13m1. 

assert(HP2P5P6P8P13m2 : rk(P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P6 :: P8 :: P13 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P6P8P13m3 : rk(P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP2P5P6eq : rk(P2 :: P5 :: P6 :: nil) = 3) by (apply LP2P5P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5P6mtmp : rk(P2 :: P5 :: P6 :: nil) >= 3) by (solve_hyps_min HP2P5P6eq HP2P5P6m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: P6 :: nil) (P2 :: P5 :: P6 :: P8 :: P13 :: nil) 3 3 HP2P5P6mtmp Hcomp Hincl);apply HT.
}
try clear HP2P5P6M1. try clear HP2P5P6M2. try clear HP2P5P6M3. try clear HP2P5P6m4. try clear HP2P5P6m3. try clear HP2P5P6m2. try clear HP2P5P6m1. 

assert(HP2P5P6P8P13m4 : rk(P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P5P6P13eq : rk(P1 :: P2 :: P5 :: P6 :: P13 :: nil) = 4) by (apply LP1P2P5P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P6P13Mtmp : rk(P1 :: P2 :: P5 :: P6 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P5P6P13eq HP1P2P5P6P13M4).
	try assert(HP1P2P5P6P8P13eq : rk(P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) = 4) by (apply LP1P2P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P6P8P13mtmp : rk(P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P5P6P8P13eq HP1P2P5P6P8P13m4).
	try assert(HP2P5P6P13eq : rk(P2 :: P5 :: P6 :: P13 :: nil) = 4) by (apply LP2P5P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P5P6P13mtmp : rk(P2 :: P5 :: P6 :: P13 :: nil) >= 4) by (solve_hyps_min HP2P5P6P13eq HP2P5P6P13m4).
	assert(Hincl : incl (P2 :: P5 :: P6 :: P13 :: nil) (list_inter (P1 :: P2 :: P5 :: P6 :: P13 :: nil) (P2 :: P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P2 :: P5 :: P6 :: P13 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P6 :: P13 :: P2 :: P5 :: P6 :: P8 :: P13 :: nil) ((P1 :: P2 :: P5 :: P6 :: P13 :: nil) ++ (P2 :: P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P5P6P8P13mtmp;try rewrite HT2 in HP1P2P5P6P8P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P6 :: P13 :: nil) (P2 :: P5 :: P6 :: P8 :: P13 :: nil) (P2 :: P5 :: P6 :: P13 :: nil) 4 4 4 HP1P2P5P6P8P13mtmp HP2P5P6P13mtmp HP1P2P5P6P13Mtmp Hincl); apply HT.
}
try clear HP1P2P5P6P13M1. try clear HP1P2P5P6P13M2. try clear HP1P2P5P6P13M3. try clear HP1P2P5P6P13m4. try clear HP1P2P5P6P13m3. try clear HP1P2P5P6P13m2. try clear HP1P2P5P6P13m1. try clear HP2P5P6P13M1. try clear HP2P5P6P13M2. try clear HP2P5P6P13M3. try clear HP2P5P6P13m4. try clear HP2P5P6P13m3. try clear HP2P5P6P13m2. try clear HP2P5P6P13m1. try clear HP1P2P5P6P8P13M1. try clear HP1P2P5P6P8P13M2. try clear HP1P2P5P6P8P13M3. try clear HP1P2P5P6P8P13m4. try clear HP1P2P5P6P8P13m3. try clear HP1P2P5P6P8P13m2. try clear HP1P2P5P6P8P13m1. 

assert(HP2P8P11P13M3 : rk(P2 :: P8 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8Mtmp : rk(P8 :: nil) <= 1) by (solve_hyps_max HP8eq HP8M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P8 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P8 :: P11 :: P13 :: nil) (P8 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P8 :: P2 :: P11 :: P13 :: nil) ((P8 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P8 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP8Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P8P11P13m2 : rk(P2 :: P8 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P8 :: nil) (P2 :: P8 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P8 :: nil) (P2 :: P8 :: P11 :: P13 :: nil) 2 2 HP2P8mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P11P13m3 : rk(P2 :: P8 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P8P11P13eq : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) = 3) by (apply LP2P3P8P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P11P13mtmp : rk(P2 :: P3 :: P8 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P3P8P11P13eq HP2P3P8P11P13m3).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P8 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P11 :: P13 :: nil) (P2 :: P3 :: P8 :: P2 :: P8 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P8 :: P11 :: P13 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P8 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P8P11P13mtmp;try rewrite HT2 in HP2P3P8P11P13mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P8 :: P11 :: P13 :: nil) (P2 :: P8 :: nil) 3 2 2 HP2P3P8P11P13mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P8P11P13M1. try clear HP2P3P8P11P13M2. try clear HP2P3P8P11P13M3. try clear HP2P3P8P11P13m4. try clear HP2P3P8P11P13m3. try clear HP2P3P8P11P13m2. try clear HP2P3P8P11P13m1. 

assert(HP8P13m2 : rk(P8 :: P13 :: nil) >= 2).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P8P11P13eq : rk(P2 :: P8 :: P11 :: P13 :: nil) = 3) by (apply LP2P8P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P8P11P13mtmp : rk(P2 :: P8 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P8P11P13eq HP2P8P11P13m3).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P8 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P8 :: P11 :: P13 :: nil) (P8 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P8 :: P13 :: P2 :: P11 :: P13 :: nil) ((P8 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P8P11P13mtmp;try rewrite HT2 in HP2P8P11P13mtmp.
	assert(HT := rule_2 (P8 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P13 :: nil) 3 1 2 HP2P8P11P13mtmp HP13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P8P11P13M1. try clear HP2P8P11P13M2. try clear HP2P8P11P13M3. try clear HP2P8P11P13m4. try clear HP2P8P11P13m3. try clear HP2P8P11P13m2. try clear HP2P8P11P13m1. 

assert(HP1P2P3P4P5P6P8P13m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P8P13m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P6P8P13m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P8P13m2 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P8P13m3 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P5P6P8P13m4 : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4P13eq : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP1P2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P13Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P13eq HP1P2P3P4P13M4).
	try assert(HP1P2P3P4P5P6P8P13eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) = 4) by (apply LP1P2P3P4P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P5P6P8P13mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P6P8P13eq HP1P2P3P4P5P6P8P13m4).
	try assert(HP1P2P3P13eq : rk(P1 :: P2 :: P3 :: P13 :: nil) = 4) by (apply LP1P2P3P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P13mtmp : rk(P1 :: P2 :: P3 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P13eq HP1P2P3P13m4).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) ((P1 :: P2 :: P3 :: P4 :: P13 :: nil) ++ (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P6P8P13mtmp;try rewrite HT2 in HP1P2P3P4P5P6P8P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P2 :: P3 :: P13 :: nil) 4 4 4 HP1P2P3P4P5P6P8P13mtmp HP1P2P3P13mtmp HP1P2P3P4P13Mtmp Hincl); apply HT.
}
try clear HP1P2P3P13M1. try clear HP1P2P3P13M2. try clear HP1P2P3P13M3. try clear HP1P2P3P13m4. try clear HP1P2P3P13m3. try clear HP1P2P3P13m2. try clear HP1P2P3P13m1. try clear HP1P2P3P4P5P6P8P13M1. try clear HP1P2P3P4P5P6P8P13M2. try clear HP1P2P3P4P5P6P8P13M3. try clear HP1P2P3P4P5P6P8P13m4. try clear HP1P2P3P4P5P6P8P13m3. try clear HP1P2P3P4P5P6P8P13m2. try clear HP1P2P3P4P5P6P8P13m1. 

assert(HP1P5P12P13M3 : rk(P1 :: P5 :: P12 :: P13 :: nil) <= 3).
{
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1Mtmp : rk(P1 :: nil) <= 1) by (solve_hyps_max HP1eq HP1M1).
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P12 :: P13 :: nil) (P1 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P12 :: P13 :: nil) ((P1 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: nil) (P5 :: P12 :: P13 :: nil) (nil) 1 2 0 HP1Mtmp HP5P12P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P5P12P13m2 : rk(P1 :: P5 :: P12 :: P13 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P12 :: P13 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P12P13m3 : rk(P1 :: P5 :: P12 :: P13 :: nil) >= 3).
{
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (P1 :: P5 :: P12 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: P12 :: nil) (P1 :: P5 :: P12 :: P13 :: nil) 3 3 HP1P5P12mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P11P13m2 : rk(P1 :: P2 :: P5 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P11 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P11P13M3 : rk(P1 :: P2 :: P5 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2mtmp : rk(P2 :: nil) >= 1) by (solve_hyps_min HP2eq HP2m1).
	assert(Hincl : incl (P2 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P11 :: P13 :: nil) (P1 :: P2 :: P5 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P11 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: nil) 2 2 1 HP1P2P5Mtmp HP2P11P13Mtmp HP2mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P5P11P13m3 : rk(P1 :: P2 :: P5 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P11eq : rk(P1 :: P2 :: P11 :: nil) = 3) by (apply LP1P2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P11mtmp : rk(P1 :: P2 :: P11 :: nil) >= 3) by (solve_hyps_min HP1P2P11eq HP1P2P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P11 :: nil) (P1 :: P2 :: P5 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P11 :: nil) (P1 :: P2 :: P5 :: P11 :: P13 :: nil) 3 3 HP1P2P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P11P13M3 : rk(P2 :: P5 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5Mtmp : rk(P5 :: nil) <= 1) by (solve_hyps_max HP5eq HP5M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P11 :: P13 :: nil) (P5 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P2 :: P11 :: P13 :: nil) ((P5 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP5Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P5P11P13m2 : rk(P2 :: P5 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P5 :: nil) (P2 :: P5 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P5 :: nil) (P2 :: P5 :: P11 :: P13 :: nil) 2 2 HP2P5mtmp Hcomp Hincl);apply HT.
}


assert(HP2P5P11P13m3 : rk(P2 :: P5 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P5P11P13eq : rk(P1 :: P2 :: P5 :: P11 :: P13 :: nil) = 3) by (apply LP1P2P5P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P11P13mtmp : rk(P1 :: P2 :: P5 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P2P5P11P13eq HP1P2P5P11P13m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P5 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P11 :: P13 :: nil) (P1 :: P2 :: P5 :: P2 :: P5 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P5 :: P11 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P5 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P5P11P13mtmp;try rewrite HT2 in HP1P2P5P11P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P5 :: P11 :: P13 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P5P11P13mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P5P11P13M1. try clear HP1P2P5P11P13M2. try clear HP1P2P5P11P13M3. try clear HP1P2P5P11P13m4. try clear HP1P2P5P11P13m3. try clear HP1P2P5P11P13m2. try clear HP1P2P5P11P13m1. 

assert(HP5P13m2 : rk(P5 :: P13 :: nil) >= 2).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P5P11P13eq : rk(P2 :: P5 :: P11 :: P13 :: nil) = 3) by (apply LP2P5P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P5P11P13mtmp : rk(P2 :: P5 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P5P11P13eq HP2P5P11P13m3).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P5 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P11 :: P13 :: nil) (P5 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P13 :: P2 :: P11 :: P13 :: nil) ((P5 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P11P13mtmp;try rewrite HT2 in HP2P5P11P13mtmp.
	assert(HT := rule_2 (P5 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P13 :: nil) 3 1 2 HP2P5P11P13mtmp HP13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P5P11P13M1. try clear HP2P5P11P13M2. try clear HP2P5P11P13M3. try clear HP2P5P11P13m4. try clear HP2P5P11P13m3. try clear HP2P5P11P13m2. try clear HP2P5P11P13m1. 

assert(HP1P5P13m2 : rk(P1 :: P5 :: P13 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P13 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}


assert(HP1P5P13m3 : rk(P1 :: P5 :: P13 :: nil) >= 3).
{
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP1P5P12P13eq : rk(P1 :: P5 :: P12 :: P13 :: nil) = 3) by (apply LP1P5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12P13mtmp : rk(P1 :: P5 :: P12 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P5P12P13eq HP1P5P12P13m3).
	try assert(HP5P13eq : rk(P5 :: P13 :: nil) = 2) by (apply LP5P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P13mtmp : rk(P5 :: P13 :: nil) >= 2) by (solve_hyps_min HP5P13eq HP5P13m2).
	assert(Hincl : incl (P5 :: P13 :: nil) (list_inter (P1 :: P5 :: P13 :: nil) (P5 :: P12 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P12 :: P13 :: nil) (P1 :: P5 :: P13 :: P5 :: P12 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P13 :: P5 :: P12 :: P13 :: nil) ((P1 :: P5 :: P13 :: nil) ++ (P5 :: P12 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P12P13mtmp;try rewrite HT2 in HP1P5P12P13mtmp.
	assert(HT := rule_2 (P1 :: P5 :: P13 :: nil) (P5 :: P12 :: P13 :: nil) (P5 :: P13 :: nil) 3 2 2 HP1P5P12P13mtmp HP5P13mtmp HP5P12P13Mtmp Hincl);apply HT.
}
try clear HP5P13M1. try clear HP5P13M2. try clear HP5P13M3. try clear HP5P13m4. try clear HP5P13m3. try clear HP5P13m2. try clear HP5P13m1. try clear HP1P5P12P13M1. try clear HP1P5P12P13M2. try clear HP1P5P12P13M3. try clear HP1P5P12P13m4. try clear HP1P5P12P13m3. try clear HP1P5P12P13m2. try clear HP1P5P12P13m1. 

assert(HP1P2P3P4P5P13m2 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P13m3 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P5P13m4 : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P11P13M3 : rk(P1 :: P2 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1Mtmp : rk(P1 :: nil) <= 1) by (solve_hyps_max HP1eq HP1M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P11 :: P13 :: nil) (P1 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P11 :: P13 :: nil) ((P1 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP1Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P11P13m2 : rk(P1 :: P2 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P11 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P11P13m3 : rk(P1 :: P2 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P11eq : rk(P1 :: P2 :: P11 :: nil) = 3) by (apply LP1P2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P11mtmp : rk(P1 :: P2 :: P11 :: nil) >= 3) by (solve_hyps_min HP1P2P11eq HP1P2P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P11 :: nil) (P1 :: P2 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P11 :: nil) (P1 :: P2 :: P11 :: P13 :: nil) 3 3 HP1P2P11mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P11M1. try clear HP1P2P11M2. try clear HP1P2P11M3. try clear HP1P2P11m4. try clear HP1P2P11m3. try clear HP1P2P11m2. try clear HP1P2P11m1. 

assert(HP1P2P13m2 : rk(P1 :: P2 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P13m3 : rk(P1 :: P2 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP1P2P11P13eq : rk(P1 :: P2 :: P11 :: P13 :: nil) = 3) by (apply LP1P2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P11P13mtmp : rk(P1 :: P2 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P2P11P13eq HP1P2P11P13m3).
	try assert(HP2P13eq : rk(P2 :: P13 :: nil) = 2) by (apply LP2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P13mtmp : rk(P2 :: P13 :: nil) >= 2) by (solve_hyps_min HP2P13eq HP2P13m2).
	assert(Hincl : incl (P2 :: P13 :: nil) (list_inter (P1 :: P2 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P11 :: P13 :: nil) (P1 :: P2 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P13 :: P2 :: P11 :: P13 :: nil) ((P1 :: P2 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P11P13mtmp;try rewrite HT2 in HP1P2P11P13mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: P13 :: nil) 3 2 2 HP1P2P11P13mtmp HP2P13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP1P2P11P13M1. try clear HP1P2P11P13M2. try clear HP1P2P11P13M3. try clear HP1P2P11P13m4. try clear HP1P2P11P13m3. try clear HP1P2P11P13m2. try clear HP1P2P11P13m1. 

assert(HP1P2P5P13m2 : rk(P1 :: P2 :: P5 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P5 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P5P13M3 : rk(P1 :: P2 :: P5 :: P13 :: nil) <= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13Mtmp : rk(P13 :: nil) <= 1) by (solve_hyps_max HP13eq HP13M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P2 :: P5 :: nil) (P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P5 :: P13 :: nil) (P1 :: P2 :: P5 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P2 :: P5 :: nil) (P13 :: nil) (nil) 2 1 0 HP1P2P5Mtmp HP13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP1P2P5P13m3 : rk(P1 :: P2 :: P5 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3P4P13eq : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP1P2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P13Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P13eq HP1P2P3P4P13M4).
	try assert(HP1P2P3P4P5P13eq : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) = 4) by (apply LP1P2P3P4P5P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P5P13mtmp : rk(P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P5P13eq HP1P2P3P4P5P13m4).
	try assert(HP1P2P13eq : rk(P1 :: P2 :: P13 :: nil) = 3) by (apply LP1P2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P13mtmp : rk(P1 :: P2 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P2P13eq HP1P2P13m3).
	assert(Hincl : incl (P1 :: P2 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P2 :: P5 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P5 :: P13 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P2 :: P5 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P13 :: P1 :: P2 :: P5 :: P13 :: nil) ((P1 :: P2 :: P3 :: P4 :: P13 :: nil) ++ (P1 :: P2 :: P5 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P5P13mtmp;try rewrite HT2 in HP1P2P3P4P5P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P1 :: P2 :: P5 :: P13 :: nil) (P1 :: P2 :: P13 :: nil) 4 3 4 HP1P2P3P4P5P13mtmp HP1P2P13mtmp HP1P2P3P4P13Mtmp Hincl); apply HT.
}
try clear HP1P2P13M1. try clear HP1P2P13M2. try clear HP1P2P13M3. try clear HP1P2P13m4. try clear HP1P2P13m3. try clear HP1P2P13m2. try clear HP1P2P13m1. try clear HP1P2P3P4P5P13M1. try clear HP1P2P3P4P5P13M2. try clear HP1P2P3P4P5P13M3. try clear HP1P2P3P4P5P13m4. try clear HP1P2P3P4P5P13m3. try clear HP1P2P3P4P5P13m2. try clear HP1P2P3P4P5P13m1. 

assert(HP1P3P5P6P8P13m2 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP1P3eq : rk(P1 :: P3 :: nil) = 2) by (apply LP1P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3mtmp : rk(P1 :: P3 :: nil) >= 2) by (solve_hyps_min HP1P3eq HP1P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P3 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) 2 2 HP1P3mtmp Hcomp Hincl);apply HT.
}
try clear HP1P3M1. try clear HP1P3M2. try clear HP1P3M3. try clear HP1P3m4. try clear HP1P3m3. try clear HP1P3m2. try clear HP1P3m1. 

assert(HP1P3P5P6P8P13m3 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P3P5P6P8P13eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) = 3) by (apply LP1P2P3P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P6P8P13mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P2P3P5P6P8P13eq HP1P2P3P5P6P8P13m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P8P13mtmp;try rewrite HT2 in HP1P2P3P5P6P8P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P3P5P6P8P13mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P3P5P6P8P13m4 : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P5P13eq : rk(P1 :: P2 :: P5 :: P13 :: nil) = 3) by (apply LP1P2P5P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P13Mtmp : rk(P1 :: P2 :: P5 :: P13 :: nil) <= 3) by (solve_hyps_max HP1P2P5P13eq HP1P2P5P13M3).
	try assert(HP1P2P3P5P6P8P13eq : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) = 4) by (apply LP1P2P3P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P5P6P8P13mtmp : rk(P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P5P6P8P13eq HP1P2P3P5P6P8P13m4).
	try assert(HP1P5P13eq : rk(P1 :: P5 :: P13 :: nil) = 3) by (apply LP1P5P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P13mtmp : rk(P1 :: P5 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P5P13eq HP1P5P13m3).
	assert(Hincl : incl (P1 :: P5 :: P13 :: nil) (list_inter (P1 :: P2 :: P5 :: P13 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P2 :: P5 :: P13 :: P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P13 :: P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) ((P1 :: P2 :: P5 :: P13 :: nil) ++ (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P5P6P8P13mtmp;try rewrite HT2 in HP1P2P3P5P6P8P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P13 :: nil) (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P5 :: P13 :: nil) 4 3 3 HP1P2P3P5P6P8P13mtmp HP1P5P13mtmp HP1P2P5P13Mtmp Hincl); apply HT.
}
try clear HP1P2P5P13M1. try clear HP1P2P5P13M2. try clear HP1P2P5P13M3. try clear HP1P2P5P13m4. try clear HP1P2P5P13m3. try clear HP1P2P5P13m2. try clear HP1P2P5P13m1. try clear HP1P5P13M1. try clear HP1P5P13M2. try clear HP1P5P13M3. try clear HP1P5P13m4. try clear HP1P5P13m3. try clear HP1P5P13m2. try clear HP1P5P13m1. try clear HP1P2P3P5P6P8P13M1. try clear HP1P2P3P5P6P8P13M2. try clear HP1P2P3P5P6P8P13M3. try clear HP1P2P3P5P6P8P13m4. try clear HP1P2P3P5P6P8P13m3. try clear HP1P2P3P5P6P8P13m2. try clear HP1P2P3P5P6P8P13m1. 

assert(HP2P6P11P13M3 : rk(P2 :: P6 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6Mtmp : rk(P6 :: nil) <= 1) by (solve_hyps_max HP6eq HP6M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P6 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P6 :: P11 :: P13 :: nil) (P6 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P6 :: P2 :: P11 :: P13 :: nil) ((P6 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P6 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP6Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P6P11P13m2 : rk(P2 :: P6 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P6eq : rk(P2 :: P6 :: nil) = 2) by (apply LP2P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P6mtmp : rk(P2 :: P6 :: nil) >= 2) by (solve_hyps_min HP2P6eq HP2P6m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P6 :: nil) (P2 :: P6 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P6 :: nil) (P2 :: P6 :: P11 :: P13 :: nil) 2 2 HP2P6mtmp Hcomp Hincl);apply HT.
}
try clear HP2P6M1. try clear HP2P6M2. try clear HP2P6M3. try clear HP2P6m4. try clear HP2P6m3. try clear HP2P6m2. try clear HP2P6m1. 

assert(HP2P6P11P13m3 : rk(P2 :: P6 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P2P6P11P12P13eq : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) = 4) by (apply LP1P2P6P11P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P6P11P12P13mtmp : rk(P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P6P11P12P13eq HP1P2P6P11P12P13m4).
	try assert(HP11eq : rk(P11 :: nil) = 1) by (apply LP11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11mtmp : rk(P11 :: nil) >= 1) by (solve_hyps_min HP11eq HP11m1).
	assert(Hincl : incl (P11 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P2 :: P6 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P6 :: P11 :: P12 :: P13 :: nil) (P1 :: P11 :: P12 :: P2 :: P6 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P2 :: P6 :: P11 :: P13 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P2 :: P6 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P6P11P12P13mtmp;try rewrite HT2 in HP1P2P6P11P12P13mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P2 :: P6 :: P11 :: P13 :: nil) (P11 :: nil) 4 1 2 HP1P2P6P11P12P13mtmp HP11mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P2P6P11P12P13M1. try clear HP1P2P6P11P12P13M2. try clear HP1P2P6P11P12P13M3. try clear HP1P2P6P11P12P13m4. try clear HP1P2P6P11P12P13m3. try clear HP1P2P6P11P12P13m2. try clear HP1P2P6P11P12P13m1. 

assert(HP6P13m2 : rk(P6 :: P13 :: nil) >= 2).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P6P11P13eq : rk(P2 :: P6 :: P11 :: P13 :: nil) = 3) by (apply LP2P6P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P6P11P13mtmp : rk(P2 :: P6 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P6P11P13eq HP2P6P11P13m3).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P6 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P6 :: P11 :: P13 :: nil) (P6 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P6 :: P13 :: P2 :: P11 :: P13 :: nil) ((P6 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P6P11P13mtmp;try rewrite HT2 in HP2P6P11P13mtmp.
	assert(HT := rule_2 (P6 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P13 :: nil) 3 1 2 HP2P6P11P13mtmp HP13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P6P11P13M1. try clear HP2P6P11P13M2. try clear HP2P6P11P13M3. try clear HP2P6P11P13m4. try clear HP2P6P11P13m3. try clear HP2P6P11P13m2. try clear HP2P6P11P13m1. 

assert(HP5P6P8P13m2 : rk(P5 :: P6 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP1P3P6eq : rk(P1 :: P3 :: P6 :: nil) = 2) by (apply LP1P3P6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P3P6Mtmp : rk(P1 :: P3 :: P6 :: nil) <= 2) by (solve_hyps_max HP1P3P6eq HP1P3P6M2).
	try assert(HP1P3P5P6P8P13eq : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) = 3) by (apply LP1P3P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P6P8P13mtmp : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 3) by (solve_hyps_min HP1P3P5P6P8P13eq HP1P3P5P6P8P13m3).
	try assert(HP6eq : rk(P6 :: nil) = 1) by (apply LP6 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP6mtmp : rk(P6 :: nil) >= 1) by (solve_hyps_min HP6eq HP6m1).
	assert(Hincl : incl (P6 :: nil) (list_inter (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P3 :: P6 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P5 :: P6 :: P8 :: P13 :: nil) ((P1 :: P3 :: P6 :: nil) ++ (P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P8P13mtmp;try rewrite HT2 in HP1P3P5P6P8P13mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: nil) (P5 :: P6 :: P8 :: P13 :: nil) (P6 :: nil) 3 1 2 HP1P3P5P6P8P13mtmp HP6mtmp HP1P3P6Mtmp Hincl); apply HT.
}
try clear HP1P3P6M1. try clear HP1P3P6M2. try clear HP1P3P6M3. try clear HP1P3P6m4. try clear HP1P3P6m3. try clear HP1P3P6m2. try clear HP1P3P6m1. try clear HP6M1. try clear HP6M2. try clear HP6M3. try clear HP6m4. try clear HP6m3. try clear HP6m2. try clear HP6m1. 

assert(HP5P6P8P13M3 : rk(P5 :: P6 :: P8 :: P13 :: nil) <= 3).
{
	try assert(HP5P6P8eq : rk(P5 :: P6 :: P8 :: nil) = 2) by (apply LP5P6P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P6P8Mtmp : rk(P5 :: P6 :: P8 :: nil) <= 2) by (solve_hyps_max HP5P6P8eq HP5P6P8M2).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13Mtmp : rk(P13 :: nil) <= 1) by (solve_hyps_max HP13eq HP13M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: P6 :: P8 :: nil) (P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P6 :: P8 :: P13 :: nil) (P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P6 :: P8 :: P13 :: nil) ((P5 :: P6 :: P8 :: nil) ++ (P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P6 :: P8 :: nil) (P13 :: nil) (nil) 2 1 0 HP5P6P8Mtmp HP13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P6P8M1. try clear HP5P6P8M2. try clear HP5P6P8M3. try clear HP5P6P8m4. try clear HP5P6P8m3. try clear HP5P6P8m2. try clear HP5P6P8m1. 

assert(HP5P6P8P13m3 : rk(P5 :: P6 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P3P6P13eq : rk(P1 :: P3 :: P6 :: P13 :: nil) = 3) by (apply LP1P3P6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P6P13Mtmp : rk(P1 :: P3 :: P6 :: P13 :: nil) <= 3) by (solve_hyps_max HP1P3P6P13eq HP1P3P6P13M3).
	try assert(HP1P3P5P6P8P13eq : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) = 4) by (apply LP1P3P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P3P5P6P8P13mtmp : rk(P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P3P5P6P8P13eq HP1P3P5P6P8P13m4).
	try assert(HP6P13eq : rk(P6 :: P13 :: nil) = 2) by (apply LP6P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP6P13mtmp : rk(P6 :: P13 :: nil) >= 2) by (solve_hyps_min HP6P13eq HP6P13m2).
	assert(Hincl : incl (P6 :: P13 :: nil) (list_inter (P1 :: P3 :: P6 :: P13 :: nil) (P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P3 :: P5 :: P6 :: P8 :: P13 :: nil) (P1 :: P3 :: P6 :: P13 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P3 :: P6 :: P13 :: P5 :: P6 :: P8 :: P13 :: nil) ((P1 :: P3 :: P6 :: P13 :: nil) ++ (P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P3P5P6P8P13mtmp;try rewrite HT2 in HP1P3P5P6P8P13mtmp.
	assert(HT := rule_4 (P1 :: P3 :: P6 :: P13 :: nil) (P5 :: P6 :: P8 :: P13 :: nil) (P6 :: P13 :: nil) 4 2 3 HP1P3P5P6P8P13mtmp HP6P13mtmp HP1P3P6P13Mtmp Hincl); apply HT.
}
try clear HP1P3P6P13M1. try clear HP1P3P6P13M2. try clear HP1P3P6P13M3. try clear HP1P3P6P13m4. try clear HP1P3P6P13m3. try clear HP1P3P6P13m2. try clear HP1P3P6P13m1. try clear HP6P13M1. try clear HP6P13M2. try clear HP6P13M3. try clear HP6P13m4. try clear HP6P13m3. try clear HP6P13m2. try clear HP6P13m1. try clear HP1P3P5P6P8P13M1. try clear HP1P3P5P6P8P13M2. try clear HP1P3P5P6P8P13M3. try clear HP1P3P5P6P8P13m4. try clear HP1P3P5P6P8P13m3. try clear HP1P3P5P6P8P13m2. try clear HP1P3P5P6P8P13m1. 

assert(HP2P8P13m2 : rk(P2 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P8 :: nil) (P2 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P8 :: nil) (P2 :: P8 :: P13 :: nil) 2 2 HP2P8mtmp Hcomp Hincl);apply HT.
}


assert(HP2P8P13m3 : rk(P2 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP5P6P8P13eq : rk(P5 :: P6 :: P8 :: P13 :: nil) = 3) by (apply LP5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P6P8P13Mtmp : rk(P5 :: P6 :: P8 :: P13 :: nil) <= 3) by (solve_hyps_max HP5P6P8P13eq HP5P6P8P13M3).
	try assert(HP2P5P6P8P13eq : rk(P2 :: P5 :: P6 :: P8 :: P13 :: nil) = 4) by (apply LP2P5P6P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P5P6P8P13mtmp : rk(P2 :: P5 :: P6 :: P8 :: P13 :: nil) >= 4) by (solve_hyps_min HP2P5P6P8P13eq HP2P5P6P8P13m4).
	try assert(HP8P13eq : rk(P8 :: P13 :: nil) = 2) by (apply LP8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP8P13mtmp : rk(P8 :: P13 :: nil) >= 2) by (solve_hyps_min HP8P13eq HP8P13m2).
	assert(Hincl : incl (P8 :: P13 :: nil) (list_inter (P2 :: P8 :: P13 :: nil) (P5 :: P6 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P5 :: P6 :: P8 :: P13 :: nil) (P2 :: P8 :: P13 :: P5 :: P6 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P8 :: P13 :: P5 :: P6 :: P8 :: P13 :: nil) ((P2 :: P8 :: P13 :: nil) ++ (P5 :: P6 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P5P6P8P13mtmp;try rewrite HT2 in HP2P5P6P8P13mtmp.
	assert(HT := rule_2 (P2 :: P8 :: P13 :: nil) (P5 :: P6 :: P8 :: P13 :: nil) (P8 :: P13 :: nil) 4 2 3 HP2P5P6P8P13mtmp HP8P13mtmp HP5P6P8P13Mtmp Hincl);apply HT.
}
try clear HP5P6P8P13M1. try clear HP5P6P8P13M2. try clear HP5P6P8P13M3. try clear HP5P6P8P13m4. try clear HP5P6P8P13m3. try clear HP5P6P8P13m2. try clear HP5P6P8P13m1. try clear HP2P5P6P8P13M1. try clear HP2P5P6P8P13M2. try clear HP2P5P6P8P13M3. try clear HP2P5P6P8P13m4. try clear HP2P5P6P8P13m3. try clear HP2P5P6P8P13m2. try clear HP2P5P6P8P13m1. 

assert(HP1P2P3P4P8P13m2 : rk(P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P8P13m3 : rk(P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P8P13m4 : rk(P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P11P13M3 : rk(P2 :: P3 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP3eq : rk(P3 :: nil) = 1) by (apply LP3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3Mtmp : rk(P3 :: nil) <= 1) by (solve_hyps_max HP3eq HP3M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P3 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P11 :: P13 :: nil) (P3 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P2 :: P11 :: P13 :: nil) ((P3 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P3 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP3Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP3M1. try clear HP3M2. try clear HP3M3. try clear HP3m4. try clear HP3m3. try clear HP3m2. try clear HP3m1. 

assert(HP2P3P11P13m2 : rk(P2 :: P3 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P11 :: P13 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P11P13m3 : rk(P2 :: P3 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P3P11eq : rk(P2 :: P3 :: P11 :: nil) = 3) by (apply LP2P3P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11mtmp : rk(P2 :: P3 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P3P11eq HP2P3P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P11 :: nil) (P2 :: P3 :: P11 :: P13 :: nil) 3 3 HP2P3P11mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3P11M1. try clear HP2P3P11M2. try clear HP2P3P11M3. try clear HP2P3P11m4. try clear HP2P3P11m3. try clear HP2P3P11m2. try clear HP2P3P11m1. 

assert(HP2P3P13m2 : rk(P2 :: P3 :: P13 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P13 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P13m3 : rk(P2 :: P3 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P3P11P13eq : rk(P2 :: P3 :: P11 :: P13 :: nil) = 3) by (apply LP2P3P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P11P13mtmp : rk(P2 :: P3 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P3P11P13eq HP2P3P11P13m3).
	try assert(HP2P13eq : rk(P2 :: P13 :: nil) = 2) by (apply LP2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P13mtmp : rk(P2 :: P13 :: nil) >= 2) by (solve_hyps_min HP2P13eq HP2P13m2).
	assert(Hincl : incl (P2 :: P13 :: nil) (list_inter (P2 :: P3 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P11 :: P13 :: nil) (P2 :: P3 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P13 :: P2 :: P11 :: P13 :: nil) ((P2 :: P3 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P11P13mtmp;try rewrite HT2 in HP2P3P11P13mtmp.
	assert(HT := rule_2 (P2 :: P3 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: P13 :: nil) 3 2 2 HP2P3P11P13mtmp HP2P13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P3P11P13M1. try clear HP2P3P11P13M2. try clear HP2P3P11P13M3. try clear HP2P3P11P13m4. try clear HP2P3P11P13m3. try clear HP2P3P11P13m2. try clear HP2P3P11P13m1. 

assert(HP2P3P8P13m2 : rk(P2 :: P3 :: P8 :: P13 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P8 :: P13 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P8P13M3 : rk(P2 :: P3 :: P8 :: P13 :: nil) <= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13Mtmp : rk(P13 :: nil) <= 1) by (solve_hyps_max HP13eq HP13M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: P3 :: P8 :: nil) (P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P8 :: P13 :: nil) (P2 :: P3 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P13 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P3 :: P8 :: nil) (P13 :: nil) (nil) 2 1 0 HP2P3P8Mtmp HP13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P3P8P13m3 : rk(P2 :: P3 :: P8 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3P4P13eq : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP1P2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P13Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P13eq HP1P2P3P4P13M4).
	try assert(HP1P2P3P4P8P13eq : rk(P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) = 4) by (apply LP1P2P3P4P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P8P13mtmp : rk(P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P8P13eq HP1P2P3P4P8P13m4).
	try assert(HP2P3P13eq : rk(P2 :: P3 :: P13 :: nil) = 3) by (apply LP2P3P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P13mtmp : rk(P2 :: P3 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P3P13eq HP2P3P13m3).
	assert(Hincl : incl (P2 :: P3 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P3 :: P8 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P8 :: P13 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: P2 :: P3 :: P8 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P13 :: P2 :: P3 :: P8 :: P13 :: nil) ((P1 :: P2 :: P3 :: P4 :: P13 :: nil) ++ (P2 :: P3 :: P8 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P8P13mtmp;try rewrite HT2 in HP1P2P3P4P8P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P3 :: P8 :: P13 :: nil) (P2 :: P3 :: P13 :: nil) 4 3 4 HP1P2P3P4P8P13mtmp HP2P3P13mtmp HP1P2P3P4P13Mtmp Hincl); apply HT.
}
try clear HP2P3P13M1. try clear HP2P3P13M2. try clear HP2P3P13M3. try clear HP2P3P13m4. try clear HP2P3P13m3. try clear HP2P3P13m2. try clear HP2P3P13m1. try clear HP1P2P3P4P8P13M1. try clear HP1P2P3P4P8P13M2. try clear HP1P2P3P4P8P13M3. try clear HP1P2P3P4P8P13m4. try clear HP1P2P3P4P8P13m3. try clear HP1P2P3P4P8P13m2. try clear HP1P2P3P4P8P13m1. 

assert(HP2P4P8P9P10P13P15m2 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P8P9P10P13P15m3 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P9P10P13P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) = 3) by (apply LP2P3P4P8P9P10P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P13P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P9P10P13P15eq HP2P3P4P8P9P10P13P15m3).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P13P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P13P15mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P2 :: P8 :: nil) 3 2 2 HP2P3P4P8P9P10P13P15mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}


assert(HP2P4P8P9P10P13P15m4 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP2P3P8P13eq : rk(P2 :: P3 :: P8 :: P13 :: nil) = 3) by (apply LP2P3P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P8P13Mtmp : rk(P2 :: P3 :: P8 :: P13 :: nil) <= 3) by (solve_hyps_max HP2P3P8P13eq HP2P3P8P13M3).
	try assert(HP2P3P4P8P9P10P13P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) = 4) by (apply LP2P3P4P8P9P10P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P13P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP2P3P4P8P9P10P13P15eq HP2P3P4P8P9P10P13P15m4).
	try assert(HP2P8P13eq : rk(P2 :: P8 :: P13 :: nil) = 3) by (apply LP2P8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P8P13mtmp : rk(P2 :: P8 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P8P13eq HP2P8P13m3).
	assert(Hincl : incl (P2 :: P8 :: P13 :: nil) (list_inter (P2 :: P3 :: P8 :: P13 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P2 :: P3 :: P8 :: P13 :: P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P13 :: P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) ((P2 :: P3 :: P8 :: P13 :: nil) ++ (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P13P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P13P15mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: P13 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P2 :: P8 :: P13 :: nil) 4 3 3 HP2P3P4P8P9P10P13P15mtmp HP2P8P13mtmp HP2P3P8P13Mtmp Hincl); apply HT.
}
try clear HP2P3P8P13M1. try clear HP2P3P8P13M2. try clear HP2P3P8P13M3. try clear HP2P3P8P13m4. try clear HP2P3P8P13m3. try clear HP2P3P8P13m2. try clear HP2P3P8P13m1. try clear HP2P8P13M1. try clear HP2P8P13M2. try clear HP2P8P13M3. try clear HP2P8P13m4. try clear HP2P8P13m3. try clear HP2P8P13m2. try clear HP2P8P13m1. try clear HP2P3P4P8P9P10P13P15M1. try clear HP2P3P4P8P9P10P13P15M2. try clear HP2P3P4P8P9P10P13P15M3. try clear HP2P3P4P8P9P10P13P15m4. try clear HP2P3P4P8P9P10P13P15m3. try clear HP2P3P4P8P9P10P13P15m2. try clear HP2P3P4P8P9P10P13P15m1. 

assert(HP2P4P9P11P13m2 : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P9P11P13M3 : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2mtmp : rk(P2 :: nil) >= 1) by (solve_hyps_min HP2eq HP2m1).
	assert(Hincl : incl (P2 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P11 :: P13 :: nil) (P2 :: P4 :: P9 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P2 :: P11 :: P13 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P4 :: P9 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: nil) 2 2 1 HP2P4P9Mtmp HP2P11P13Mtmp HP2mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P4P9P11P13m3 : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P4P11eq : rk(P2 :: P4 :: P11 :: nil) = 3) by (apply LP2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11mtmp : rk(P2 :: P4 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P4P11eq HP2P4P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: nil) 3 3 HP2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9P11P13M3 : rk(P2 :: P9 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9Mtmp : rk(P9 :: nil) <= 1) by (solve_hyps_max HP9eq HP9M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P9 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P9 :: P11 :: P13 :: nil) (P9 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P9 :: P2 :: P11 :: P13 :: nil) ((P9 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P9 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP9Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P9P11P13m2 : rk(P2 :: P9 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P9eq : rk(P2 :: P9 :: nil) = 2) by (apply LP2P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P9mtmp : rk(P2 :: P9 :: nil) >= 2) by (solve_hyps_min HP2P9eq HP2P9m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P9 :: nil) (P2 :: P9 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P9 :: nil) (P2 :: P9 :: P11 :: P13 :: nil) 2 2 HP2P9mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9P11P13m3 : rk(P2 :: P9 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P9P11P13eq : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) = 3) by (apply LP2P4P9P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P11P13mtmp : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P4P9P11P13eq HP2P4P9P11P13m3).
	try assert(HP2P9eq : rk(P2 :: P9 :: nil) = 2) by (apply LP2P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P9mtmp : rk(P2 :: P9 :: nil) >= 2) by (solve_hyps_min HP2P9eq HP2P9m2).
	assert(Hincl : incl (P2 :: P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P2 :: P9 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P11 :: P13 :: nil) (P2 :: P4 :: P9 :: P2 :: P9 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P2 :: P9 :: P11 :: P13 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P2 :: P9 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P9P11P13mtmp;try rewrite HT2 in HP2P4P9P11P13mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P2 :: P9 :: P11 :: P13 :: nil) (P2 :: P9 :: nil) 3 2 2 HP2P4P9P11P13mtmp HP2P9mtmp HP2P4P9Mtmp Hincl); apply HT.
}


assert(HP9P13m2 : rk(P9 :: P13 :: nil) >= 2).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P9P11P13eq : rk(P2 :: P9 :: P11 :: P13 :: nil) = 3) by (apply LP2P9P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P9P11P13mtmp : rk(P2 :: P9 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P9P11P13eq HP2P9P11P13m3).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13mtmp : rk(P13 :: nil) >= 1) by (solve_hyps_min HP13eq HP13m1).
	assert(Hincl : incl (P13 :: nil) (list_inter (P9 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P9 :: P11 :: P13 :: nil) (P9 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P9 :: P13 :: P2 :: P11 :: P13 :: nil) ((P9 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P9P11P13mtmp;try rewrite HT2 in HP2P9P11P13mtmp.
	assert(HT := rule_2 (P9 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P13 :: nil) 3 1 2 HP2P9P11P13mtmp HP13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P9P11P13M1. try clear HP2P9P11P13M2. try clear HP2P9P11P13M3. try clear HP2P9P11P13m4. try clear HP2P9P11P13m3. try clear HP2P9P11P13m2. try clear HP2P9P11P13m1. 

assert(HP1P2P3P4P9P13m2 : rk(P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P9P13m3 : rk(P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P9P13m4 : rk(P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P11P13M3 : rk(P2 :: P4 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP4eq : rk(P4 :: nil) = 1) by (apply LP4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4Mtmp : rk(P4 :: nil) <= 1) by (solve_hyps_max HP4eq HP4M1).
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P4 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P11 :: P13 :: nil) (P4 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P2 :: P11 :: P13 :: nil) ((P4 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P4 :: nil) (P2 :: P11 :: P13 :: nil) (nil) 1 2 0 HP4Mtmp HP2P11P13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P4P11P13m2 : rk(P2 :: P4 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P11 :: P13 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P11P13m3 : rk(P2 :: P4 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P4P11eq : rk(P2 :: P4 :: P11 :: nil) = 3) by (apply LP2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11mtmp : rk(P2 :: P4 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P4P11eq HP2P4P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P11 :: P13 :: nil) 3 3 HP2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P13m2 : rk(P2 :: P4 :: P13 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P13 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P13m3 : rk(P2 :: P4 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P4P11P13eq : rk(P2 :: P4 :: P11 :: P13 :: nil) = 3) by (apply LP2P4P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11P13mtmp : rk(P2 :: P4 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P4P11P13eq HP2P4P11P13m3).
	try assert(HP2P13eq : rk(P2 :: P13 :: nil) = 2) by (apply LP2P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P13mtmp : rk(P2 :: P13 :: nil) >= 2) by (solve_hyps_min HP2P13eq HP2P13m2).
	assert(Hincl : incl (P2 :: P13 :: nil) (list_inter (P2 :: P4 :: P13 :: nil) (P2 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P11 :: P13 :: nil) (P2 :: P4 :: P13 :: P2 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P13 :: P2 :: P11 :: P13 :: nil) ((P2 :: P4 :: P13 :: nil) ++ (P2 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P11P13mtmp;try rewrite HT2 in HP2P4P11P13mtmp.
	assert(HT := rule_2 (P2 :: P4 :: P13 :: nil) (P2 :: P11 :: P13 :: nil) (P2 :: P13 :: nil) 3 2 2 HP2P4P11P13mtmp HP2P13mtmp HP2P11P13Mtmp Hincl);apply HT.
}
try clear HP2P13M1. try clear HP2P13M2. try clear HP2P13M3. try clear HP2P13m4. try clear HP2P13m3. try clear HP2P13m2. try clear HP2P13m1. try clear HP2P4P11P13M1. try clear HP2P4P11P13M2. try clear HP2P4P11P13M3. try clear HP2P4P11P13m4. try clear HP2P4P11P13m3. try clear HP2P4P11P13m2. try clear HP2P4P11P13m1. 

assert(HP2P4P9P13m2 : rk(P2 :: P4 :: P9 :: P13 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P13 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P9P13M3 : rk(P2 :: P4 :: P9 :: P13 :: nil) <= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP13eq : rk(P13 :: nil) = 1) by (apply LP13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP13Mtmp : rk(P13 :: nil) <= 1) by (solve_hyps_max HP13eq HP13M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: P4 :: P9 :: nil) (P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P13 :: nil) (P2 :: P4 :: P9 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P13 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P13 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P4 :: P9 :: nil) (P13 :: nil) (nil) 2 1 0 HP2P4P9Mtmp HP13Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP13M1. try clear HP13M2. try clear HP13M3. try clear HP13m4. try clear HP13m3. try clear HP13m2. try clear HP13m1. 

assert(HP2P4P9P13m3 : rk(P2 :: P4 :: P9 :: P13 :: nil) >= 3).
{
	try assert(HP1P2P3P4P13eq : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) = 4) by (apply LP1P2P3P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P13Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P13 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P13eq HP1P2P3P4P13M4).
	try assert(HP1P2P3P4P9P13eq : rk(P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) = 4) by (apply LP1P2P3P4P9P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P9P13mtmp : rk(P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P9P13eq HP1P2P3P4P9P13m4).
	try assert(HP2P4P13eq : rk(P2 :: P4 :: P13 :: nil) = 3) by (apply LP2P4P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P13mtmp : rk(P2 :: P4 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P4P13eq HP2P4P13m3).
	assert(Hincl : incl (P2 :: P4 :: P13 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P4 :: P9 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P9 :: P13 :: nil) (P1 :: P2 :: P3 :: P4 :: P13 :: P2 :: P4 :: P9 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P13 :: P2 :: P4 :: P9 :: P13 :: nil) ((P1 :: P2 :: P3 :: P4 :: P13 :: nil) ++ (P2 :: P4 :: P9 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P9P13mtmp;try rewrite HT2 in HP1P2P3P4P9P13mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P13 :: nil) (P2 :: P4 :: P9 :: P13 :: nil) (P2 :: P4 :: P13 :: nil) 4 3 4 HP1P2P3P4P9P13mtmp HP2P4P13mtmp HP1P2P3P4P13Mtmp Hincl); apply HT.
}
try clear HP1P2P3P4P13M1. try clear HP1P2P3P4P13M2. try clear HP1P2P3P4P13M3. try clear HP1P2P3P4P13m4. try clear HP1P2P3P4P13m3. try clear HP1P2P3P4P13m2. try clear HP1P2P3P4P13m1. try clear HP2P4P13M1. try clear HP2P4P13M2. try clear HP2P4P13M3. try clear HP2P4P13m4. try clear HP2P4P13m3. try clear HP2P4P13m2. try clear HP2P4P13m1. try clear HP1P2P3P4P9P13M1. try clear HP1P2P3P4P9P13M2. try clear HP1P2P3P4P9P13M3. try clear HP1P2P3P4P9P13m4. try clear HP1P2P3P4P9P13m3. try clear HP1P2P3P4P9P13m2. try clear HP1P2P3P4P9P13m1. 

assert(HP2P4P9P11P15m2 : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P9P11P15M3 : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) <= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4eq : rk(P4 :: nil) = 1) by (apply LP4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4mtmp : rk(P4 :: nil) >= 1) by (solve_hyps_min HP4eq HP4m1).
	assert(Hincl : incl (P4 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P4 :: P11 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P11 :: P15 :: nil) (P2 :: P4 :: P9 :: P4 :: P11 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P4 :: P11 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P4 :: P11 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P4 :: P9 :: nil) (P4 :: P11 :: P15 :: nil) (P4 :: nil) 2 2 1 HP2P4P9Mtmp HP4P11P15Mtmp HP4mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P4P9P11P15m3 : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P11eq : rk(P2 :: P4 :: P11 :: nil) = 3) by (apply LP2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11mtmp : rk(P2 :: P4 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P4P11eq HP2P4P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil) 3 3 HP2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P11P15M3 : rk(P2 :: P4 :: P11 :: P15 :: nil) <= 3).
{
	try assert(HP2eq : rk(P2 :: nil) = 1) by (apply LP2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2Mtmp : rk(P2 :: nil) <= 1) by (solve_hyps_max HP2eq HP2M1).
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: nil) (P4 :: P11 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P11 :: P15 :: nil) (P2 :: P4 :: P11 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P11 :: P15 :: nil) ((P2 :: nil) ++ (P4 :: P11 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: nil) (P4 :: P11 :: P15 :: nil) (nil) 1 2 0 HP2Mtmp HP4P11P15Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2M1. try clear HP2M2. try clear HP2M3. try clear HP2m4. try clear HP2m3. try clear HP2m2. try clear HP2m1. 

assert(HP2P4P11P15m2 : rk(P2 :: P4 :: P11 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P11 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P11P15m3 : rk(P2 :: P4 :: P11 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P11eq : rk(P2 :: P4 :: P11 :: nil) = 3) by (apply LP2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11mtmp : rk(P2 :: P4 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P4P11eq HP2P4P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P11 :: P15 :: nil) 3 3 HP2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P7P12m3 : rk(P1 :: P7 :: P12 :: nil) >= 3).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5Mtmp : rk(P1 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P5eq HP1P5M2).
	try assert(HP1P5P7P12eq : rk(P1 :: P5 :: P7 :: P12 :: nil) = 4) by (apply LP1P5P7P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P7P12mtmp : rk(P1 :: P5 :: P7 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P5P7P12eq HP1P5P7P12m4).
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1mtmp : rk(P1 :: nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
	assert(Hincl : incl (P1 :: nil) (list_inter (P1 :: P5 :: nil) (P1 :: P7 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P7 :: P12 :: nil) (P1 :: P5 :: P1 :: P7 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P5 :: P1 :: P7 :: P12 :: nil) ((P1 :: P5 :: nil) ++ (P1 :: P7 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P7P12mtmp;try rewrite HT2 in HP1P5P7P12mtmp.
	assert(HT := rule_4 (P1 :: P5 :: nil) (P1 :: P7 :: P12 :: nil) (P1 :: nil) 4 1 2 HP1P5P7P12mtmp HP1mtmp HP1P5Mtmp Hincl); apply HT.
}
try clear HP1P5P7P12M1. try clear HP1P5P7P12M2. try clear HP1P5P7P12M3. try clear HP1P5P7P12m4. try clear HP1P5P7P12m3. try clear HP1P5P7P12m2. try clear HP1P5P7P12m1. 

assert(HP1P7P11P12P15m2 : rk(P1 :: P7 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P7eq : rk(P1 :: P7 :: nil) = 2) by (apply LP1P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P7mtmp : rk(P1 :: P7 :: nil) >= 2) by (solve_hyps_min HP1P7eq HP1P7m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P7 :: nil) (P1 :: P7 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P7 :: nil) (P1 :: P7 :: P11 :: P12 :: P15 :: nil) 2 2 HP1P7mtmp Hcomp Hincl);apply HT.
}
try clear HP1P7M1. try clear HP1P7M2. try clear HP1P7M3. try clear HP1P7m4. try clear HP1P7m3. try clear HP1P7m2. try clear HP1P7m1. 

assert(HP1P7P11P12P15m3 : rk(P1 :: P7 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P7P12eq : rk(P1 :: P7 :: P12 :: nil) = 3) by (apply LP1P7P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P7P12mtmp : rk(P1 :: P7 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P7P12eq HP1P7P12m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P7 :: P12 :: nil) (P1 :: P7 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P7 :: P12 :: nil) (P1 :: P7 :: P11 :: P12 :: P15 :: nil) 3 3 HP1P7P12mtmp Hcomp Hincl);apply HT.
}
try clear HP1P7P12M1. try clear HP1P7P12M2. try clear HP1P7P12M3. try clear HP1P7P12m4. try clear HP1P7P12m3. try clear HP1P7P12m2. try clear HP1P7P12m1. 

assert(HP1P7P11P12P15M3 : rk(P1 :: P7 :: P11 :: P12 :: P15 :: nil) <= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP7P12P15eq : rk(P7 :: P12 :: P15 :: nil) = 2) by (apply LP7P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P12P15Mtmp : rk(P7 :: P12 :: P15 :: nil) <= 2) by (solve_hyps_max HP7P12P15eq HP7P12P15M2).
	try assert(HP12eq : rk(P12 :: nil) = 1) by (apply LP12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP12mtmp : rk(P12 :: nil) >= 1) by (solve_hyps_min HP12eq HP12m1).
	assert(Hincl : incl (P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P7 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P7 :: P11 :: P12 :: P15 :: nil) (P1 :: P11 :: P12 :: P7 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P7 :: P12 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P7 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P11 :: P12 :: nil) (P7 :: P12 :: P15 :: nil) (P12 :: nil) 2 2 1 HP1P11P12Mtmp HP7P12P15Mtmp HP12mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP7P11P12P15M3 : rk(P7 :: P11 :: P12 :: P15 :: nil) <= 3).
{
	try assert(HP11eq : rk(P11 :: nil) = 1) by (apply LP11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11Mtmp : rk(P11 :: nil) <= 1) by (solve_hyps_max HP11eq HP11M1).
	try assert(HP7P12P15eq : rk(P7 :: P12 :: P15 :: nil) = 2) by (apply LP7P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P12P15Mtmp : rk(P7 :: P12 :: P15 :: nil) <= 2) by (solve_hyps_max HP7P12P15eq HP7P12P15M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P11 :: nil) (P7 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P7 :: P11 :: P12 :: P15 :: nil) (P11 :: P7 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P11 :: P7 :: P12 :: P15 :: nil) ((P11 :: nil) ++ (P7 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P11 :: nil) (P7 :: P12 :: P15 :: nil) (nil) 1 2 0 HP11Mtmp HP7P12P15Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP11M1. try clear HP11M2. try clear HP11M3. try clear HP11m4. try clear HP11m3. try clear HP11m2. try clear HP11m1. 

assert(HP7P11P12P15m2 : rk(P7 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP7P12eq : rk(P7 :: P12 :: nil) = 2) by (apply LP7P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P12mtmp : rk(P7 :: P12 :: nil) >= 2) by (solve_hyps_min HP7P12eq HP7P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P7 :: P12 :: nil) (P7 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P7 :: P12 :: nil) (P7 :: P11 :: P12 :: P15 :: nil) 2 2 HP7P12mtmp Hcomp Hincl);apply HT.
}


assert(HP7P11P12P15m3 : rk(P7 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P7P11P12P15eq : rk(P1 :: P7 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP1P7P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P7P11P12P15mtmp : rk(P1 :: P7 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P7P11P12P15eq HP1P7P11P12P15m3).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P7 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P7 :: P11 :: P12 :: P15 :: nil) (P1 :: P11 :: P12 :: P7 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P7 :: P11 :: P12 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P7 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P7P11P12P15mtmp;try rewrite HT2 in HP1P7P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P7 :: P11 :: P12 :: P15 :: nil) (P11 :: P12 :: nil) 3 2 2 HP1P7P11P12P15mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P7P11P12P15M1. try clear HP1P7P11P12P15M2. try clear HP1P7P11P12P15M3. try clear HP1P7P11P12P15m4. try clear HP1P7P11P12P15m3. try clear HP1P7P11P12P15m2. try clear HP1P7P11P12P15m1. 

assert(HP11P15m2 : rk(P11 :: P15 :: nil) >= 2).
{
	try assert(HP7P12P15eq : rk(P7 :: P12 :: P15 :: nil) = 2) by (apply LP7P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P12P15Mtmp : rk(P7 :: P12 :: P15 :: nil) <= 2) by (solve_hyps_max HP7P12P15eq HP7P12P15M2).
	try assert(HP7P11P12P15eq : rk(P7 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP7P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P11P12P15mtmp : rk(P7 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP7P11P12P15eq HP7P11P12P15m3).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P11 :: P15 :: nil) (P7 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P7 :: P11 :: P12 :: P15 :: nil) (P11 :: P15 :: P7 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P11 :: P15 :: P7 :: P12 :: P15 :: nil) ((P11 :: P15 :: nil) ++ (P7 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP7P11P12P15mtmp;try rewrite HT2 in HP7P11P12P15mtmp.
	assert(HT := rule_2 (P11 :: P15 :: nil) (P7 :: P12 :: P15 :: nil) (P15 :: nil) 3 1 2 HP7P11P12P15mtmp HP15mtmp HP7P12P15Mtmp Hincl);apply HT.
}
try clear HP7P11P12P15M1. try clear HP7P11P12P15M2. try clear HP7P11P12P15M3. try clear HP7P11P12P15m4. try clear HP7P11P12P15m3. try clear HP7P11P12P15m2. try clear HP7P11P12P15m1. 

assert(HP2P11P15m2 : rk(P2 :: P11 :: P15 :: nil) >= 2).
{
	try assert(HP2P11eq : rk(P2 :: P11 :: nil) = 2) by (apply LP2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11mtmp : rk(P2 :: P11 :: nil) >= 2) by (solve_hyps_min HP2P11eq HP2P11m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: nil) (P2 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: nil) (P2 :: P11 :: P15 :: nil) 2 2 HP2P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P11P15m3 : rk(P2 :: P11 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP2P4P11P15eq : rk(P2 :: P4 :: P11 :: P15 :: nil) = 3) by (apply LP2P4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11P15mtmp : rk(P2 :: P4 :: P11 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P11P15eq HP2P4P11P15m3).
	try assert(HP11P15eq : rk(P11 :: P15 :: nil) = 2) by (apply LP11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P15mtmp : rk(P11 :: P15 :: nil) >= 2) by (solve_hyps_min HP11P15eq HP11P15m2).
	assert(Hincl : incl (P11 :: P15 :: nil) (list_inter (P2 :: P11 :: P15 :: nil) (P4 :: P11 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P11 :: P15 :: nil) (P2 :: P11 :: P15 :: P4 :: P11 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P15 :: P4 :: P11 :: P15 :: nil) ((P2 :: P11 :: P15 :: nil) ++ (P4 :: P11 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P11P15mtmp;try rewrite HT2 in HP2P4P11P15mtmp.
	assert(HT := rule_2 (P2 :: P11 :: P15 :: nil) (P4 :: P11 :: P15 :: nil) (P11 :: P15 :: nil) 3 2 2 HP2P4P11P15mtmp HP11P15mtmp HP4P11P15Mtmp Hincl);apply HT.
}
try clear HP2P4P11P15M1. try clear HP2P4P11P15M2. try clear HP2P4P11P15M3. try clear HP2P4P11P15m4. try clear HP2P4P11P15m3. try clear HP2P4P11P15m2. try clear HP2P4P11P15m1. 

assert(HP2P9P11P15m2 : rk(P2 :: P9 :: P11 :: P15 :: nil) >= 2).
{
	try assert(HP2P9eq : rk(P2 :: P9 :: nil) = 2) by (apply LP2P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P9mtmp : rk(P2 :: P9 :: nil) >= 2) by (solve_hyps_min HP2P9eq HP2P9m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P9 :: nil) (P2 :: P9 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P9 :: nil) (P2 :: P9 :: P11 :: P15 :: nil) 2 2 HP2P9mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9P11P15m3 : rk(P2 :: P9 :: P11 :: P15 :: nil) >= 3).
{
	try assert(HP2P11P15eq : rk(P2 :: P11 :: P15 :: nil) = 3) by (apply LP2P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P15mtmp : rk(P2 :: P11 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P11P15eq HP2P11P15m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: P15 :: nil) (P2 :: P9 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: P15 :: nil) (P2 :: P9 :: P11 :: P15 :: nil) 3 3 HP2P11P15mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9P11P15M3 : rk(P2 :: P9 :: P11 :: P15 :: nil) <= 3).
{
	try assert(HP2P4P9P11P15eq : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) = 3) by (apply LP2P4P9P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P11P15Mtmp : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) <= 3) by (solve_hyps_max HP2P4P9P11P15eq HP2P4P9P11P15M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P9 :: P11 :: P15 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P2 :: P9 :: P11 :: P15 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil) 3 3 HP2P4P9P11P15Mtmp Hcomp Hincl);apply HT.
}


assert(HP2P11P13P15m2 : rk(P2 :: P11 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P11eq : rk(P2 :: P11 :: nil) = 2) by (apply LP2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11mtmp : rk(P2 :: P11 :: nil) >= 2) by (solve_hyps_min HP2P11eq HP2P11m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: nil) (P2 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: nil) (P2 :: P11 :: P13 :: P15 :: nil) 2 2 HP2P11mtmp Hcomp Hincl);apply HT.
}


assert(HP2P11P13P15M3 : rk(P2 :: P11 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15Mtmp : rk(P15 :: nil) <= 1) by (solve_hyps_max HP15eq HP15M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P2 :: P11 :: P13 :: nil) (P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P11 :: P13 :: P15 :: nil) (P2 :: P11 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P15 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P11 :: P13 :: nil) (P15 :: nil) (nil) 2 1 0 HP2P11P13Mtmp HP15Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}


assert(HP2P11P13P15m3 : rk(P2 :: P11 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P11P15eq : rk(P2 :: P11 :: P15 :: nil) = 3) by (apply LP2P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P15mtmp : rk(P2 :: P11 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P11P15eq HP2P11P15m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: P15 :: nil) (P2 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: P15 :: nil) (P2 :: P11 :: P13 :: P15 :: nil) 3 3 HP2P11P15mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9P11P13P15m2 : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P9eq : rk(P2 :: P9 :: nil) = 2) by (apply LP2P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P9mtmp : rk(P2 :: P9 :: nil) >= 2) by (solve_hyps_min HP2P9eq HP2P9m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P9 :: nil) (P2 :: P9 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P9 :: nil) (P2 :: P9 :: P11 :: P13 :: P15 :: nil) 2 2 HP2P9mtmp Hcomp Hincl);apply HT.
}
try clear HP2P9M1. try clear HP2P9M2. try clear HP2P9M3. try clear HP2P9m4. try clear HP2P9m3. try clear HP2P9m2. try clear HP2P9m1. 

assert(HP2P9P11P13P15m3 : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P11P15eq : rk(P2 :: P11 :: P15 :: nil) = 3) by (apply LP2P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P15mtmp : rk(P2 :: P11 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P11P15eq HP2P11P15m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P11 :: P15 :: nil) (P2 :: P9 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P11 :: P15 :: nil) (P2 :: P9 :: P11 :: P13 :: P15 :: nil) 3 3 HP2P11P15mtmp Hcomp Hincl);apply HT.
}


assert(HP2P9P11P13P15M3 : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP2P9P11P15eq : rk(P2 :: P9 :: P11 :: P15 :: nil) = 3) by (apply LP2P9P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P9P11P15Mtmp : rk(P2 :: P9 :: P11 :: P15 :: nil) <= 3) by (solve_hyps_max HP2P9P11P15eq HP2P9P11P15M3).
	try assert(HP2P11P13P15eq : rk(P2 :: P11 :: P13 :: P15 :: nil) = 3) by (apply LP2P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13P15Mtmp : rk(P2 :: P11 :: P13 :: P15 :: nil) <= 3) by (solve_hyps_max HP2P11P13P15eq HP2P11P13P15M3).
	try assert(HP2P11P15eq : rk(P2 :: P11 :: P15 :: nil) = 3) by (apply LP2P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P15mtmp : rk(P2 :: P11 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P11P15eq HP2P11P15m3).
	assert(Hincl : incl (P2 :: P11 :: P15 :: nil) (list_inter (P2 :: P9 :: P11 :: P15 :: nil) (P2 :: P11 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P9 :: P11 :: P13 :: P15 :: nil) (P2 :: P9 :: P11 :: P15 :: P2 :: P11 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P9 :: P11 :: P15 :: P2 :: P11 :: P13 :: P15 :: nil) ((P2 :: P9 :: P11 :: P15 :: nil) ++ (P2 :: P11 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P9 :: P11 :: P15 :: nil) (P2 :: P11 :: P13 :: P15 :: nil) (P2 :: P11 :: P15 :: nil) 3 3 3 HP2P9P11P15Mtmp HP2P11P13P15Mtmp HP2P11P15mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2P9P11P15M1. try clear HP2P9P11P15M2. try clear HP2P9P11P15M3. try clear HP2P9P11P15m4. try clear HP2P9P11P15m3. try clear HP2P9P11P15m2. try clear HP2P9P11P15m1. try clear HP2P11P13P15M1. try clear HP2P11P13P15M2. try clear HP2P11P13P15M3. try clear HP2P11P13P15m4. try clear HP2P11P13P15m3. try clear HP2P11P13P15m2. try clear HP2P11P13P15m1. try clear HP2P11P15M1. try clear HP2P11P15M2. try clear HP2P11P15M3. try clear HP2P11P15m4. try clear HP2P11P15m3. try clear HP2P11P15m2. try clear HP2P11P15m1. 

assert(HP4P9P11P13m2 : rk(P4 :: P9 :: P11 :: P13 :: nil) >= 2).
{
	try assert(HP4P9eq : rk(P4 :: P9 :: nil) = 2) by (apply LP4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P9mtmp : rk(P4 :: P9 :: nil) >= 2) by (solve_hyps_min HP4P9eq HP4P9m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P4 :: P9 :: nil) (P4 :: P9 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P4 :: P9 :: nil) (P4 :: P9 :: P11 :: P13 :: nil) 2 2 HP4P9mtmp Hcomp Hincl);apply HT.
}


assert(HP4P9P11P13m3 : rk(P4 :: P9 :: P11 :: P13 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P4P9P11P13eq : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) = 3) by (apply LP2P4P9P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P11P13mtmp : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) >= 3) by (solve_hyps_min HP2P4P9P11P13eq HP2P4P9P11P13m3).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P4 :: P9 :: P11 :: P13 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P11 :: P13 :: nil) (P2 :: P11 :: P13 :: P4 :: P9 :: P11 :: P13 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P4 :: P9 :: P11 :: P13 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P4 :: P9 :: P11 :: P13 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P9P11P13mtmp;try rewrite HT2 in HP2P4P9P11P13mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P4 :: P9 :: P11 :: P13 :: nil) (P11 :: P13 :: nil) 3 2 2 HP2P4P9P11P13mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}


assert(HP4P9P11P13M3 : rk(P4 :: P9 :: P11 :: P13 :: nil) <= 3).
{
	try assert(HP2P4P9P11P13eq : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) = 3) by (apply LP2P4P9P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P11P13Mtmp : rk(P2 :: P4 :: P9 :: P11 :: P13 :: nil) <= 3) by (solve_hyps_max HP2P4P9P11P13eq HP2P4P9P11P13M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P4 :: P9 :: P11 :: P13 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P4 :: P9 :: P11 :: P13 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: nil) 3 3 HP2P4P9P11P13Mtmp Hcomp Hincl);apply HT.
}
try clear HP2P4P9P11P13M1. try clear HP2P4P9P11P13M2. try clear HP2P4P9P11P13M3. try clear HP2P4P9P11P13m4. try clear HP2P4P9P11P13m3. try clear HP2P4P9P11P13m2. try clear HP2P4P9P11P13m1. 

assert(HP2P4P9P11P13P15m2 : rk(P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P9P11P13P15m3 : rk(P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P11eq : rk(P2 :: P4 :: P11 :: nil) = 3) by (apply LP2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P11mtmp : rk(P2 :: P4 :: P11 :: nil) >= 3) by (solve_hyps_min HP2P4P11eq HP2P4P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: P11 :: nil) (P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) 3 3 HP2P4P11mtmp Hcomp Hincl);apply HT.
}
try clear HP2P4P11M1. try clear HP2P4P11M2. try clear HP2P4P11M3. try clear HP2P4P11m4. try clear HP2P4P11m3. try clear HP2P4P11m2. try clear HP2P4P11m1. 

assert(HP2P4P9P11P13P15M3 : rk(P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P4P9P11P15eq : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) = 3) by (apply LP2P4P9P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P11P15Mtmp : rk(P2 :: P4 :: P9 :: P11 :: P15 :: nil) <= 3) by (solve_hyps_max HP2P4P9P11P15eq HP2P4P9P11P15M3).
	try assert(HP2P11eq : rk(P2 :: P11 :: nil) = 2) by (apply LP2P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11mtmp : rk(P2 :: P11 :: nil) >= 2) by (solve_hyps_min HP2P11eq HP2P11m2).
	assert(Hincl : incl (P2 :: P11 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) (P2 :: P11 :: P13 :: P2 :: P4 :: P9 :: P11 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P2 :: P4 :: P9 :: P11 :: P15 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P2 :: P4 :: P9 :: P11 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P2 :: P11 :: P13 :: nil) (P2 :: P4 :: P9 :: P11 :: P15 :: nil) (P2 :: P11 :: nil) 2 3 2 HP2P11P13Mtmp HP2P4P9P11P15Mtmp HP2P11mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP2P4P9P11P15M1. try clear HP2P4P9P11P15M2. try clear HP2P4P9P11P15M3. try clear HP2P4P9P11P15m4. try clear HP2P4P9P11P15m3. try clear HP2P4P9P11P15m2. try clear HP2P4P9P11P15m1. try clear HP2P11M1. try clear HP2P11M2. try clear HP2P11M3. try clear HP2P11m4. try clear HP2P11m3. try clear HP2P11m2. try clear HP2P11m1. 

assert(HP4P9P11P13P15m2 : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP4P9eq : rk(P4 :: P9 :: nil) = 2) by (apply LP4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P9mtmp : rk(P4 :: P9 :: nil) >= 2) by (solve_hyps_min HP4P9eq HP4P9m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P4 :: P9 :: nil) (P4 :: P9 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P4 :: P9 :: nil) (P4 :: P9 :: P11 :: P13 :: P15 :: nil) 2 2 HP4P9mtmp Hcomp Hincl);apply HT.
}


assert(HP4P9P11P13P15m3 : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P4P9P11P13P15eq : rk(P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) = 3) by (apply LP2P4P9P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P11P13P15mtmp : rk(P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P9P11P13P15eq HP2P4P9P11P13P15m3).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P4 :: P9 :: P11 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) (P2 :: P11 :: P13 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P4 :: P9 :: P11 :: P13 :: P15 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P4 :: P9 :: P11 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P9P11P13P15mtmp;try rewrite HT2 in HP2P4P9P11P13P15mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P4 :: P9 :: P11 :: P13 :: P15 :: nil) (P11 :: P13 :: nil) 3 2 2 HP2P4P9P11P13P15mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}
try clear HP2P4P9P11P13P15M1. try clear HP2P4P9P11P13P15M2. try clear HP2P4P9P11P13P15M3. try clear HP2P4P9P11P13P15m4. try clear HP2P4P9P11P13P15m3. try clear HP2P4P9P11P13P15m2. try clear HP2P4P9P11P13P15m1. 

assert(HP4P9P11P13P15M3 : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP4P9P11P13eq : rk(P4 :: P9 :: P11 :: P13 :: nil) = 3) by (apply LP4P9P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P9P11P13Mtmp : rk(P4 :: P9 :: P11 :: P13 :: nil) <= 3) by (solve_hyps_max HP4P9P11P13eq HP4P9P11P13M3).
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P11eq : rk(P4 :: P11 :: nil) = 2) by (apply LP4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11mtmp : rk(P4 :: P11 :: nil) >= 2) by (solve_hyps_min HP4P11eq HP4P11m2).
	assert(Hincl : incl (P4 :: P11 :: nil) (list_inter (P4 :: P9 :: P11 :: P13 :: nil) (P4 :: P11 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P9 :: P11 :: P13 :: P15 :: nil) (P4 :: P9 :: P11 :: P13 :: P4 :: P11 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P9 :: P11 :: P13 :: P4 :: P11 :: P15 :: nil) ((P4 :: P9 :: P11 :: P13 :: nil) ++ (P4 :: P11 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P4 :: P9 :: P11 :: P13 :: nil) (P4 :: P11 :: P15 :: nil) (P4 :: P11 :: nil) 3 2 2 HP4P9P11P13Mtmp HP4P11P15Mtmp HP4P11mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP4P9P11P13M1. try clear HP4P9P11P13M2. try clear HP4P9P11P13M3. try clear HP4P9P11P13m4. try clear HP4P9P11P13m3. try clear HP4P9P11P13m2. try clear HP4P9P11P13m1. try clear HP4P11M1. try clear HP4P11M2. try clear HP4P11M3. try clear HP4P11m4. try clear HP4P11m3. try clear HP4P11m2. try clear HP4P11m1. 

assert(HP9P11P13P15m2 : rk(P9 :: P11 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P9P11P13P15eq : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) = 2) by (apply LP2P9P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P9P11P13P15mtmp : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) >= 2) by (solve_hyps_min HP2P9P11P13P15eq HP2P9P11P13P15m2).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P9 :: P11 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P9 :: P11 :: P13 :: P15 :: nil) (P2 :: P11 :: P13 :: P9 :: P11 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P9 :: P11 :: P13 :: P15 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P9 :: P11 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P9P11P13P15mtmp;try rewrite HT2 in HP2P9P11P13P15mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P9 :: P11 :: P13 :: P15 :: nil) (P11 :: P13 :: nil) 2 2 2 HP2P9P11P13P15mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}


assert(HP9P11P13P15m3 : rk(P9 :: P11 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P9P11P13P15eq : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) = 3) by (apply LP4P9P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P9P11P13P15mtmp : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP4P9P11P13P15eq HP4P9P11P13P15m3).
	try assert(HP11P15eq : rk(P11 :: P15 :: nil) = 2) by (apply LP11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P15mtmp : rk(P11 :: P15 :: nil) >= 2) by (solve_hyps_min HP11P15eq HP11P15m2).
	assert(Hincl : incl (P11 :: P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P9 :: P11 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P9 :: P11 :: P13 :: P15 :: nil) (P4 :: P11 :: P15 :: P9 :: P11 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P9 :: P11 :: P13 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P9 :: P11 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P9P11P13P15mtmp;try rewrite HT2 in HP4P9P11P13P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P9 :: P11 :: P13 :: P15 :: nil) (P11 :: P15 :: nil) 3 2 2 HP4P9P11P13P15mtmp HP11P15mtmp HP4P11P15Mtmp Hincl); apply HT.
}


assert(HP9P11P13P15M3 : rk(P9 :: P11 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP2P9P11P13P15eq : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) = 3) by (apply LP2P9P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P9P11P13P15Mtmp : rk(P2 :: P9 :: P11 :: P13 :: P15 :: nil) <= 3) by (solve_hyps_max HP2P9P11P13P15eq HP2P9P11P13P15M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P9 :: P11 :: P13 :: P15 :: nil) (P2 :: P9 :: P11 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P9 :: P11 :: P13 :: P15 :: nil) (P2 :: P9 :: P11 :: P13 :: P15 :: nil) 3 3 HP2P9P11P13P15Mtmp Hcomp Hincl);apply HT.
}
try clear HP2P9P11P13P15M1. try clear HP2P9P11P13P15M2. try clear HP2P9P11P13P15M3. try clear HP2P9P11P13P15m4. try clear HP2P9P11P13P15m3. try clear HP2P9P11P13P15m2. try clear HP2P9P11P13P15m1. 

assert(HP1P2P4P11P12m2 : rk(P1 :: P2 :: P4 :: P11 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P11 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P11P12m3 : rk(P1 :: P2 :: P4 :: P11 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P11 :: P12 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P11P12m4 : rk(P1 :: P2 :: P4 :: P11 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P4P11eq : rk(P1 :: P2 :: P4 :: P11 :: nil) = 4) by (apply LP1P2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11mtmp : rk(P1 :: P2 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11eq HP1P2P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P11 :: P12 :: nil) 4 4 HP1P2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P12m2 : rk(P1 :: P2 :: P4 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P12m3 : rk(P1 :: P2 :: P4 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P12 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P12m4 : rk(P1 :: P2 :: P4 :: P12 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P2P4P11P12eq : rk(P1 :: P2 :: P4 :: P11 :: P12 :: nil) = 4) by (apply LP1P2P4P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11P12mtmp : rk(P1 :: P2 :: P4 :: P11 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11P12eq HP1P2P4P11P12m4).
	try assert(HP1P12eq : rk(P1 :: P12 :: nil) = 2) by (apply LP1P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P12mtmp : rk(P1 :: P12 :: nil) >= 2) by (solve_hyps_min HP1P12eq HP1P12m2).
	assert(Hincl : incl (P1 :: P12 :: nil) (list_inter (P1 :: P2 :: P4 :: P12 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P11 :: P12 :: nil) (P1 :: P2 :: P4 :: P12 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P4 :: P12 :: P1 :: P11 :: P12 :: nil) ((P1 :: P2 :: P4 :: P12 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P11P12mtmp;try rewrite HT2 in HP1P2P4P11P12mtmp.
	assert(HT := rule_2 (P1 :: P2 :: P4 :: P12 :: nil) (P1 :: P11 :: P12 :: nil) (P1 :: P12 :: nil) 4 2 2 HP1P2P4P11P12mtmp HP1P12mtmp HP1P11P12Mtmp Hincl);apply HT.
}
try clear HP1P2P4P11P12M1. try clear HP1P2P4P11P12M2. try clear HP1P2P4P11P12M3. try clear HP1P2P4P11P12m4. try clear HP1P2P4P11P12m3. try clear HP1P2P4P11P12m2. try clear HP1P2P4P11P12m1. 

assert(HP1P2P4P5P7P9P12P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7P9P12P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P7P9P12P15m4 : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P4P12eq : rk(P1 :: P2 :: P4 :: P12 :: nil) = 4) by (apply LP1P2P4P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P12mtmp : rk(P1 :: P2 :: P4 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P4P12eq HP1P2P4P12m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: P12 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: P12 :: nil) (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) 4 4 HP1P2P4P12mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P4P12M1. try clear HP1P2P4P12M2. try clear HP1P2P4P12M3. try clear HP1P2P4P12m4. try clear HP1P2P4P12m3. try clear HP1P2P4P12m2. try clear HP1P2P4P12m1. 

assert(HP1P4P5P7P9P12P15m2 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P7P9P12P15m3 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P7P9P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P7P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P7P9P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P7P9P12P15eq HP1P2P4P5P7P9P12P15m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P9P12P15mtmp;try rewrite HT2 in HP1P2P4P5P7P9P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P7P9P12P15mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P4P5P7P9P12P15m4 : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P7P9P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) = 4) by (apply LP1P2P4P5P7P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P7P9P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P7P9P12P15eq HP1P2P4P5P7P9P12P15m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P7P9P12P15mtmp;try rewrite HT2 in HP1P2P4P5P7P9P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P4P5P7P9P12P15mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P7P9P12P15M1. try clear HP1P2P4P5P7P9P12P15M2. try clear HP1P2P4P5P7P9P12P15M3. try clear HP1P2P4P5P7P9P12P15m4. try clear HP1P2P4P5P7P9P12P15m3. try clear HP1P2P4P5P7P9P12P15m2. try clear HP1P2P4P5P7P9P12P15m1. 

assert(HP1P2P3P4P7P12m2 : rk(P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P3P4P7P12m3 : rk(P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3eq : rk(P1 :: P2 :: P3 :: nil) = 3) by (apply LP1P2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3mtmp : rk(P1 :: P2 :: P3 :: nil) >= 3) by (solve_hyps_min HP1P2P3eq HP1P2P3m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) 3 3 HP1P2P3mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P3M1. try clear HP1P2P3M2. try clear HP1P2P3M3. try clear HP1P2P3m4. try clear HP1P2P3m3. try clear HP1P2P3m2. try clear HP1P2P3m1. 

assert(HP1P2P3P4P7P12m4 : rk(P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) >= 4).
{
	try assert(HP1P2P3P4eq : rk(P1 :: P2 :: P3 :: P4 :: nil) = 4) by (apply LP1P2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P3P4mtmp : rk(P1 :: P2 :: P3 :: P4 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4eq HP1P2P3P4m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P3 :: P4 :: nil) (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) 4 4 HP1P2P3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P3P4M1. try clear HP1P2P3P4M2. try clear HP1P2P3P4M3. try clear HP1P2P3P4m4. try clear HP1P2P3P4m3. try clear HP1P2P3P4m2. try clear HP1P2P3P4m1. 

assert(HP1P4P11m3 : rk(P1 :: P4 :: P11 :: nil) >= 3).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2Mtmp : rk(P1 :: P2 :: nil) <= 2) by (solve_hyps_max HP1P2eq HP1P2M2).
	try assert(HP1P2P4P11eq : rk(P1 :: P2 :: P4 :: P11 :: nil) = 4) by (apply LP1P2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11mtmp : rk(P1 :: P2 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11eq HP1P2P4P11m4).
	try assert(HP1eq : rk(P1 :: nil) = 1) by (apply LP1 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1mtmp : rk(P1 :: nil) >= 1) by (solve_hyps_min HP1eq HP1m1).
	assert(Hincl : incl (P1 :: nil) (list_inter (P1 :: P2 :: nil) (P1 :: P4 :: P11 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P1 :: P4 :: P11 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P1 :: P4 :: P11 :: nil) ((P1 :: P2 :: nil) ++ (P1 :: P4 :: P11 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P11mtmp;try rewrite HT2 in HP1P2P4P11mtmp.
	assert(HT := rule_4 (P1 :: P2 :: nil) (P1 :: P4 :: P11 :: nil) (P1 :: nil) 4 1 2 HP1P2P4P11mtmp HP1mtmp HP1P2Mtmp Hincl); apply HT.
}
try clear HP1M1. try clear HP1M2. try clear HP1M3. try clear HP1m4. try clear HP1m3. try clear HP1m2. try clear HP1m1. 

assert(HP1P4P11P12M3 : rk(P1 :: P4 :: P11 :: P12 :: nil) <= 3).
{
	try assert(HP4eq : rk(P4 :: nil) = 1) by (apply LP4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4Mtmp : rk(P4 :: nil) <= 1) by (solve_hyps_max HP4eq HP4M1).
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P4 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P11 :: P12 :: nil) (P4 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P1 :: P11 :: P12 :: nil) ((P4 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P4 :: nil) (P1 :: P11 :: P12 :: nil) (nil) 1 2 0 HP4Mtmp HP1P11P12Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP4M1. try clear HP4M2. try clear HP4M3. try clear HP4m4. try clear HP4m3. try clear HP4m2. try clear HP4m1. 

assert(HP1P4P11P12m2 : rk(P1 :: P4 :: P11 :: P12 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P11 :: P12 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P11P12m3 : rk(P1 :: P4 :: P11 :: P12 :: nil) >= 3).
{
	try assert(HP1P4P11eq : rk(P1 :: P4 :: P11 :: nil) = 3) by (apply LP1P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P11mtmp : rk(P1 :: P4 :: P11 :: nil) >= 3) by (solve_hyps_min HP1P4P11eq HP1P4P11m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: P11 :: nil) (P1 :: P4 :: P11 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: P11 :: nil) (P1 :: P4 :: P11 :: P12 :: nil) 3 3 HP1P4P11mtmp Hcomp Hincl);apply HT.
}
try clear HP1P4P11M1. try clear HP1P4P11M2. try clear HP1P4P11M3. try clear HP1P4P11m4. try clear HP1P4P11m3. try clear HP1P4P11m2. try clear HP1P4P11m1. 

assert(HP1P4P12m2 : rk(P1 :: P4 :: P12 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P12 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P12m3 : rk(P1 :: P4 :: P12 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P4P11P12eq : rk(P1 :: P4 :: P11 :: P12 :: nil) = 3) by (apply LP1P4P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P11P12mtmp : rk(P1 :: P4 :: P11 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P4P11P12eq HP1P4P11P12m3).
	try assert(HP1P12eq : rk(P1 :: P12 :: nil) = 2) by (apply LP1P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P12mtmp : rk(P1 :: P12 :: nil) >= 2) by (solve_hyps_min HP1P12eq HP1P12m2).
	assert(Hincl : incl (P1 :: P12 :: nil) (list_inter (P1 :: P4 :: P12 :: nil) (P1 :: P11 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P11 :: P12 :: nil) (P1 :: P4 :: P12 :: P1 :: P11 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P12 :: P1 :: P11 :: P12 :: nil) ((P1 :: P4 :: P12 :: nil) ++ (P1 :: P11 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P11P12mtmp;try rewrite HT2 in HP1P4P11P12mtmp.
	assert(HT := rule_2 (P1 :: P4 :: P12 :: nil) (P1 :: P11 :: P12 :: nil) (P1 :: P12 :: nil) 3 2 2 HP1P4P11P12mtmp HP1P12mtmp HP1P11P12Mtmp Hincl);apply HT.
}
try clear HP1P12M1. try clear HP1P12M2. try clear HP1P12M3. try clear HP1P12m4. try clear HP1P12m3. try clear HP1P12m2. try clear HP1P12m1. try clear HP1P4P11P12M1. try clear HP1P4P11P12M2. try clear HP1P4P11P12M3. try clear HP1P4P11P12m4. try clear HP1P4P11P12m3. try clear HP1P4P11P12m2. try clear HP1P4P11P12m1. 

assert(HP1P4P7P12m2 : rk(P1 :: P4 :: P7 :: P12 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P7 :: P12 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P7 :: P12 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P7P12M3 : rk(P1 :: P4 :: P7 :: P12 :: nil) <= 3).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP12eq : rk(P12 :: nil) = 1) by (apply LP12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP12Mtmp : rk(P12 :: nil) <= 1) by (solve_hyps_max HP12eq HP12M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P1 :: P4 :: P7 :: nil) (P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P7 :: P12 :: nil) (P1 :: P4 :: P7 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P12 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P12 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P1 :: P4 :: P7 :: nil) (P12 :: nil) (nil) 2 1 0 HP1P4P7Mtmp HP12Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP12M1. try clear HP12M2. try clear HP12M3. try clear HP12m4. try clear HP12m3. try clear HP12m2. try clear HP12m1. 

assert(HP1P4P7P12m3 : rk(P1 :: P4 :: P7 :: P12 :: nil) >= 3).
{
	try assert(HP1P2P3P4P12eq : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) = 4) by (apply LP1P2P3P4P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P12Mtmp : rk(P1 :: P2 :: P3 :: P4 :: P12 :: nil) <= 4) by (solve_hyps_max HP1P2P3P4P12eq HP1P2P3P4P12M4).
	try assert(HP1P2P3P4P7P12eq : rk(P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) = 4) by (apply LP1P2P3P4P7P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P3P4P7P12mtmp : rk(P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) >= 4) by (solve_hyps_min HP1P2P3P4P7P12eq HP1P2P3P4P7P12m4).
	try assert(HP1P4P12eq : rk(P1 :: P4 :: P12 :: nil) = 3) by (apply LP1P4P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P12mtmp : rk(P1 :: P4 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P4P12eq HP1P4P12m3).
	assert(Hincl : incl (P1 :: P4 :: P12 :: nil) (list_inter (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P4 :: P7 :: P12 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P3 :: P4 :: P7 :: P12 :: nil) (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P4 :: P7 :: P12 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P3 :: P4 :: P12 :: P1 :: P4 :: P7 :: P12 :: nil) ((P1 :: P2 :: P3 :: P4 :: P12 :: nil) ++ (P1 :: P4 :: P7 :: P12 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P3P4P7P12mtmp;try rewrite HT2 in HP1P2P3P4P7P12mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P3 :: P4 :: P12 :: nil) (P1 :: P4 :: P7 :: P12 :: nil) (P1 :: P4 :: P12 :: nil) 4 3 4 HP1P2P3P4P7P12mtmp HP1P4P12mtmp HP1P2P3P4P12Mtmp Hincl); apply HT.
}
try clear HP1P2P3P4P12M1. try clear HP1P2P3P4P12M2. try clear HP1P2P3P4P12M3. try clear HP1P2P3P4P12m4. try clear HP1P2P3P4P12m3. try clear HP1P2P3P4P12m2. try clear HP1P2P3P4P12m1. try clear HP1P4P12M1. try clear HP1P4P12M2. try clear HP1P4P12M3. try clear HP1P4P12m4. try clear HP1P4P12m3. try clear HP1P4P12m2. try clear HP1P4P12m1. try clear HP1P2P3P4P7P12M1. try clear HP1P2P3P4P7P12M2. try clear HP1P2P3P4P7P12M3. try clear HP1P2P3P4P7P12m4. try clear HP1P2P3P4P7P12m3. try clear HP1P2P3P4P7P12m2. try clear HP1P2P3P4P7P12m1. 

assert(HP5P7P9P12P15m2 : rk(P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P4P7eq : rk(P1 :: P4 :: P7 :: nil) = 2) by (apply LP1P4P7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4P7Mtmp : rk(P1 :: P4 :: P7 :: nil) <= 2) by (solve_hyps_max HP1P4P7eq HP1P4P7M2).
	try assert(HP1P4P5P7P9P12P15eq : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) = 3) by (apply LP1P4P5P7P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P5P7P9P12P15mtmp : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P4P5P7P9P12P15eq HP1P4P5P7P9P12P15m3).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P1 :: P4 :: P7 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) ((P1 :: P4 :: P7 :: nil) ++ (P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P9P12P15mtmp;try rewrite HT2 in HP1P4P5P7P9P12P15mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: nil) (P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P7 :: nil) 3 1 2 HP1P4P5P7P9P12P15mtmp HP7mtmp HP1P4P7Mtmp Hincl); apply HT.
}
try clear HP1P4P7M1. try clear HP1P4P7M2. try clear HP1P4P7M3. try clear HP1P4P7m4. try clear HP1P4P7m3. try clear HP1P4P7m2. try clear HP1P4P7m1. 

assert(HP5P7P9P12P15M3 : rk(P5 :: P7 :: P9 :: P12 :: P15 :: nil) <= 3).
{
	try assert(HP5P7P9eq : rk(P5 :: P7 :: P9 :: nil) = 2) by (apply LP5P7P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5P7P9Mtmp : rk(P5 :: P7 :: P9 :: nil) <= 2) by (solve_hyps_max HP5P7P9eq HP5P7P9M2).
	try assert(HP7P12P15eq : rk(P7 :: P12 :: P15 :: nil) = 2) by (apply LP7P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P12P15Mtmp : rk(P7 :: P12 :: P15 :: nil) <= 2) by (solve_hyps_max HP7P12P15eq HP7P12P15M2).
	try assert(HP7eq : rk(P7 :: nil) = 1) by (apply LP7 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP7mtmp : rk(P7 :: nil) >= 1) by (solve_hyps_min HP7eq HP7m1).
	assert(Hincl : incl (P7 :: nil) (list_inter (P5 :: P7 :: P9 :: nil) (P7 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P5 :: P7 :: P9 :: P7 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P7 :: P9 :: P7 :: P12 :: P15 :: nil) ((P5 :: P7 :: P9 :: nil) ++ (P7 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P7 :: P9 :: nil) (P7 :: P12 :: P15 :: nil) (P7 :: nil) 2 2 1 HP5P7P9Mtmp HP7P12P15Mtmp HP7mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P7P9M1. try clear HP5P7P9M2. try clear HP5P7P9M3. try clear HP5P7P9m4. try clear HP5P7P9m3. try clear HP5P7P9m2. try clear HP5P7P9m1. try clear HP7P12P15M1. try clear HP7P12P15M2. try clear HP7P12P15M3. try clear HP7P12P15m4. try clear HP7P12P15m3. try clear HP7P12P15m2. try clear HP7P12P15m1. try clear HP7M1. try clear HP7M2. try clear HP7M3. try clear HP7m4. try clear HP7m3. try clear HP7m2. try clear HP7m1. 

assert(HP5P7P9P12P15m3 : rk(P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P4P7P12eq : rk(P1 :: P4 :: P7 :: P12 :: nil) = 3) by (apply LP1P4P7P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P7P12Mtmp : rk(P1 :: P4 :: P7 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P4P7P12eq HP1P4P7P12M3).
	try assert(HP1P4P5P7P9P12P15eq : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) = 4) by (apply LP1P4P5P7P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P5P7P9P12P15mtmp : rk(P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P4P5P7P9P12P15eq HP1P4P5P7P9P12P15m4).
	try assert(HP7P12eq : rk(P7 :: P12 :: nil) = 2) by (apply LP7P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP7P12mtmp : rk(P7 :: P12 :: nil) >= 2) by (solve_hyps_min HP7P12eq HP7P12m2).
	assert(Hincl : incl (P7 :: P12 :: nil) (list_inter (P1 :: P4 :: P7 :: P12 :: nil) (P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P1 :: P4 :: P7 :: P12 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P4 :: P7 :: P12 :: P5 :: P7 :: P9 :: P12 :: P15 :: nil) ((P1 :: P4 :: P7 :: P12 :: nil) ++ (P5 :: P7 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P7P9P12P15mtmp;try rewrite HT2 in HP1P4P5P7P9P12P15mtmp.
	assert(HT := rule_4 (P1 :: P4 :: P7 :: P12 :: nil) (P5 :: P7 :: P9 :: P12 :: P15 :: nil) (P7 :: P12 :: nil) 4 2 3 HP1P4P5P7P9P12P15mtmp HP7P12mtmp HP1P4P7P12Mtmp Hincl); apply HT.
}
try clear HP1P4P7P12M1. try clear HP1P4P7P12M2. try clear HP1P4P7P12M3. try clear HP1P4P7P12m4. try clear HP1P4P7P12m3. try clear HP1P4P7P12m2. try clear HP1P4P7P12m1. try clear HP7P12M1. try clear HP7P12M2. try clear HP7P12M3. try clear HP7P12m4. try clear HP7P12m3. try clear HP7P12m2. try clear HP7P12m1. try clear HP1P4P5P7P9P12P15M1. try clear HP1P4P5P7P9P12P15M2. try clear HP1P4P5P7P9P12P15M3. try clear HP1P4P5P7P9P12P15m4. try clear HP1P4P5P7P9P12P15m3. try clear HP1P4P5P7P9P12P15m2. try clear HP1P4P5P7P9P12P15m1. 

assert(HP1P2P4P5P9P11P12P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9P11P12P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9P11P12P15m4 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P4P11eq : rk(P1 :: P2 :: P4 :: P11 :: nil) = 4) by (apply LP1P2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11mtmp : rk(P1 :: P2 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11eq HP1P2P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) 4 4 HP1P2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P9P11P12P15m2 : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P9P11P12P15m3 : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P11P12P15eq HP1P2P4P5P9P11P12P15m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P9P11P12P15mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P4P5P9P11P12P15m4 : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P9P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP1P2P4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P9P11P12P15eq HP1P2P4P5P9P11P12P15m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P4P5P9P11P12P15mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP2P4P5P9P11P12P15m2 : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P5P9P11P12P15m3 : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P11P12P15eq HP1P2P4P5P9P11P12P15m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P4P5P9P11P12P15mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP4P5P9P11P12P15m2 : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P11P12P15eq HP1P2P4P5P9P11P12P15m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P5 :: nil) 3 1 2 HP1P2P4P5P9P11P12P15mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P9P11P12P15M1. try clear HP1P2P4P5P9P11P12P15M2. try clear HP1P2P4P5P9P11P12P15M3. try clear HP1P2P4P5P9P11P12P15m4. try clear HP1P2P4P5P9P11P12P15m3. try clear HP1P2P4P5P9P11P12P15m2. try clear HP1P2P4P5P9P11P12P15m1. 

assert(HP4P5P9P11P12P15m3 : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P5P9P11P12P15eq : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP2P4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P5P9P11P12P15mtmp : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P5P9P11P12P15eq HP2P4P5P9P11P12P15m3).
	try assert(HP4P9eq : rk(P4 :: P9 :: nil) = 2) by (apply LP4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P9mtmp : rk(P4 :: P9 :: nil) >= 2) by (solve_hyps_min HP4P9eq HP4P9m2).
	assert(Hincl : incl (P4 :: P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P2 :: P4 :: P9 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P5P9P11P12P15mtmp;try rewrite HT2 in HP2P4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P4 :: P9 :: nil) 3 2 2 HP2P4P5P9P11P12P15mtmp HP4P9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P5P9P11P12P15M1. try clear HP2P4P5P9P11P12P15M2. try clear HP2P4P5P9P11P12P15M3. try clear HP2P4P5P9P11P12P15m4. try clear HP2P4P5P9P11P12P15m3. try clear HP2P4P5P9P11P12P15m2. try clear HP2P4P5P9P11P12P15m1. 

assert(HP4P5P9P11P12P15m4 : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P4P5P9P11P12P15eq : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP1P4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P5P9P11P12P15mtmp : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P4P5P9P11P12P15eq HP1P4P5P9P11P12P15m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P1 :: P11 :: P12 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P9P11P12P15mtmp;try rewrite HT2 in HP1P4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P4P5P9P11P12P15mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P4P5P9P11P12P15M1. try clear HP1P4P5P9P11P12P15M2. try clear HP1P4P5P9P11P12P15M3. try clear HP1P4P5P9P11P12P15m4. try clear HP1P4P5P9P11P12P15m3. try clear HP1P4P5P9P11P12P15m2. try clear HP1P4P5P9P11P12P15m1. 

assert(HP1P2P4P5P9P12P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9P12P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P5P9P12P15m2 : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P5P9P12P15m3 : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P12P15eq HP1P2P4P5P9P12P15m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P12P15mtmp;try rewrite HT2 in HP1P2P4P5P9P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P4P5P9P12P15mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P9P12P15M1. try clear HP1P2P4P5P9P12P15M2. try clear HP1P2P4P5P9P12P15M3. try clear HP1P2P4P5P9P12P15m4. try clear HP1P2P4P5P9P12P15m3. try clear HP1P2P4P5P9P12P15m2. try clear HP1P2P4P5P9P12P15m1. 

assert(HP5P9P12P15m2 : rk(P5 :: P9 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P5P9P12P15eq : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) = 3) by (apply LP2P4P5P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P5P9P12P15mtmp : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P5P9P12P15eq HP2P4P5P9P12P15m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: P12 :: P15 :: nil) (P2 :: P4 :: P9 :: P5 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P5 :: P9 :: P12 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P5 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P5P9P12P15mtmp;try rewrite HT2 in HP2P4P5P9P12P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: P12 :: P15 :: nil) (P9 :: nil) 3 1 2 HP2P4P5P9P12P15mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P5P9P12P15M1. try clear HP2P4P5P9P12P15M2. try clear HP2P4P5P9P12P15M3. try clear HP2P4P5P9P12P15m4. try clear HP2P4P5P9P12P15m3. try clear HP2P4P5P9P12P15m2. try clear HP2P4P5P9P12P15m1. 

assert(HP5P9P12P15m3 : rk(P5 :: P9 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P5P9P11P12P15eq : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP4P5P9P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P5P9P11P12P15mtmp : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP4P5P9P11P12P15eq HP4P5P9P11P12P15m4).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P5 :: P9 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P9 :: P11 :: P12 :: P15 :: nil) (P4 :: P11 :: P15 :: P5 :: P9 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P5 :: P9 :: P12 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P5 :: P9 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P5P9P11P12P15mtmp;try rewrite HT2 in HP4P5P9P11P12P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P5 :: P9 :: P12 :: P15 :: nil) (P15 :: nil) 4 1 2 HP4P5P9P11P12P15mtmp HP15mtmp HP4P11P15Mtmp Hincl); apply HT.
}
try clear HP4P5P9P11P12P15M1. try clear HP4P5P9P11P12P15M2. try clear HP4P5P9P11P12P15M3. try clear HP4P5P9P11P12P15m4. try clear HP4P5P9P11P12P15m3. try clear HP4P5P9P11P12P15m2. try clear HP4P5P9P11P12P15m1. 

assert(HP5P9P12P15M3 : rk(P5 :: P9 :: P12 :: P15 :: nil) <= 3).
{
	try assert(HP5P7P9P12P15eq : rk(P5 :: P7 :: P9 :: P12 :: P15 :: nil) = 3) by (apply LP5P7P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P7P9P12P15Mtmp : rk(P5 :: P7 :: P9 :: P12 :: P15 :: nil) <= 3) by (solve_hyps_max HP5P7P9P12P15eq HP5P7P9P12P15M3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P5 :: P9 :: P12 :: P15 :: nil) (P5 :: P7 :: P9 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_6 (P5 :: P9 :: P12 :: P15 :: nil) (P5 :: P7 :: P9 :: P12 :: P15 :: nil) 3 3 HP5P7P9P12P15Mtmp Hcomp Hincl);apply HT.
}
try clear HP5P7P9P12P15M1. try clear HP5P7P9P12P15M2. try clear HP5P7P9P12P15M3. try clear HP5P7P9P12P15m4. try clear HP5P7P9P12P15m3. try clear HP5P7P9P12P15m2. try clear HP5P7P9P12P15m1. 

assert(HP1P2P4P5P11P12P13P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P11P12P13P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P11P12P13P15m4 : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P4P11eq : rk(P1 :: P2 :: P4 :: P11 :: nil) = 4) by (apply LP1P2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11mtmp : rk(P1 :: P2 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11eq HP1P2P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) 4 4 HP1P2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P11P12P13P15m2 : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P11P12P13P15m3 : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P2P4P5P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P11P12P13P15eq HP1P2P4P5P11P12P13P15m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P11P12P13P15mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P4P5P11P12P13P15m4 : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP1P2P4P5P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P11P12P13P15eq HP1P2P4P5P11P12P13P15m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P4P5P11P12P13P15mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP4P5P11P12P13P15m2 : rk(P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P2P4P5P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P11P12P13P15eq HP1P2P4P5P11P12P13P15m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P5 :: nil) 3 1 2 HP1P2P4P5P11P12P13P15mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP4P5P11P12P13P15m3 : rk(P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP1P2P4P5P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P11P12P13P15eq HP1P2P4P5P11P12P13P15m4).
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hincl : incl (P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P5 :: P12 :: nil) 4 2 3 HP1P2P4P5P11P12P13P15mtmp HP5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P11P12P13P15M1. try clear HP1P2P4P5P11P12P13P15M2. try clear HP1P2P4P5P11P12P13P15M3. try clear HP1P2P4P5P11P12P13P15m4. try clear HP1P2P4P5P11P12P13P15m3. try clear HP1P2P4P5P11P12P13P15m2. try clear HP1P2P4P5P11P12P13P15m1. 

assert(HP4P5P11P12P13P15m4 : rk(P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P4P5P11P12P13P15eq : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP1P4P5P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P5P11P12P13P15mtmp : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P4P5P11P12P13P15eq HP1P4P5P11P12P13P15m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P11 :: P12 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P11P12P13P15mtmp;try rewrite HT2 in HP1P4P5P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P4P5P11P12P13P15mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P4P5P11P12P13P15M1. try clear HP1P4P5P11P12P13P15M2. try clear HP1P4P5P11P12P13P15M3. try clear HP1P4P5P11P12P13P15m4. try clear HP1P4P5P11P12P13P15m3. try clear HP1P4P5P11P12P13P15m2. try clear HP1P4P5P11P12P13P15m1. 

assert(HP5P12P13P15m2 : rk(P5 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P5 :: P12 :: nil) (P5 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P5 :: P12 :: nil) (P5 :: P12 :: P13 :: P15 :: nil) 2 2 HP5P12mtmp Hcomp Hincl);apply HT.
}


assert(HP5P12P13P15M3 : rk(P5 :: P12 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP5P12P13eq : rk(P5 :: P12 :: P13 :: nil) = 2) by (apply LP5P12P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13Mtmp : rk(P5 :: P12 :: P13 :: nil) <= 2) by (solve_hyps_max HP5P12P13eq HP5P12P13M2).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15Mtmp : rk(P15 :: nil) <= 1) by (solve_hyps_max HP15eq HP15M1).
	assert(Hmtmp : rk(nil) >= 0) by (solve_hyps_min Hnuleq Hm).
	assert(Hincl : incl (nil) (list_inter (P5 :: P12 :: P13 :: nil) (P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P12 :: P13 :: P15 :: nil) (P5 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P12 :: P13 :: P15 :: nil) ((P5 :: P12 :: P13 :: nil) ++ (P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P12 :: P13 :: nil) (P15 :: nil) (nil) 2 1 0 HP5P12P13Mtmp HP15Mtmp Hmtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P12P13M1. try clear HP5P12P13M2. try clear HP5P12P13M3. try clear HP5P12P13m4. try clear HP5P12P13m3. try clear HP5P12P13m2. try clear HP5P12P13m1. 

assert(HP5P12P13P15m3 : rk(P5 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P5P11P12P13P15eq : rk(P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP4P5P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P5P11P12P13P15mtmp : rk(P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP4P5P11P12P13P15eq HP4P5P11P12P13P15m4).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P5 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P11 :: P12 :: P13 :: P15 :: nil) (P4 :: P11 :: P15 :: P5 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P5 :: P12 :: P13 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P5 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P5P11P12P13P15mtmp;try rewrite HT2 in HP4P5P11P12P13P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P5 :: P12 :: P13 :: P15 :: nil) (P15 :: nil) 4 1 2 HP4P5P11P12P13P15mtmp HP15mtmp HP4P11P15Mtmp Hincl); apply HT.
}
try clear HP4P5P11P12P13P15M1. try clear HP4P5P11P12P13P15M2. try clear HP4P5P11P12P13P15M3. try clear HP4P5P11P12P13P15m4. try clear HP4P5P11P12P13P15m3. try clear HP4P5P11P12P13P15m2. try clear HP4P5P11P12P13P15m1. 

assert(HP1P2P4P5P11P12P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P11P12P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P11P12P15m4 : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P4P11eq : rk(P1 :: P2 :: P4 :: P11 :: nil) = 4) by (apply LP1P2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11mtmp : rk(P1 :: P2 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11eq HP1P2P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) 4 4 HP1P2P4P11mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P11P12P15m2 : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P4P5P11P12P15m3 : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P11P12P15eq HP1P2P4P5P11P12P15m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P11P12P15mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P4P5P11P12P15m4 : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP1P2P4P5P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P11P12P15eq HP1P2P4P5P11P12P15m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P4P5P11P12P15mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}


assert(HP4P5P11P12P15m2 : rk(P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) = 3) by (apply LP1P2P4P5P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P11P12P15eq HP1P2P4P5P11P12P15m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P5 :: nil) 3 1 2 HP1P2P4P5P11P12P15mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP4P5P11P12P15m3 : rk(P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P11P12P15eq : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP1P2P4P5P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P11P12P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P11P12P15eq HP1P2P4P5P11P12P15m4).
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hincl : incl (P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P11P12P15mtmp;try rewrite HT2 in HP1P2P4P5P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P5 :: P12 :: nil) 4 2 3 HP1P2P4P5P11P12P15mtmp HP5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P4P5P11P12P15M1. try clear HP1P2P4P5P11P12P15M2. try clear HP1P2P4P5P11P12P15M3. try clear HP1P2P4P5P11P12P15m4. try clear HP1P2P4P5P11P12P15m3. try clear HP1P2P4P5P11P12P15m2. try clear HP1P2P4P5P11P12P15m1. 

assert(HP4P5P11P12P15m4 : rk(P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P4P5P11P12P15eq : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP1P4P5P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P5P11P12P15mtmp : rk(P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P4P5P11P12P15eq HP1P4P5P11P12P15m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P1 :: P11 :: P12 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P4 :: P5 :: P11 :: P12 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P4 :: P5 :: P11 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P11P12P15mtmp;try rewrite HT2 in HP1P4P5P11P12P15mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P4P5P11P12P15mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P4P5P11P12P15M1. try clear HP1P4P5P11P12P15M2. try clear HP1P4P5P11P12P15M3. try clear HP1P4P5P11P12P15m4. try clear HP1P4P5P11P12P15m3. try clear HP1P4P5P11P12P15m2. try clear HP1P4P5P11P12P15m1. 

assert(HP5P12P15m2 : rk(P5 :: P12 :: P15 :: nil) >= 2).
{
	try assert(HP5P12eq : rk(P5 :: P12 :: nil) = 2) by (apply LP5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12mtmp : rk(P5 :: P12 :: nil) >= 2) by (solve_hyps_min HP5P12eq HP5P12m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P5 :: P12 :: nil) (P5 :: P12 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P5 :: P12 :: nil) (P5 :: P12 :: P15 :: nil) 2 2 HP5P12mtmp Hcomp Hincl);apply HT.
}
try clear HP5P12M1. try clear HP5P12M2. try clear HP5P12M3. try clear HP5P12m4. try clear HP5P12m3. try clear HP5P12m2. try clear HP5P12m1. 

assert(HP5P12P15m3 : rk(P5 :: P12 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P5P11P12P15eq : rk(P4 :: P5 :: P11 :: P12 :: P15 :: nil) = 4) by (apply LP4P5P11P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P5P11P12P15mtmp : rk(P4 :: P5 :: P11 :: P12 :: P15 :: nil) >= 4) by (solve_hyps_min HP4P5P11P12P15eq HP4P5P11P12P15m4).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P5 :: P12 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P11 :: P12 :: P15 :: nil) (P4 :: P11 :: P15 :: P5 :: P12 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P5 :: P12 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P5 :: P12 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P5P11P12P15mtmp;try rewrite HT2 in HP4P5P11P12P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P5 :: P12 :: P15 :: nil) (P15 :: nil) 4 1 2 HP4P5P11P12P15mtmp HP15mtmp HP4P11P15Mtmp Hincl); apply HT.
}
try clear HP4P5P11P12P15M1. try clear HP4P5P11P12P15M2. try clear HP4P5P11P12P15M3. try clear HP4P5P11P12P15m4. try clear HP4P5P11P12P15m3. try clear HP4P5P11P12P15m2. try clear HP4P5P11P12P15m1. 

assert(HP1P2P4P5P9P11P12P13P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9P11P12P13P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP1P2P4P5P9P11P12P13P15m4 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P4P11eq : rk(P1 :: P2 :: P4 :: P11 :: nil) = 4) by (apply LP1P2P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P11mtmp : rk(P1 :: P2 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP1P2P4P11eq HP1P2P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: P11 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 4 4 HP1P2P4P11mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P4P11M1. try clear HP1P2P4P11M2. try clear HP1P2P4P11M3. try clear HP1P2P4P11m4. try clear HP1P2P4P11m3. try clear HP1P2P4P11m2. try clear HP1P2P4P11m1. 

assert(HP1P4P5P9P11P12P13P15m2 : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P4eq : rk(P1 :: P4 :: nil) = 2) by (apply LP1P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P4mtmp : rk(P1 :: P4 :: nil) >= 2) by (solve_hyps_min HP1P4eq HP1P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P4 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 2 2 HP1P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P4M1. try clear HP1P4M2. try clear HP1P4M3. try clear HP1P4m4. try clear HP1P4m3. try clear HP1P4m2. try clear HP1P4m1. 

assert(HP1P4P5P9P11P12P13P15m3 : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P11P12P13P15eq HP1P2P4P5P9P11P12P13P15m3).
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hincl : incl (P1 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P5 :: nil) 3 2 2 HP1P2P4P5P9P11P12P13P15mtmp HP1P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP1P4P5P9P11P12P13P15m4 : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP1P2P5P12eq : rk(P1 :: P2 :: P5 :: P12 :: nil) = 3) by (apply LP1P2P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P5P12Mtmp : rk(P1 :: P2 :: P5 :: P12 :: nil) <= 3) by (solve_hyps_max HP1P2P5P12eq HP1P2P5P12M3).
	try assert(HP1P2P4P5P9P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP1P2P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P2P4P5P9P11P12P13P15eq HP1P2P4P5P9P11P12P13P15m4).
	try assert(HP1P5P12eq : rk(P1 :: P5 :: P12 :: nil) = 3) by (apply LP1P5P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P12mtmp : rk(P1 :: P5 :: P12 :: nil) >= 3) by (solve_hyps_min HP1P5P12eq HP1P5P12m3).
	assert(Hincl : incl (P1 :: P5 :: P12 :: nil) (list_inter (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P12 :: P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: P12 :: nil) ++ (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: P12 :: nil) (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P5 :: P12 :: nil) 4 3 3 HP1P2P4P5P9P11P12P13P15mtmp HP1P5P12mtmp HP1P2P5P12Mtmp Hincl); apply HT.
}
try clear HP1P2P5P12M1. try clear HP1P2P5P12M2. try clear HP1P2P5P12M3. try clear HP1P2P5P12m4. try clear HP1P2P5P12m3. try clear HP1P2P5P12m2. try clear HP1P2P5P12m1. try clear HP1P5P12M1. try clear HP1P5P12M2. try clear HP1P5P12M3. try clear HP1P5P12m4. try clear HP1P5P12m3. try clear HP1P5P12m2. try clear HP1P5P12m1. 

assert(HP2P4P5P9P11P12P13P15m2 : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P5P9P11P12P13P15m3 : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P11P12P13P15eq HP1P2P4P5P9P11P12P13P15m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P4P5P9P11P12P13P15mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}


assert(HP4P5P9P11P12P13P15m2 : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P11P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P11P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P11P12P13P15eq HP1P2P4P5P9P11P12P13P15m3).
	try assert(HP5eq : rk(P5 :: nil) = 1) by (apply LP5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP5mtmp : rk(P5 :: nil) >= 1) by (solve_hyps_min HP5eq HP5m1).
	assert(Hincl : incl (P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P5 :: nil) 3 1 2 HP1P2P4P5P9P11P12P13P15mtmp HP5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP5M1. try clear HP5M2. try clear HP5M3. try clear HP5m4. try clear HP5m3. try clear HP5m2. try clear HP5m1. try clear HP1P2P4P5P9P11P12P13P15M1. try clear HP1P2P4P5P9P11P12P13P15M2. try clear HP1P2P4P5P9P11P12P13P15M3. try clear HP1P2P4P5P9P11P12P13P15m4. try clear HP1P2P4P5P9P11P12P13P15m3. try clear HP1P2P4P5P9P11P12P13P15m2. try clear HP1P2P4P5P9P11P12P13P15m1. 

assert(HP4P5P9P11P12P13P15m3 : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P5P9P11P12P13P15eq : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP2P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P5P9P11P12P13P15mtmp : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P5P9P11P12P13P15eq HP2P4P5P9P11P12P13P15m3).
	try assert(HP4P9eq : rk(P4 :: P9 :: nil) = 2) by (apply LP4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P9mtmp : rk(P4 :: P9 :: nil) >= 2) by (solve_hyps_min HP4P9eq HP4P9m2).
	assert(Hincl : incl (P4 :: P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P2 :: P4 :: P9 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP2P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P4 :: P9 :: nil) 3 2 2 HP2P4P5P9P11P12P13P15mtmp HP4P9mtmp HP2P4P9Mtmp Hincl); apply HT.
}


assert(HP4P5P9P11P12P13P15m4 : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P4P5P9P11P12P13P15eq : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP1P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P4P5P9P11P12P13P15mtmp : rk(P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP1P4P5P9P11P12P13P15eq HP1P4P5P9P11P12P13P15m4).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P11 :: P12 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP1P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P11 :: P12 :: nil) 4 2 2 HP1P4P5P9P11P12P13P15mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P4P5P9P11P12P13P15M1. try clear HP1P4P5P9P11P12P13P15M2. try clear HP1P4P5P9P11P12P13P15M3. try clear HP1P4P5P9P11P12P13P15m4. try clear HP1P4P5P9P11P12P13P15m3. try clear HP1P4P5P9P11P12P13P15m2. try clear HP1P4P5P9P11P12P13P15m1. 

assert(HP1P2P4P5P9P12P13P15m2 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P2eq : rk(P1 :: P2 :: nil) = 2) by (apply LP1P2 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2mtmp : rk(P1 :: P2 :: nil) >= 2) by (solve_hyps_min HP1P2eq HP1P2m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) 2 2 HP1P2mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2M1. try clear HP1P2M2. try clear HP1P2M3. try clear HP1P2m4. try clear HP1P2m3. try clear HP1P2m2. try clear HP1P2m1. 

assert(HP1P2P4P5P9P12P13P15m3 : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P4eq : rk(P1 :: P2 :: P4 :: nil) = 3) by (apply LP1P2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P4mtmp : rk(P1 :: P2 :: P4 :: nil) >= 3) by (solve_hyps_min HP1P2P4eq HP1P2P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P2 :: P4 :: nil) (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) 3 3 HP1P2P4mtmp Hcomp Hincl);apply HT.
}
try clear HP1P2P4M1. try clear HP1P2P4M2. try clear HP1P2P4M3. try clear HP1P2P4m4. try clear HP1P2P4m3. try clear HP1P2P4m2. try clear HP1P2P4m1. 

assert(HP2P4P5P9P12P13P15m2 : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P5P9P12P13P15m3 : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P2P5eq : rk(P1 :: P2 :: P5 :: nil) = 2) by (apply LP1P2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P2P5Mtmp : rk(P1 :: P2 :: P5 :: nil) <= 2) by (solve_hyps_max HP1P2P5eq HP1P2P5M2).
	try assert(HP1P2P4P5P9P12P13P15eq : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P2P4P5P9P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P2P4P5P9P12P13P15mtmp : rk(P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P2P4P5P9P12P13P15eq HP1P2P4P5P9P12P13P15m3).
	try assert(HP2P5eq : rk(P2 :: P5 :: nil) = 2) by (apply LP2P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P5mtmp : rk(P2 :: P5 :: nil) >= 2) by (solve_hyps_min HP2P5eq HP2P5m2).
	assert(Hincl : incl (P2 :: P5 :: nil) (list_inter (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P2 :: P5 :: P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) ((P1 :: P2 :: P5 :: nil) ++ (P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P2P4P5P9P12P13P15mtmp;try rewrite HT2 in HP1P2P4P5P9P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P2 :: P5 :: nil) (P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P2 :: P5 :: nil) 3 2 2 HP1P2P4P5P9P12P13P15mtmp HP2P5mtmp HP1P2P5Mtmp Hincl); apply HT.
}
try clear HP1P2P5M1. try clear HP1P2P5M2. try clear HP1P2P5M3. try clear HP1P2P5m4. try clear HP1P2P5m3. try clear HP1P2P5m2. try clear HP1P2P5m1. try clear HP2P5M1. try clear HP2P5M2. try clear HP2P5M3. try clear HP2P5m4. try clear HP2P5m3. try clear HP2P5m2. try clear HP2P5m1. try clear HP1P2P4P5P9P12P13P15M1. try clear HP1P2P4P5P9P12P13P15M2. try clear HP1P2P4P5P9P12P13P15M3. try clear HP1P2P4P5P9P12P13P15m4. try clear HP1P2P4P5P9P12P13P15m3. try clear HP1P2P4P5P9P12P13P15m2. try clear HP1P2P4P5P9P12P13P15m1. 

assert(HP5P9P12P13P15m2 : rk(P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P5P9P12P13P15eq : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP2P4P5P9P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P5P9P12P13P15mtmp : rk(P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P5P9P12P13P15eq HP2P4P5P9P12P13P15m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P2 :: P4 :: P9 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P5P9P12P13P15mtmp;try rewrite HT2 in HP2P4P5P9P12P13P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P9 :: nil) 3 1 2 HP2P4P5P9P12P13P15mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P5P9P12P13P15M1. try clear HP2P4P5P9P12P13P15M2. try clear HP2P4P5P9P12P13P15M3. try clear HP2P4P5P9P12P13P15m4. try clear HP2P4P5P9P12P13P15m3. try clear HP2P4P5P9P12P13P15m2. try clear HP2P4P5P9P12P13P15m1. 

assert(HP5P9P12P13P15m3 : rk(P5 :: P9 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P5P9P11P12P13P15eq : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P5P9P11P12P13P15mtmp : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP4P5P9P11P12P13P15eq HP4P5P9P11P12P13P15m4).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P4 :: P11 :: P15 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P15 :: nil) 4 1 2 HP4P5P9P11P12P13P15mtmp HP15mtmp HP4P11P15Mtmp Hincl); apply HT.
}


assert(HP5P9P12P13P15M3 : rk(P5 :: P9 :: P12 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP5P9P12P15eq : rk(P5 :: P9 :: P12 :: P15 :: nil) = 3) by (apply LP5P9P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P9P12P15Mtmp : rk(P5 :: P9 :: P12 :: P15 :: nil) <= 3) by (solve_hyps_max HP5P9P12P15eq HP5P9P12P15M3).
	try assert(HP5P12P13P15eq : rk(P5 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP5P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P13P15Mtmp : rk(P5 :: P12 :: P13 :: P15 :: nil) <= 3) by (solve_hyps_max HP5P12P13P15eq HP5P12P13P15M3).
	try assert(HP5P12P15eq : rk(P5 :: P12 :: P15 :: nil) = 3) by (apply LP5P12P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P12P15mtmp : rk(P5 :: P12 :: P15 :: nil) >= 3) by (solve_hyps_min HP5P12P15eq HP5P12P15m3).
	assert(Hincl : incl (P5 :: P12 :: P15 :: nil) (list_inter (P5 :: P9 :: P12 :: P15 :: nil) (P5 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P5 :: P9 :: P12 :: P15 :: P5 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P5 :: P9 :: P12 :: P15 :: P5 :: P12 :: P13 :: P15 :: nil) ((P5 :: P9 :: P12 :: P15 :: nil) ++ (P5 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P5 :: P9 :: P12 :: P15 :: nil) (P5 :: P12 :: P13 :: P15 :: nil) (P5 :: P12 :: P15 :: nil) 3 3 3 HP5P9P12P15Mtmp HP5P12P13P15Mtmp HP5P12P15mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP5P9P12P15M1. try clear HP5P9P12P15M2. try clear HP5P9P12P15M3. try clear HP5P9P12P15m4. try clear HP5P9P12P15m3. try clear HP5P9P12P15m2. try clear HP5P9P12P15m1. try clear HP5P12P13P15M1. try clear HP5P12P13P15M2. try clear HP5P12P13P15M3. try clear HP5P12P13P15m4. try clear HP5P12P13P15m3. try clear HP5P12P13P15m2. try clear HP5P12P13P15m1. try clear HP5P12P15M1. try clear HP5P12P15M2. try clear HP5P12P15M3. try clear HP5P12P15m4. try clear HP5P12P15m3. try clear HP5P12P15m2. try clear HP5P12P15m1. 

assert(HP1P5P9P11P12P13P15m2 : rk(P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP1P5eq : rk(P1 :: P5 :: nil) = 2) by (apply LP1P5 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5mtmp : rk(P1 :: P5 :: nil) >= 2) by (solve_hyps_min HP1P5eq HP1P5m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: nil) (P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: nil) (P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 2 2 HP1P5mtmp Hcomp Hincl);apply HT.
}
try clear HP1P5M1. try clear HP1P5M2. try clear HP1P5M3. try clear HP1P5m4. try clear HP1P5m3. try clear HP1P5m2. try clear HP1P5m1. 

assert(HP1P5P9P11P12P13P15m3 : rk(P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P5P9eq : rk(P1 :: P5 :: P9 :: nil) = 3) by (apply LP1P5P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP1P5P9mtmp : rk(P1 :: P5 :: P9 :: nil) >= 3) by (solve_hyps_min HP1P5P9eq HP1P5P9m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P1 :: P5 :: P9 :: nil) (P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P1 :: P5 :: P9 :: nil) (P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) 3 3 HP1P5P9mtmp Hcomp Hincl);apply HT.
}
try clear HP1P5P9M1. try clear HP1P5P9M2. try clear HP1P5P9M3. try clear HP1P5P9m4. try clear HP1P5P9m3. try clear HP1P5P9m2. try clear HP1P5P9m1. 

assert(HP5P9P11P12P13P15m2 : rk(P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P5P9P11P12P13P15eq : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP2P4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P5P9P11P12P13P15mtmp : rk(P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P5P9P11P12P13P15eq HP2P4P5P9P11P12P13P15m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P2 :: P4 :: P9 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP2P4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P9 :: nil) 3 1 2 HP2P4P5P9P11P12P13P15mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P5P9P11P12P13P15M1. try clear HP2P4P5P9P11P12P13P15M2. try clear HP2P4P5P9P11P12P13P15M3. try clear HP2P4P5P9P11P12P13P15m4. try clear HP2P4P5P9P11P12P13P15m3. try clear HP2P4P5P9P11P12P13P15m2. try clear HP2P4P5P9P11P12P13P15m1. 

assert(HP5P9P11P12P13P15m3 : rk(P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP1P11P12eq : rk(P1 :: P11 :: P12 :: nil) = 2) by (apply LP1P11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P11P12Mtmp : rk(P1 :: P11 :: P12 :: nil) <= 2) by (solve_hyps_max HP1P11P12eq HP1P11P12M2).
	try assert(HP1P5P9P11P12P13P15eq : rk(P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP1P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP1P5P9P11P12P13P15mtmp : rk(P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP1P5P9P11P12P13P15eq HP1P5P9P11P12P13P15m3).
	try assert(HP11P12eq : rk(P11 :: P12 :: nil) = 2) by (apply LP11P12 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P12mtmp : rk(P11 :: P12 :: nil) >= 2) by (solve_hyps_min HP11P12eq HP11P12m2).
	assert(Hincl : incl (P11 :: P12 :: nil) (list_inter (P1 :: P11 :: P12 :: nil) (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P1 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P1 :: P11 :: P12 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P1 :: P11 :: P12 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P1 :: P11 :: P12 :: nil) ++ (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP1P5P9P11P12P13P15mtmp;try rewrite HT2 in HP1P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P1 :: P11 :: P12 :: nil) (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P11 :: P12 :: nil) 3 2 2 HP1P5P9P11P12P13P15mtmp HP11P12mtmp HP1P11P12Mtmp Hincl); apply HT.
}
try clear HP1P11P12M1. try clear HP1P11P12M2. try clear HP1P11P12M3. try clear HP1P11P12m4. try clear HP1P11P12m3. try clear HP1P11P12m2. try clear HP1P11P12m1. try clear HP11P12M1. try clear HP11P12M2. try clear HP11P12M3. try clear HP11P12m4. try clear HP11P12m3. try clear HP11P12m2. try clear HP11P12m1. try clear HP1P5P9P11P12P13P15M1. try clear HP1P5P9P11P12P13P15M2. try clear HP1P5P9P11P12P13P15M3. try clear HP1P5P9P11P12P13P15m4. try clear HP1P5P9P11P12P13P15m3. try clear HP1P5P9P11P12P13P15m2. try clear HP1P5P9P11P12P13P15m1. 

assert(HP5P9P11P12P13P15m4 : rk(P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P5P9P11P12P13P15eq : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP4P5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P5P9P11P12P13P15mtmp : rk(P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP4P5P9P11P12P13P15eq HP4P5P9P11P12P13P15m4).
	try assert(HP11P15eq : rk(P11 :: P15 :: nil) = 2) by (apply LP11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P15mtmp : rk(P11 :: P15 :: nil) >= 2) by (solve_hyps_min HP11P15eq HP11P15m2).
	assert(Hincl : incl (P11 :: P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P4 :: P11 :: P15 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P5P9P11P12P13P15mtmp;try rewrite HT2 in HP4P5P9P11P12P13P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P11 :: P15 :: nil) 4 2 2 HP4P5P9P11P12P13P15mtmp HP11P15mtmp HP4P11P15Mtmp Hincl); apply HT.
}
try clear HP11P15M1. try clear HP11P15M2. try clear HP11P15M3. try clear HP11P15m4. try clear HP11P15m3. try clear HP11P15m2. try clear HP11P15m1. try clear HP4P5P9P11P12P13P15M1. try clear HP4P5P9P11P12P13P15M2. try clear HP4P5P9P11P12P13P15M3. try clear HP4P5P9P11P12P13P15m4. try clear HP4P5P9P11P12P13P15m3. try clear HP4P5P9P11P12P13P15m2. try clear HP4P5P9P11P12P13P15m1. 

assert(HP9P13P15m2 : rk(P9 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P9P11P13P15eq : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) = 3) by (apply LP4P9P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P9P11P13P15mtmp : rk(P4 :: P9 :: P11 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP4P9P11P13P15eq HP4P9P11P13P15m3).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P9 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P9 :: P11 :: P13 :: P15 :: nil) (P4 :: P11 :: P15 :: P9 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P9 :: P13 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P9 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P9P11P13P15mtmp;try rewrite HT2 in HP4P9P11P13P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P9 :: P13 :: P15 :: nil) (P15 :: nil) 3 1 2 HP4P9P11P13P15mtmp HP15mtmp HP4P11P15Mtmp Hincl); apply HT.
}
try clear HP4P9P11P13P15M1. try clear HP4P9P11P13P15M2. try clear HP4P9P11P13P15M3. try clear HP4P9P11P13P15m4. try clear HP4P9P11P13P15m3. try clear HP4P9P11P13P15m2. try clear HP4P9P11P13P15m1. 

assert(HP9P13P15M2 : rk(P9 :: P13 :: P15 :: nil) <= 2).
{
	try assert(HP9P11P13P15eq : rk(P9 :: P11 :: P13 :: P15 :: nil) = 3) by (apply LP9P11P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP9P11P13P15Mtmp : rk(P9 :: P11 :: P13 :: P15 :: nil) <= 3) by (solve_hyps_max HP9P11P13P15eq HP9P11P13P15M3).
	try assert(HP5P9P12P13P15eq : rk(P5 :: P9 :: P12 :: P13 :: P15 :: nil) = 3) by (apply LP5P9P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P9P12P13P15Mtmp : rk(P5 :: P9 :: P12 :: P13 :: P15 :: nil) <= 3) by (solve_hyps_max HP5P9P12P13P15eq HP5P9P12P13P15M3).
	try assert(HP5P9P11P12P13P15eq : rk(P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) = 4) by (apply LP5P9P11P12P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP5P9P11P12P13P15mtmp : rk(P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP5P9P11P12P13P15eq HP5P9P11P12P13P15m4).
	assert(Hincl : incl (P9 :: P13 :: P15 :: nil) (list_inter (P9 :: P11 :: P13 :: P15 :: nil) (P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P5 :: P9 :: P11 :: P12 :: P13 :: P15 :: nil) (P9 :: P11 :: P13 :: P15 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P9 :: P11 :: P13 :: P15 :: P5 :: P9 :: P12 :: P13 :: P15 :: nil) ((P9 :: P11 :: P13 :: P15 :: nil) ++ (P5 :: P9 :: P12 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP5P9P11P12P13P15mtmp;try rewrite HT2 in HP5P9P11P12P13P15mtmp.
	assert(HT := rule_3 (P9 :: P11 :: P13 :: P15 :: nil) (P5 :: P9 :: P12 :: P13 :: P15 :: nil) (P9 :: P13 :: P15 :: nil) 3 3 4 HP9P11P13P15Mtmp HP5P9P12P13P15Mtmp HP5P9P11P12P13P15mtmp Hincl);apply HT.
}
try clear HP9P11P13P15M1. try clear HP9P11P13P15M2. try clear HP9P11P13P15M3. try clear HP9P11P13P15m4. try clear HP9P11P13P15m3. try clear HP9P11P13P15m2. try clear HP9P11P13P15m1. try clear HP5P9P12P13P15M1. try clear HP5P9P12P13P15M2. try clear HP5P9P12P13P15M3. try clear HP5P9P12P13P15m4. try clear HP5P9P12P13P15m3. try clear HP5P9P12P13P15m2. try clear HP5P9P12P13P15m1. try clear HP5P9P11P12P13P15M1. try clear HP5P9P11P12P13P15M2. try clear HP5P9P11P12P13P15M3. try clear HP5P9P11P12P13P15m4. try clear HP5P9P11P12P13P15m3. try clear HP5P9P11P12P13P15m2. try clear HP5P9P11P12P13P15m1. 

assert(HP8P9P10P13P15m2 : rk(P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P8P9P10P13P15eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) = 3) by (apply LP2P4P8P9P10P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P8P9P10P13P15mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P8P9P10P13P15eq HP2P4P8P9P10P13P15m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P2 :: P4 :: P9 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P8P9P10P13P15mtmp;try rewrite HT2 in HP2P4P8P9P10P13P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P9 :: nil) 3 1 2 HP2P4P8P9P10P13P15mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}


assert(HP8P9P10P13P15M3 : rk(P8 :: P9 :: P10 :: P13 :: P15 :: nil) <= 3).
{
	try assert(HP8P9P10eq : rk(P8 :: P9 :: P10 :: nil) = 2) by (apply LP8P9P10 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8P9P10Mtmp : rk(P8 :: P9 :: P10 :: nil) <= 2) by (solve_hyps_max HP8P9P10eq HP8P9P10M2).
	try assert(HP9P13P15eq : rk(P9 :: P13 :: P15 :: nil) = 2) by (apply LP9P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP9P13P15Mtmp : rk(P9 :: P13 :: P15 :: nil) <= 2) by (solve_hyps_max HP9P13P15eq HP9P13P15M2).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P8 :: P9 :: P10 :: nil) (P9 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P8 :: P9 :: P10 :: P9 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P8 :: P9 :: P10 :: P9 :: P13 :: P15 :: nil) ((P8 :: P9 :: P10 :: nil) ++ (P9 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P8 :: P9 :: P10 :: nil) (P9 :: P13 :: P15 :: nil) (P9 :: nil) 2 2 1 HP8P9P10Mtmp HP9P13P15Mtmp HP9mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP8P9P10M1. try clear HP8P9P10M2. try clear HP8P9P10M3. try clear HP8P9P10m4. try clear HP8P9P10m3. try clear HP8P9P10m2. try clear HP8P9P10m1. try clear HP9P13P15M1. try clear HP9P13P15M2. try clear HP9P13P15M3. try clear HP9P13P15m4. try clear HP9P13P15m3. try clear HP9P13P15m2. try clear HP9P13P15m1. 

assert(HP8P9P10P13P15m3 : rk(P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P9P13eq : rk(P2 :: P4 :: P9 :: P13 :: nil) = 3) by (apply LP2P4P9P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P9P13Mtmp : rk(P2 :: P4 :: P9 :: P13 :: nil) <= 3) by (solve_hyps_max HP2P4P9P13eq HP2P4P9P13M3).
	try assert(HP2P4P8P9P10P13P15eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) = 4) by (apply LP2P4P8P9P10P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P8P9P10P13P15mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) >= 4) by (solve_hyps_min HP2P4P8P9P10P13P15eq HP2P4P8P9P10P13P15m4).
	try assert(HP9P13eq : rk(P9 :: P13 :: nil) = 2) by (apply LP9P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP9P13mtmp : rk(P9 :: P13 :: nil) >= 2) by (solve_hyps_min HP9P13eq HP9P13m2).
	assert(Hincl : incl (P9 :: P13 :: nil) (list_inter (P2 :: P4 :: P9 :: P13 :: nil) (P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P2 :: P4 :: P9 :: P13 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P13 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) ((P2 :: P4 :: P9 :: P13 :: nil) ++ (P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P8P9P10P13P15mtmp;try rewrite HT2 in HP2P4P8P9P10P13P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: P13 :: nil) (P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P9 :: P13 :: nil) 4 2 3 HP2P4P8P9P10P13P15mtmp HP9P13mtmp HP2P4P9P13Mtmp Hincl); apply HT.
}
try clear HP2P4P9P13M1. try clear HP2P4P9P13M2. try clear HP2P4P9P13M3. try clear HP2P4P9P13m4. try clear HP2P4P9P13m3. try clear HP2P4P9P13m2. try clear HP2P4P9P13m1. try clear HP9P13M1. try clear HP9P13M2. try clear HP9P13M3. try clear HP9P13m4. try clear HP9P13m3. try clear HP9P13m2. try clear HP9P13m1. try clear HP2P4P8P9P10P13P15M1. try clear HP2P4P8P9P10P13P15M2. try clear HP2P4P8P9P10P13P15M3. try clear HP2P4P8P9P10P13P15m4. try clear HP2P4P8P9P10P13P15m3. try clear HP2P4P8P9P10P13P15m2. try clear HP2P4P8P9P10P13P15m1. 

assert(HP2P3P4P8P9P10P11P13P14P15m2 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P9P10P11P13P14P15m3 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P3P4P8P9P10P11P13P14P15m4 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 4).
{
	try assert(HP2P3P4P11eq : rk(P2 :: P3 :: P4 :: P11 :: nil) = 4) by (apply LP2P3P4P11 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P11mtmp : rk(P2 :: P3 :: P4 :: P11 :: nil) >= 4) by (solve_hyps_min HP2P3P4P11eq HP2P3P4P11m4).
	assert(Hcomp : 4 <= 4) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: P11 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: P11 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) 4 4 HP2P3P4P11mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3P4P11M1. try clear HP2P3P4P11M2. try clear HP2P3P4P11M3. try clear HP2P3P4P11m4. try clear HP2P3P4P11m3. try clear HP2P3P4P11m2. try clear HP2P3P4P11m1. 

assert(HP3P4P8P9P10P11P13P14P15m2 : rk(P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP3P4eq : rk(P3 :: P4 :: nil) = 2) by (apply LP3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P4mtmp : rk(P3 :: P4 :: nil) >= 2) by (solve_hyps_min HP3P4eq HP3P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P3 :: P4 :: nil) (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P3 :: P4 :: nil) (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) 2 2 HP3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP3P4M1. try clear HP3P4M2. try clear HP3P4M3. try clear HP3P4m4. try clear HP3P4m3. try clear HP3P4m2. try clear HP3P4m1. 

assert(HP3P4P8P9P10P11P13P14P15m3 : rk(P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P9P10P11P13P14P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 3) by (apply LP2P3P4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P11P13P14P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P9P10P11P13P14P15eq HP2P3P4P8P9P10P11P13P14P15m3).
	try assert(HP3P8eq : rk(P3 :: P8 :: nil) = 2) by (apply LP3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP3P8mtmp : rk(P3 :: P8 :: nil) >= 2) by (solve_hyps_min HP3P8eq HP3P8m2).
	assert(Hincl : incl (P3 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P2 :: P3 :: P8 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P3 :: P8 :: nil) 3 2 2 HP2P3P4P8P9P10P11P13P14P15mtmp HP3P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP3P8M1. try clear HP3P8M2. try clear HP3P8M3. try clear HP3P8m4. try clear HP3P8m3. try clear HP3P8m2. try clear HP3P8m1. 

assert(HP3P4P8P9P10P11P13P14P15m4 : rk(P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 4).
{
	try assert(HP2P11P13eq : rk(P2 :: P11 :: P13 :: nil) = 2) by (apply LP2P11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P11P13Mtmp : rk(P2 :: P11 :: P13 :: nil) <= 2) by (solve_hyps_max HP2P11P13eq HP2P11P13M2).
	try assert(HP2P3P4P8P9P10P11P13P14P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 4) by (apply LP2P3P4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P11P13P14P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 4) by (solve_hyps_min HP2P3P4P8P9P10P11P13P14P15eq HP2P3P4P8P9P10P11P13P14P15m4).
	try assert(HP11P13eq : rk(P11 :: P13 :: nil) = 2) by (apply LP11P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P13mtmp : rk(P11 :: P13 :: nil) >= 2) by (solve_hyps_min HP11P13eq HP11P13m2).
	assert(Hincl : incl (P11 :: P13 :: nil) (list_inter (P2 :: P11 :: P13 :: nil) (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P2 :: P11 :: P13 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P11 :: P13 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) ((P2 :: P11 :: P13 :: nil) ++ (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P11 :: P13 :: nil) (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P11 :: P13 :: nil) 4 2 2 HP2P3P4P8P9P10P11P13P14P15mtmp HP11P13mtmp HP2P11P13Mtmp Hincl); apply HT.
}
try clear HP2P11P13M1. try clear HP2P11P13M2. try clear HP2P11P13M3. try clear HP2P11P13m4. try clear HP2P11P13m3. try clear HP2P11P13m2. try clear HP2P11P13m1. try clear HP11P13M1. try clear HP11P13M2. try clear HP11P13M3. try clear HP11P13m4. try clear HP11P13m3. try clear HP11P13m2. try clear HP11P13m1. 

assert(HP2P4P8P9P10P11P13P14P15m2 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}


assert(HP2P4P8P9P10P11P13P14P15m3 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P9P10P11P13P14P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 3) by (apply LP2P3P4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P11P13P14P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P9P10P11P13P14P15eq HP2P3P4P8P9P10P11P13P14P15m3).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P2 :: P8 :: nil) 3 2 2 HP2P3P4P8P9P10P11P13P14P15mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}


assert(HP4P8P9P10P11P13P14P15m2 : rk(P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P9P10P11P13P14P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 3) by (apply LP2P3P4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P11P13P14P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P9P10P11P13P14P15eq HP2P3P4P8P9P10P11P13P14P15m3).
	try assert(HP8eq : rk(P8 :: nil) = 1) by (apply LP8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP8mtmp : rk(P8 :: nil) >= 1) by (solve_hyps_min HP8eq HP8m1).
	assert(Hincl : incl (P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P2 :: P3 :: P8 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P8 :: nil) 3 1 2 HP2P3P4P8P9P10P11P13P14P15mtmp HP8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP8M1. try clear HP8M2. try clear HP8M3. try clear HP8m4. try clear HP8m3. try clear HP8m2. try clear HP8m1. try clear HP2P3P4P8P9P10P11P13P14P15M1. try clear HP2P3P4P8P9P10P11P13P14P15M2. try clear HP2P3P4P8P9P10P11P13P14P15M3. try clear HP2P3P4P8P9P10P11P13P14P15m4. try clear HP2P3P4P8P9P10P11P13P14P15m3. try clear HP2P3P4P8P9P10P11P13P14P15m2. try clear HP2P3P4P8P9P10P11P13P14P15m1. 

assert(HP4P8P9P10P11P13P14P15m3 : rk(P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P8P9P10P11P13P14P15eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 3) by (apply LP2P4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P8P9P10P11P13P14P15mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P8P9P10P11P13P14P15eq HP2P4P8P9P10P11P13P14P15m3).
	try assert(HP4P9eq : rk(P4 :: P9 :: nil) = 2) by (apply LP4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP4P9mtmp : rk(P4 :: P9 :: nil) >= 2) by (solve_hyps_min HP4P9eq HP4P9m2).
	assert(Hincl : incl (P4 :: P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P2 :: P4 :: P9 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP2P4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P4 :: P9 :: nil) 3 2 2 HP2P4P8P9P10P11P13P14P15mtmp HP4P9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP4P9M1. try clear HP4P9M2. try clear HP4P9M3. try clear HP4P9m4. try clear HP4P9m3. try clear HP4P9m2. try clear HP4P9m1. try clear HP2P4P8P9P10P11P13P14P15M1. try clear HP2P4P8P9P10P11P13P14P15M2. try clear HP2P4P8P9P10P11P13P14P15M3. try clear HP2P4P8P9P10P11P13P14P15m4. try clear HP2P4P8P9P10P11P13P14P15m3. try clear HP2P4P8P9P10P11P13P14P15m2. try clear HP2P4P8P9P10P11P13P14P15m1. 

assert(HP4P8P9P10P11P13P14P15m4 : rk(P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 4).
{
	try assert(HP3P11P14eq : rk(P3 :: P11 :: P14 :: nil) = 2) by (apply LP3P11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P11P14Mtmp : rk(P3 :: P11 :: P14 :: nil) <= 2) by (solve_hyps_max HP3P11P14eq HP3P11P14M2).
	try assert(HP3P4P8P9P10P11P13P14P15eq : rk(P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 4) by (apply LP3P4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP3P4P8P9P10P11P13P14P15mtmp : rk(P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 4) by (solve_hyps_min HP3P4P8P9P10P11P13P14P15eq HP3P4P8P9P10P11P13P14P15m4).
	try assert(HP11P14eq : rk(P11 :: P14 :: nil) = 2) by (apply LP11P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP11P14mtmp : rk(P11 :: P14 :: nil) >= 2) by (solve_hyps_min HP11P14eq HP11P14m2).
	assert(Hincl : incl (P11 :: P14 :: nil) (list_inter (P3 :: P11 :: P14 :: nil) (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P3 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P3 :: P11 :: P14 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P3 :: P11 :: P14 :: P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) ((P3 :: P11 :: P14 :: nil) ++ (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP3P4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP3P4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P3 :: P11 :: P14 :: nil) (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P11 :: P14 :: nil) 4 2 2 HP3P4P8P9P10P11P13P14P15mtmp HP11P14mtmp HP3P11P14Mtmp Hincl); apply HT.
}
try clear HP3P11P14M1. try clear HP3P11P14M2. try clear HP3P11P14M3. try clear HP3P11P14m4. try clear HP3P11P14m3. try clear HP3P11P14m2. try clear HP3P11P14m1. try clear HP11P14M1. try clear HP11P14M2. try clear HP11P14M3. try clear HP11P14m4. try clear HP11P14m3. try clear HP11P14m2. try clear HP11P14m1. try clear HP3P4P8P9P10P11P13P14P15M1. try clear HP3P4P8P9P10P11P13P14P15M2. try clear HP3P4P8P9P10P11P13P14P15M3. try clear HP3P4P8P9P10P11P13P14P15m4. try clear HP3P4P8P9P10P11P13P14P15m3. try clear HP3P4P8P9P10P11P13P14P15m2. try clear HP3P4P8P9P10P11P13P14P15m1. 

assert(HP2P3P4P8P9P10P13P14P15m2 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP2P3eq : rk(P2 :: P3 :: nil) = 2) by (apply LP2P3 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3mtmp : rk(P2 :: P3 :: nil) >= 2) by (solve_hyps_min HP2P3eq HP2P3m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) 2 2 HP2P3mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3M1. try clear HP2P3M2. try clear HP2P3M3. try clear HP2P3m4. try clear HP2P3m3. try clear HP2P3m2. try clear HP2P3m1. 

assert(HP2P3P4P8P9P10P13P14P15m3 : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P4eq : rk(P2 :: P3 :: P4 :: nil) = 3) by (apply LP2P3P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P4mtmp : rk(P2 :: P3 :: P4 :: nil) >= 3) by (solve_hyps_min HP2P3P4eq HP2P3P4m3).
	assert(Hcomp : 3 <= 3) by (repeat constructor).
	assert(Hincl : incl (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P3 :: P4 :: nil) (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) 3 3 HP2P3P4mtmp Hcomp Hincl);apply HT.
}
try clear HP2P3P4M1. try clear HP2P3P4M2. try clear HP2P3P4M3. try clear HP2P3P4m4. try clear HP2P3P4m3. try clear HP2P3P4m2. try clear HP2P3P4m1. 

assert(HP2P4P8P9P10P13P14P15m2 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP2P4eq : rk(P2 :: P4 :: nil) = 2) by (apply LP2P4 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4mtmp : rk(P2 :: P4 :: nil) >= 2) by (solve_hyps_min HP2P4eq HP2P4m2).
	assert(Hcomp : 2 <= 2) by (repeat constructor).
	assert(Hincl : incl (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil)) by (repeat clear_all_rk;my_inO).
	assert(HT := rule_5 (P2 :: P4 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) 2 2 HP2P4mtmp Hcomp Hincl);apply HT.
}
try clear HP2P4M1. try clear HP2P4M2. try clear HP2P4M3. try clear HP2P4m4. try clear HP2P4m3. try clear HP2P4m2. try clear HP2P4m1. 

assert(HP2P4P8P9P10P13P14P15m3 : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP2P3P8eq : rk(P2 :: P3 :: P8 :: nil) = 2) by (apply LP2P3P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P3P8Mtmp : rk(P2 :: P3 :: P8 :: nil) <= 2) by (solve_hyps_max HP2P3P8eq HP2P3P8M2).
	try assert(HP2P3P4P8P9P10P13P14P15eq : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) = 3) by (apply LP2P3P4P8P9P10P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P3P4P8P9P10P13P14P15mtmp : rk(P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P3P4P8P9P10P13P14P15eq HP2P3P4P8P9P10P13P14P15m3).
	try assert(HP2P8eq : rk(P2 :: P8 :: nil) = 2) by (apply LP2P8 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P8mtmp : rk(P2 :: P8 :: nil) >= 2) by (solve_hyps_min HP2P8eq HP2P8m2).
	assert(Hincl : incl (P2 :: P8 :: nil) (list_inter (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P3 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P3 :: P8 :: P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) ((P2 :: P3 :: P8 :: nil) ++ (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P3P4P8P9P10P13P14P15mtmp;try rewrite HT2 in HP2P3P4P8P9P10P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P3 :: P8 :: nil) (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) (P2 :: P8 :: nil) 3 2 2 HP2P3P4P8P9P10P13P14P15mtmp HP2P8mtmp HP2P3P8Mtmp Hincl); apply HT.
}
try clear HP2P3P8M1. try clear HP2P3P8M2. try clear HP2P3P8M3. try clear HP2P3P8m4. try clear HP2P3P8m3. try clear HP2P3P8m2. try clear HP2P3P8m1. try clear HP2P8M1. try clear HP2P8M2. try clear HP2P8M3. try clear HP2P8m4. try clear HP2P8m3. try clear HP2P8m2. try clear HP2P8m1. try clear HP2P3P4P8P9P10P13P14P15M1. try clear HP2P3P4P8P9P10P13P14P15M2. try clear HP2P3P4P8P9P10P13P14P15M3. try clear HP2P3P4P8P9P10P13P14P15m4. try clear HP2P3P4P8P9P10P13P14P15m3. try clear HP2P3P4P8P9P10P13P14P15m2. try clear HP2P3P4P8P9P10P13P14P15m1. 

assert(HP8P9P10P13P14P15m2 : rk(P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 2).
{
	try assert(HP2P4P9eq : rk(P2 :: P4 :: P9 :: nil) = 2) by (apply LP2P4P9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP2P4P9Mtmp : rk(P2 :: P4 :: P9 :: nil) <= 2) by (solve_hyps_max HP2P4P9eq HP2P4P9M2).
	try assert(HP2P4P8P9P10P13P14P15eq : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) = 3) by (apply LP2P4P8P9P10P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP2P4P8P9P10P13P14P15mtmp : rk(P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 3) by (solve_hyps_min HP2P4P8P9P10P13P14P15eq HP2P4P8P9P10P13P14P15m3).
	try assert(HP9eq : rk(P9 :: nil) = 1) by (apply LP9 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) ;try assumption).
	assert(HP9mtmp : rk(P9 :: nil) >= 1) by (solve_hyps_min HP9eq HP9m1).
	assert(Hincl : incl (P9 :: nil) (list_inter (P2 :: P4 :: P9 :: nil) (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P2 :: P4 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) (P2 :: P4 :: P9 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P2 :: P4 :: P9 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) ((P2 :: P4 :: P9 :: nil) ++ (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP2P4P8P9P10P13P14P15mtmp;try rewrite HT2 in HP2P4P8P9P10P13P14P15mtmp.
	assert(HT := rule_4 (P2 :: P4 :: P9 :: nil) (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) (P9 :: nil) 3 1 2 HP2P4P8P9P10P13P14P15mtmp HP9mtmp HP2P4P9Mtmp Hincl); apply HT.
}
try clear HP2P4P9M1. try clear HP2P4P9M2. try clear HP2P4P9M3. try clear HP2P4P9m4. try clear HP2P4P9m3. try clear HP2P4P9m2. try clear HP2P4P9m1. try clear HP9M1. try clear HP9M2. try clear HP9M3. try clear HP9m4. try clear HP9m3. try clear HP9m2. try clear HP9m1. try clear HP2P4P8P9P10P13P14P15M1. try clear HP2P4P8P9P10P13P14P15M2. try clear HP2P4P8P9P10P13P14P15M3. try clear HP2P4P8P9P10P13P14P15m4. try clear HP2P4P8P9P10P13P14P15m3. try clear HP2P4P8P9P10P13P14P15m2. try clear HP2P4P8P9P10P13P14P15m1. 

assert(HP8P9P10P13P14P15m3 : rk(P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) >= 3).
{
	try assert(HP4P11P15eq : rk(P4 :: P11 :: P15 :: nil) = 2) by (apply LP4P11P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P11P15Mtmp : rk(P4 :: P11 :: P15 :: nil) <= 2) by (solve_hyps_max HP4P11P15eq HP4P11P15M2).
	try assert(HP4P8P9P10P11P13P14P15eq : rk(P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) = 4) by (apply LP4P8P9P10P11P13P14P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP4P8P9P10P11P13P14P15mtmp : rk(P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) >= 4) by (solve_hyps_min HP4P8P9P10P11P13P14P15eq HP4P8P9P10P11P13P14P15m4).
	try assert(HP15eq : rk(P15 :: nil) = 1) by (apply LP15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP15mtmp : rk(P15 :: nil) >= 1) by (solve_hyps_min HP15eq HP15m1).
	assert(Hincl : incl (P15 :: nil) (list_inter (P4 :: P11 :: P15 :: nil) (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P4 :: P8 :: P9 :: P10 :: P11 :: P13 :: P14 :: P15 :: nil) (P4 :: P11 :: P15 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P4 :: P11 :: P15 :: P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) ((P4 :: P11 :: P15 :: nil) ++ (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil))) by (clear_all_rk;my_inO).
	try rewrite HT1 in HP4P8P9P10P11P13P14P15mtmp;try rewrite HT2 in HP4P8P9P10P11P13P14P15mtmp.
	assert(HT := rule_4 (P4 :: P11 :: P15 :: nil) (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) (P15 :: nil) 4 1 2 HP4P8P9P10P11P13P14P15mtmp HP15mtmp HP4P11P15Mtmp Hincl); apply HT.
}
try clear HP4P11P15M1. try clear HP4P11P15M2. try clear HP4P11P15M3. try clear HP4P11P15m4. try clear HP4P11P15m3. try clear HP4P11P15m2. try clear HP4P11P15m1. try clear HP15M1. try clear HP15M2. try clear HP15M3. try clear HP15m4. try clear HP15m3. try clear HP15m2. try clear HP15m1. try clear HP4P8P9P10P11P13P14P15M1. try clear HP4P8P9P10P11P13P14P15M2. try clear HP4P8P9P10P11P13P14P15M3. try clear HP4P8P9P10P11P13P14P15m4. try clear HP4P8P9P10P11P13P14P15m3. try clear HP4P8P9P10P11P13P14P15m2. try clear HP4P8P9P10P11P13P14P15m1. 

assert(HP8P9P10P13P14P15M3 : rk(P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) <= 3).
{
	try assert(HP8P13P14eq : rk(P8 :: P13 :: P14 :: nil) = 2) by (apply LP8P13P14 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP8P13P14Mtmp : rk(P8 :: P13 :: P14 :: nil) <= 2) by (solve_hyps_max HP8P13P14eq HP8P13P14M2).
	try assert(HP8P9P10P13P15eq : rk(P8 :: P9 :: P10 :: P13 :: P15 :: nil) = 3) by (apply LP8P9P10P13P15 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP8P9P10P13P15Mtmp : rk(P8 :: P9 :: P10 :: P13 :: P15 :: nil) <= 3) by (solve_hyps_max HP8P9P10P13P15eq HP8P9P10P13P15M3).
	try assert(HP8P13eq : rk(P8 :: P13 :: nil) = 2) by (apply LP8P13 with (P1 := P1) (P2 := P2) (P3 := P3) (P4 := P4) (P5 := P5) (P6 := P6) (P7 := P7) (P8 := P8) (P9 := P9) (P10 := P10) (P11 := P11) (P12 := P12) (P13 := P13) (P14 := P14) (P15 := P15) ;try assumption).
	assert(HP8P13mtmp : rk(P8 :: P13 :: nil) >= 2) by (solve_hyps_min HP8P13eq HP8P13m2).
	assert(Hincl : incl (P8 :: P13 :: nil) (list_inter (P8 :: P13 :: P14 :: nil) (P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (repeat clear_all_rk;my_inO).
	assert(HT1 : equivlist (P8 :: P9 :: P10 :: P13 :: P14 :: P15 :: nil) (P8 :: P13 :: P14 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil)) by (clear_all_rk;my_inO).
	assert(HT2 : equivlist (P8 :: P13 :: P14 :: P8 :: P9 :: P10 :: P13 :: P15 :: nil) ((P8 :: P13 :: P14 :: nil) ++ (P8 :: P9 :: P10 :: P13 :: P15 :: nil))) by (clear_all_rk;my_inO).
	assert(HT := rule_1 (P8 :: P13 :: P14 :: nil) (P8 :: P9 :: P10 :: P13 :: P15 :: nil) (P8 :: P13 :: nil) 2 3 2 HP8P13P14Mtmp HP8P9P10P13P15Mtmp HP8P13mtmp Hincl);
	rewrite <-HT2 in HT;try rewrite <-HT1 in HT;apply HT.
}
try clear HP8P13P14M1. try clear HP8P13P14M2. try clear HP8P13P14M3. try clear HP8P13P14m4. try clear HP8P13P14m3. try clear HP8P13P14m2. try clear HP8P13P14m1. try clear HP8P9P10P13P15M1. try clear HP8P9P10P13P15M2. try clear HP8P9P10P13P15M3. try clear HP8P9P10P13P15m4. try clear HP8P9P10P13P15m3. try clear HP8P9P10P13P15m2. try clear HP8P9P10P13P15m1. try clear HP8P13M1. try clear HP8P13M2. try clear HP8P13M3. try clear HP8P13m4. try clear HP8P13m3. try clear HP8P13m2. try clear HP8P13m1. 

assert(HP8P9P10P13P14P15M : rk(P8 :: P9 :: P10 :: P13 :: P14 :: P15 ::  nil) <= 4) by (apply rk_upper_dim).
assert(HP8P9P10P13P14P15m : rk(P8 :: P9 :: P10 :: P13 :: P14 :: P15 ::  nil) >= 1) by (solve_hyps_min HP8P9P10P13P14P15eq HP8P9P10P13P14P15m1).
intuition.
Qed.


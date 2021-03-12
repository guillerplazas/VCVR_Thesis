(*  File:       Nanson_Baldwin_Rule.thy
    Copyright   2021  Karlsruhe Institute of Technology (KIT)
*)
\<^marker>\<open>creator "Stephan Bohr, Karlsruhe Institute of Technology (KIT)"\<close>
\<^marker>\<open>contributor "Michael Kirsten, Karlsruhe Institute of Technology (KIT)"\<close>

section \<open>Nanson-Baldwin Rule\<close>

theory Nanson_Baldwin_Rule
  imports Borda_Module Defer_One_Loop_Composition
begin

text
\<open>This is the Nanson-Baldwin voting rule. It excludes alternatives with the
lowest Borda score from the set of possible winners and then adjusts the
Borda score to the new (remaining) set of still eligible alternatives.\<close>

subsection \<open>Definition\<close>

fun nanson_baldwin_rule :: "'a Electoral_Module" where
  "nanson_baldwin_rule A p =
    iter (min_eliminator borda_score) A p"

fun nanson_baldwin_rule_code :: "'a Electoral_Module" where
  "nanson_baldwin_rule_code A p =
    iter (min_eliminator borda_score_code) A p"

end
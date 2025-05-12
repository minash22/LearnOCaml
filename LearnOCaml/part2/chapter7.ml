(* Chapter 6: Control Flow — Making Decisions *)

(* Using if...then...else to define absolute value *)
let abs n =
  if n >= 0 then n
  else -n ;;

print_endline ("abs of 5 = " ^ string_of_int (abs 5)) ;;
print_endline ("abs of -3 = " ^ string_of_int (abs (-3))) ;;

(* Comparison operators *)
let is_equal = (3 = 3) ;;
let is_not_equal = (4 <> 5) ;;
let is_greater = (7 > 2) ;;
print_endline ("3 = 3 → " ^ string_of_bool is_equal) ;;
print_endline ("4 <> 5 → " ^ string_of_bool is_not_equal) ;;
print_endline ("7 > 2 → " ^ string_of_bool is_greater) ;;

(* Pattern matching with numbers *)
let describe_number n =
  match n with
  | 0 -> "Zero"
  | _ -> "Non-zero" ;;

print_endline ("describe 0 → " ^ describe_number 0) ;;
print_endline ("describe 10 → " ^ describe_number 10) ;;

(* Clean if...else logic *)
let grade score =
  if score >= 60 then "Pass"
  else "Fail" ;;

print_endline ("Grade for 75 → " ^ grade 75) ;;
print_endline ("Grade for 45 → " ^ grade 45) ;;



(* === Practice Section === *)

(* Practice 1: A function sign that returns "positive", "negative", or "zero" *)
let sign n =
  if n > 0 then "positive"
  else if n < 0 then "negative"
  else "zero" ;; 

print_endline ("Sign of 10 → " ^ sign 10) ;;
print_endline ("Sign of -5 → " ^ sign (-5)) ;;
print_endline ("Sign of 0 → " ^ sign 0) ;;

(* Practice 2: A function day_type that matches a string to "Weekend" or "Weekday" *)
let day_type day =
  match day with
  | "Saturday" | "Sunday" -> "Weekend"
  | "Monday" | "Tuesday" | "Wednesday" | "Thursday" | "Friday" -> "Weekday"
  | _ -> "Unknown" ;;

print_endline ("Monday → " ^ day_type "Monday") ;;
print_endline ("Sunday → " ^ day_type "Sunday") ;;
print_endline ("Holiday → " ^ day_type "Holiday") ;;

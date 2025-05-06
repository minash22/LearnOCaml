(* Chapter 10: Immutability & Functional Thinking *)

(* Immutability: values don't change *)
let x = 5 ;;
(* let x = 6 ;;  (* Error: already bound — OCaml doesn't allow reassignment *) *)

let y = x + 1 ;;
print_endline ("x = " ^ string_of_int x) ;;
print_endline ("y = " ^ string_of_int y) ;;

(* Pure function: always returns the same result, no side effects *)
let square x = x * x ;;
print_endline ("square 4 → " ^ string_of_int (square 4)) ;;

(* Impure function: uses mutable state (ref) and side effect *)
let counter = ref 0 ;;

let increase () =
  counter := !counter + 1;
  !counter ;;

print_endline ("increase() → " ^ string_of_int (increase ())) ;;
print_endline ("increase() again → " ^ string_of_int (increase ())) ;;

(* Pure greeting *)
let greet name = "Hello, " ^ name ;;

(* Impure greeting — prints directly *)
let greet_and_print name =
  print_endline ("Hello, " ^ name) ;;

print_endline (greet "Mina") ;;
greet_and_print "Luca" ;;

(* Functional example: grading papers *)
let points = [10; 15; 20; 5] ;;
let total = List.fold_left (+) 0 points ;;

let grade total =
  if total >= 45 then "Excellent"
  else if total >= 30 then "Good"
  else "Needs improvement" ;;

print_endline ("Total score: " ^ string_of_int total) ;;
print_endline ("Grade: " ^ grade total) ;;






(* === Practice Section === *)

(* Practice 1: total with tax (10%) from a list of prices *)
let prices = [100.0; 50.0; 20.0] ;;
let total_with_tax =
  List.fold_left ( +. ) 0.0 prices *. 1.10 ;;

print_endline ("Total with tax → " ^ string_of_float total_with_tax) ;;

(* Practice 2: pure function that returns "adult" or "minor" *)
let classify_age age =
  if age >= 18 then "adult"
  else "minor" ;;

print_endline ("Age 21 → " ^ classify_age 21) ;;
print_endline ("Age 15 → " ^ classify_age 15) ;;

(* Practice 3: classic loop-based sum rewritten as pure recursive *)
let rec pure_sum lst =
  match lst with
  | [] -> 0
  | x :: xs -> x + pure_sum xs ;;

print_endline ("Sum of [1;2;3] → " ^ string_of_int (pure_sum [1; 2; 3])) ;;

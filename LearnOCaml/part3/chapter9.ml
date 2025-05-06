(* Chapter 8: Pattern Matching Deep Dive *)

(* Destructuring a tuple *)
let position = (3, 5) ;;
let (x, y) = position ;;
print_endline ("x = " ^ string_of_int x ^ ", y = " ^ string_of_int y) ;;

(* Matching a tuple with guards *)
let quadrant (x, y) =
  match (x, y) with
  | (0, 0) -> "Origin"
  | (x, y) when x > 0 && y > 0 -> "Quadrant I"
  | _ -> "Somewhere else" ;;

print_endline ("(0,0) → " ^ quadrant (0, 0)) ;;
print_endline ("(2,3) → " ^ quadrant (2, 3)) ;;
print_endline ("(-1,0) → " ^ quadrant (-1, 0)) ;;

(* Matching a list based on shape *)
let list_shape lst =
  match lst with
  | [] -> "Empty list"
  | [x] -> "One element"
  | [x; y] -> "Two elements"
  | _ :: _ -> "More elements" ;;

print_endline ("[] → " ^ list_shape []) ;;
print_endline ("[1] → " ^ list_shape [1]) ;;
print_endline ("[1; 2] → " ^ list_shape [1; 2]) ;;
print_endline ("[1; 2; 3] → " ^ list_shape [1; 2; 3]) ;;

(* Custom type and match *)
type day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday ;;

let is_weekend d =
  match d with
  | Saturday | Sunday -> true
  | _ -> false ;;

print_endline ("Is Saturday weekend? " ^ string_of_bool (is_weekend Saturday)) ;;
print_endline ("Is Wednesday weekend? " ^ string_of_bool (is_weekend Wednesday)) ;;

(* When match is better than if...else *)
let describe_number n =
  match n with
  | 0 -> "zero"
  | 1 -> "one"
  | _ -> "other" ;;

print_endline ("0 → " ^ describe_number 0) ;;
print_endline ("1 → " ^ describe_number 1) ;;
print_endline ("42 → " ^ describe_number 42) ;;


(* === Practice Section === *)

(* Practice 1: Match a list and return shape description *)
let describe_list lst =
  match lst with
  | [] -> "Empty"
  | [x; y] -> "Exactly two items"
  | _ -> "Longer" ;;

print_endline ("[] → " ^ describe_list []) ;;
print_endline ("[1; 2] → " ^ describe_list [1; 2]) ;;
print_endline ("[1; 2; 3] → " ^ describe_list [1; 2; 3]) ;;

(* Practice 2: Define a shape type and compute area *)
type shape =
  | Circle of float
  | Rectangle of float * float ;;

let area s =
  match s with
  | Circle r -> 3.1415 *. r *. r
  | Rectangle (w, h) -> w *. h ;;

print_endline ("Circle with r=2 → area = " ^ string_of_float (area (Circle 2.0))) ;;
print_endline ("Rectangle 3x4 → area = " ^ string_of_float (area (Rectangle (3.0, 4.0)))) ;;

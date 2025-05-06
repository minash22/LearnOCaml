(* Chapter 9: Recursion –> Looping Without Loops *)

(* Factorial example *)
let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1) ;;

print_endline ("factorial 4 → " ^ string_of_int (factorial 4)) ;;

(* Sum of a list *)
let rec sum lst =
  match lst with
  | [] -> 0
  | x :: xs -> x + sum xs ;;

print_endline ("sum [1;2;3;4] → " ^ string_of_int (sum [1; 2; 3; 4])) ;;

(* Length of a list *)
let rec length lst =
  match lst with
  | [] -> 0
  | _ :: xs -> 1 + length xs ;;

print_endline ("length [1;2;3] → " ^ string_of_int (length [1; 2; 3])) ;;

(* Reverse a list,  btw @ is the list concatenation operator.*)
let rec reverse lst =
  match lst with
  | [] -> []
  | x :: xs -> reverse xs @ [x] ;;

let reversed = reverse [1; 2; 3] ;;
print_endline ("reverse [1;2;3] → " ^ String.concat "; " (List.map string_of_int reversed)) ;;

(* Count occurrences *)
let rec count value lst =
  match lst with
  | [] -> 0
  | x :: xs ->
      let rest = count value xs in
      if x = value then 1 + rest else rest ;;

print_endline ("count 3 in [1;3;5;3;3] → " ^ string_of_int (count 3 [1; 3; 5; 3; 3])) ;;

(* Fibonacci (inefficient) *)
let rec fib n =
  if n <= 1 then n
  else fib (n - 1) + fib (n - 2) ;;

print_endline ("fib 10 → " ^ string_of_int (fib 10)) ;;






(* === Practice Section === *)

(* Practice 1: Recursive function that returns the max element in a list *)
let rec max_in_list lst =
  match lst with
  | [] -> failwith "Empty list"
  | [x] -> x
  | x :: xs -> max x (max_in_list xs) ;;

print_endline ("Max of [3; 1; 7; 2] → " ^ string_of_int (max_in_list [3; 1; 7; 2])) ;;

(* Practice 2: Check if a list is sorted in ascending order *)
let rec is_sorted lst =
  match lst with
  | [] | [_] -> true
  | x :: y :: rest -> x <= y && is_sorted (y :: rest) ;;

print_endline ("Is [1;2;3] sorted? → " ^ string_of_bool (is_sorted [1;2;3])) ;;
print_endline ("Is [3;2;1] sorted? → " ^ string_of_bool (is_sorted [3;2;1])) ;;

(* Practice 3: Multiply all numbers in a list *)
let rec product lst =
  match lst with
  | [] -> 1
  | x :: xs -> x * product xs ;;

print_endline ("Product of [2;3;4] → " ^ string_of_int (product [2; 3; 4])) ;;

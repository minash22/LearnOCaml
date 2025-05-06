(* Chapter 5: Functions — OCaml’s Superpower *)

(* Basic function definition *)
let greet name =
  "Ciao, " ^ name ^ "!" ;;

(* Using the greet function also " let _ " means “run this expression but ignore its result.” *)
let _ = print_endline (greet "Luca") ;;

(* Multi-line function with inner let binding *)
let formal_greet name =
  let title = "Signor" in
  title ^ " " ^ name ;;

let _ = print_endline (formal_greet "Marco") ;;

(* Function with two parameters *)
let add a b = a + b ;;
let _ = print_int (add 3 4) ;;
print_newline () ;;

(* Curried function behavior *)
let add_five = add 5 ;;
let _ = print_int (add_five 10) ;;
print_newline () ;;

(* Function with explicit type annotations *)
let square (x: int) : int =
  x * x ;;

let _ = print_int (square 6) ;;
print_newline () ;;

(* Anonymous (lambda) function *)
let result = (fun x -> x * 2) 10 ;;
let _ = print_int result ;;
print_newline () ;;



(* === Practice Section === *)

(* Practice 1: Define a function multiply that takes two numbers and returns the product *)
let multiply a b = a * b ;;
print_endline ("Multiply 3 * 4 = " ^ string_of_int (multiply 3 4)) ;;

(* Practice 2: Define is_even that returns true if a number is even, false otherwise *)
let is_even n = n mod 2 = 0 ;;
print_endline ("Is 6 even? " ^ string_of_bool (is_even 6)) ;;
print_endline ("Is 7 even? " ^ string_of_bool (is_even 7)) ;;

(* Practice 3: Define double_greet that takes two names and returns a greeting string *)
let double_greet n1 n2 =
  "Ciao, " ^ n1 ^ " and " ^ n2 ^ "!" ;;

print_endline (double_greet "Luca" "Giulia") ;;

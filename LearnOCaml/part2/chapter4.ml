(* Chapter 4: Let’s Talk Variables & Types *)

(* Binding a string *)
let name = "Mina" ;;

(* Immutability: rebinding creates a new value *)
let x = 5 ;;
let x = x + 1 ;;  (* This doesn't modify the previous x, it rebinds a new one *)

(* Type inference *)
let greeting = "Hello, OCaml!" ;;
let greeting : string = "Hello, OCaml!" ;;  (* Explicit type annotation *)

(* Type inference with other types *)
let age = 21 ;;
let pi = 3.14 ;;

(* Type error example — this won't compile if uncommented *)
(* let wrong = 5 + 2.0 ;; *)

(* Corrected version using float addition *)
let fixed = 5.0 +. 2.0 ;;

(* Basic types *)
let age = 25 ;;
let name = "Mina" ;;
let pi = 3.1415 ;;
let is_student = true ;;

(* Type error example, this won't compile *)
(* let weird = "hello" + 3 ;; *)

(* Correct way to convert and concatenate *)
let result = "Age: " ^ string_of_int 25 ;;

(* Another type error example, this won't compile *)
(* let total = 10 + true ;; *)

(* Correct conversions *)
let string_from_int = string_of_int 42 ;;
let string_from_float = string_of_float 3.14 ;;
let int_from_string = int_of_string "123" ;;
let float_from_string = float_of_string "2.718" ;;

(* === Practice Section === *)

(* Practice 1: Define a float value 'weight' with a value like 65.0 *)
let weight = 65.0 ;;
print_endline ("Weight: " ^ string_of_float weight) ;;

(* Practice 2: Define a boolean 'is_adult' that checks if age > 18 *)
let is_adult = age > 18 ;;
print_endline ("Is adult? " ^ string_of_bool is_adult) ;;

(* Practice 3: Create a string called 'intro' that says: 
   "Hi, I'm Mina and I'm 25" (or your actual age) *)
let intro = "Hi, I'm " ^ name ^ " and I'm " ^ string_of_int age ;;
print_endline intro ;;

(* Practice 4: Print the intro using print_endline *)
print_endline ("Introduction: " ^ intro) ;;

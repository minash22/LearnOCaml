(* Chapter 14: A Taste of Imperative OCaml *)

(* 1. Mutable Variables with ref *)

let counter = ref 0 ;;
print_endline ("Initial counter: " ^ string_of_int !counter) ;;

counter := !counter + 1 ;;
print_endline ("After increment: " ^ string_of_int !counter) ;;

(* 2. for loop *)
print_endline "Counting from 1 to 5:" ;;
for i = 1 to 5 do
  print_endline (string_of_int i)
done ;;

(* 3. while loop with a mutable variable *)

let x = ref 0 ;;
print_endline "Using while loop:" ;;
while !x < 3 do
  print_endline ("x is " ^ string_of_int !x) ;
  x := !x + 1
done ;;

(* 4. Arrays: mutable data structure *)

let arr = [| 1; 2; 3 |] ;;
arr.(0) <- 42 ;;

print_endline "Modified array:" ;;
Array.iter (fun n -> print_string (string_of_int n ^ " ")) arr ;;
print_newline () ;;




(* === Practice Zone === *)

(* Practice 1: Print numbers 10 down to 1 using a loop and ref *)
print_endline "Countdown from 10 to 1:" ;;
let n = ref 10 ;;
while !n >= 1 do
  print_endline (string_of_int !n) ;
  n := !n - 1
done ;;

(* Practice 2: Create an array of 5 zeros, then update each to its index *)
let a = Array.make 5 0 ;;
for i = 0 to 4 do
  a.(i) <- i
done ;;

print_endline "Array filled with indexes:" ;;
Array.iter (fun x -> print_string (string_of_int x ^ " ")) a ;;
print_newline () ;;

(* Practice 3: Count how many times a loop runs using a mutable counter *)
let count = ref 0 ;;
for i = 1 to 10 do
  count := !count + 1
done ;;

print_endline ("Loop ran " ^ string_of_int !count ^ " times.") ;;

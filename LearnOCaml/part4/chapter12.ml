(* Chapter 12: Records & Variants — Making Your Own Data Types *)

(* Declaring a record: person *)
type person = {
  name : string;
  age : int;
} ;;

let luca = { name = "Luca"; age = 30 } ;;

(* Accessing fields *)
print_endline ("Name: " ^ luca.name) ;;
print_endline ("Age: " ^ string_of_int luca.age) ;;

(* Creating a new version with updated field (immutability) *)
let older_luca = { luca with age = 31 } ;;
print_endline ("Updated age: " ^ string_of_int older_luca.age) ;;

(* Declaring a variant: traffic_light *)
type traffic_light = Red | Yellow | Green ;;

let action light =
  match light with
  | Red -> "Stop"
  | Yellow -> "Caution"
  | Green -> "Go" ;;

print_endline ("Red → " ^ action Red) ;;
print_endline ("Green → " ^ action Green) ;;

(* Variant with data: shape *)
type shape =
  | Circle of float
  | Rectangle of float * float ;;

let s1 = Circle 2.0 ;;
let s2 = Rectangle (3.0, 4.0) ;;

let area s =
  match s with
  | Circle r -> 3.1415 *. r *. r
  | Rectangle (w, h) -> w *. h ;;

print_endline ("Area of circle → " ^ string_of_float (area s1)) ;;
print_endline ("Area of rectangle → " ^ string_of_float (area s2)) ;;


(* === Practice Zone === *)

(* 1. Define a record book with fields: title, author, and pages *)
type book = {
  title : string;
  author : string;
  pages : int;
} ;;

let my_book = { title = "Learn OCaml"; author = "Mina"; pages = 50 } ;;

print_endline ("Book: " ^ my_book.title ^ " by " ^ my_book.author ^
               " (" ^ string_of_int my_book.pages ^ " pages)") ;;

(* 2. Define a variant login_state with: LoggedOut, LoggingIn, LoggedIn of string *)
type login_state =
  | LoggedOut
  | LoggingIn
  | LoggedIn of string ;;

(* 3. Function to return welcome message depending on login state *)
let welcome state =
  match state with
  | LoggedOut -> "Please log in."
  | LoggingIn -> "Logging in..."
  | LoggedIn username -> "Welcome back, " ^ username ^ "!" ;;

print_endline (welcome LoggedOut) ;;
print_endline (welcome LoggingIn) ;;
print_endline (welcome (LoggedIn "Mina")) ;;

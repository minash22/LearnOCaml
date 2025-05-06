(* Chapter 7: Lists, Tuples & Data Squads *)

(* Creating a list of strings *)
let fruits = ["apple"; "banana"; "cherry"] ;;

(* Empty list *)
let empty_list = [] ;;

(* Adding an element to the front of a list *)
let more_fruits = "orange" :: fruits ;;

(* Using List.map to double numbers *)
let numbers = [1; 2; 3; 4] ;;
let doubled = List.map (fun x -> x * 2) numbers ;;
print_endline ("Doubled: " ^ String.concat "; " (List.map string_of_int doubled)) ;;

(* Creating a tuple with multiple types *)
let person = ("Luca", 28, true) ;;

(* Pattern matching to extract values from a tuple *)
let (name, age, student) = person ;;
print_endline ("Name: " ^ name ^ ", Age: " ^ string_of_int age ^ ", Is student? " ^ string_of_bool student) ;;



(* === Practice Section === *)

(* Practice 1: Create a list of integers and print their squares using List.map *)
let nums = [2; 4; 6; 8] ;;
let squares = List.map (fun x -> x * x) nums ;;
print_endline ("Squares: " ^ String.concat "; " (List.map string_of_int squares)) ;;

(* Practice 2: Define a tuple representing a book with (title, author, pages), then print it *)
let book = ("OCaml from Scratch", "Mina", 50) ;;
let (title, author, pages) = book ;;
print_endline ("Book: " ^ title ^ " by " ^ author ^ " - " ^ string_of_int pages ^ " pages") ;;

(* Practice 3: Prepend an item to a list and print the new list *)
let colors = ["blue"; "green"] ;;
let new_colors = "red" :: colors ;;
print_endline ("Colors: " ^ String.concat ", " new_colors) ;;

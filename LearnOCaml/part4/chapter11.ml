(* Chapter 11: Organizing OCaml Projects with Modules *)

(* Example of defining functions that could go in MathUtils.ml *)
let square x = x * x ;;
let cube x = x * x * x ;;

print_endline ("Square of 5 → " ^ string_of_int (square 5)) ;;
print_endline ("Cube of 3 → " ^ string_of_int (cube 3)) ;;

(* Simulating another file (greetings.ml) with a module definition *)
module Greetings = struct
  let hello name = "Hello, " ^ name
  let goodbye name = "Goodbye, " ^ name
end ;;

print_endline (Greetings.hello "Marco") ;;
print_endline (Greetings.goodbye "Marco") ;;

(* Opening a module inside the same file *)
module Math = struct
  let double x = x * 2
  let triple x = x * 3
end ;;

open Math ;;
print_endline ("double 10 → " ^ string_of_int (double 10)) ;;
print_endline ("triple 4 → " ^ string_of_int (triple 4)) ;;



 (* === Practice Section === *)

(* Practice 1: Module Stats with mean and max *)
module Stats = struct
  let mean lst =
    let total = List.fold_left (+.) 0.0 lst in
    total /. float_of_int (List.length lst)

  let max lst =
    List.fold_left max min_int lst
end ;;

let nums = [10; 20; 5; 40] ;;
let nums_float = List.map float_of_int nums ;;

print_endline ("Mean → " ^ string_of_float (Stats.mean nums_float)) ;;
print_endline ("Max → " ^ string_of_int (Stats.max nums)) ;;

(* Practice 2: Module StringUtils with custom string ops *)
module StringUtils = struct
  let shout s = String.uppercase_ascii s ^ "!"
  let whisper s = String.lowercase_ascii s ^ "..."
end ;;

print_endline (StringUtils.shout "ocaml") ;;
print_endline (StringUtils.whisper "OCAML") ;;

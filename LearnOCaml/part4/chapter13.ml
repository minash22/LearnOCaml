(* Chapter 13: Option, Result, and Safe Code *)

(* --- 1. Safe Division with Option --- *)

let safe_div x y =
  if y = 0 then None
  else Some (x / y) ;;

(* Using option with pattern matching *)
let print_div_result result =
  match result with
  | Some value -> print_endline ("Result: " ^ string_of_int value)
  | None -> print_endline "Division failed: cannot divide by zero" ;;

print_div_result (safe_div 10 2) ;;
print_div_result (safe_div 5 0) ;;

(* --- 2. Parsing a string as an int with Result --- *)

let parse_int s =
  try Ok (int_of_string s)
  with Failure _ -> Error ("Invalid integer: " ^ s) ;;

let print_parse_result res =
  match res with
  | Ok n -> print_endline ("Parsed number: " ^ string_of_int n)
  | Error msg -> print_endline ("Parse failed: " ^ msg) ;;

print_parse_result (parse_int "42") ;;
print_parse_result (parse_int "notANumber") ;;


(* === Practice Section === *)

(* Practice 1: Return head of list or None if empty *)
  let get_head lst =
    match lst with
    | [] -> None
    | x :: _ -> Some x ;;
  
  let print_head lst =
    match get_head lst with
    | Some v -> print_endline ("Head is: " ^ string_of_int v)
    | None -> print_endline "List is empty" ;;
  
  print_head [10; 20; 30] ;;
  print_head [] ;;
  
  (* Practice 2: login function that returns Ok token or Error *)
  let login user password =
    if user = "admin" && password = "1234"
    then Ok "token_abc123"
    else Error "Invalid login" ;;
  
  (* Practice 3: Match on login result *)
  let print_login_result result =
    match result with
    | Ok token -> print_endline ("Login successful. Token: " ^ token)
    | Error msg -> print_endline ("Login failed: " ^ msg) ;;
  
  print_login_result (login "admin" "1234") ;;
  print_login_result (login "guest" "wrong") ;;
  
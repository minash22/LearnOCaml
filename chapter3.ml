print_endline "Hello, OCaml!" ;;

3 + 4 ;;            (* - : int = 7 *)

true ;;             (* - : bool = true *)
"hello" ;;          (* - : string = "hello" *)
3.14 ;;             (* - : float = 3.14 *)

(*let binding*)
let name = "Mina" ;;
print_endline name ;;

let x = 10 ;;
let y = x + 5 ;;

let message =
  if x > 5 then
    "Big number"
  else
    "Small number" ;;

print_endline message ;;

let age = 21 ;;
let next_year = age + 1 ;;
let greeting =
  "Hi, I'm " ^ name ^ ", I have " ^ string_of_int age ^
  " and next year I will be " ^ string_of_int next_year ;;
print_endline greeting ;;

(* todo.ml — Task definitions and logic *)

type status = NotStarted | InProgress | Done

type task = {
  id : int;
  title : string;
  status : status;
}

let create_task id title =
  { id; title; status = NotStarted }

let update_status task new_status =
  { task with status = new_status }

let string_of_status = function
  | NotStarted -> "Not started"
  | InProgress -> "In progress"
  | Done -> "Done"

let display_task task =
  Printf.printf "#%d - %s [%s]\n"
    task.id task.title (string_of_status task.status)

let rec display_all = function
  | [] -> ()
  | t :: ts ->
      display_task t;
      display_all ts

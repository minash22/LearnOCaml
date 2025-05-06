(* main.ml — Simulated user interaction with to-do list *)

open Todo

let my_tasks = ref []
let next_id = ref 1

let add_task title =
  let task = create_task !next_id title in
  my_tasks := task :: !my_tasks;
  next_id := !next_id + 1

let mark_done id =
  let updated =
    List.map (fun t ->
      if t.id = id then update_status t Done else t
    ) !my_tasks
  in
  my_tasks := updated

let () =
  add_task "Finish OCaml book";
  add_task "Write project section";
  add_task "Submit thesis";

  mark_done 2;

  print_endline "Your To-Do List:";
  display_all (List.rev !my_tasks)

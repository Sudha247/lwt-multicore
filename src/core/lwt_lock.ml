(** Locks for multicore*)
module C = Domainslib.Chan 

type t = int C.t  

let create_lock () = 
  let c = C.make_bounded 1 in 
  C.send c 0;
  c

let acquire_lock lock = 
  C.recv lock |> ignore 

let release_lock lock = 
  C.send lock 0

let is_locked lock = 
  let c = C.recv_poll lock in 
  match c with 
  | Some v ->
      C.send lock v;
      false
  | None ->
      true

let try_acquire lock =
  match C.recv_poll lock with 
  | Some _ -> true 
  | None -> false 

let try_release lock = 
  C.send_poll lock 0
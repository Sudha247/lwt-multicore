(** Locks for m*)

type t
val create_lock : unit -> t 
val acquire_lock : t -> unit 
val release_lock : t -> unit 
val is_locked : t -> bool
val try_acquire : t -> bool
val try_release : t -> bool
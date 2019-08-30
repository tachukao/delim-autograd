type t =
  { mutable v : float
  ; mutable d : float
  }

val add : t -> t -> (t -> unit) -> unit
val mul : t -> t -> (t -> unit) -> unit
val grad : f:(t -> (t -> unit) -> unit) -> float -> float

type t =
  { mutable v : float
  ; mutable d : float
  }

val add : t -> t -> t
val ( + ) : t -> t -> t
val mul : t -> t -> t
val ( * ) : t -> t -> t
val grad : f:(t -> t) -> float -> float

type t =
  { mutable v : float
  ; mutable d : float
  }

let add x y k =
  let z = { v = x.v +. y.v; d = 0. } in
  k z;
  x.d <- x.d +. z.d;
  y.d <- y.d +. z.d


let mul x y k =
  let z = { v = x.v *. y.v; d = 0. } in
  k z;
  x.d <- x.d +. (y.v *. z.d);
  y.d <- y.d +. (x.v *. z.d)


let grad ~f x =
  let z = { v = x; d = 0. } in
  f z (fun r -> r.d <- 1.);
  z.d

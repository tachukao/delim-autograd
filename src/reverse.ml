open Delimcc

type t =
  { mutable v : float
  ; mutable d : float
  }

let p0 = new_prompt ()

let add x y =
  shift p0 (fun k ->
      let z = { v = x.v +. y.v; d = 0. } in
      k z;
      x.d <- x.d +. z.d;
      y.d <- y.d +. z.d)


let ( + ) = add

let mul x y =
  shift p0 (fun k ->
      let z = { v = x.v *. y.v; d = 0. } in
      k z;
      x.d <- x.d +. (y.v *. z.d);
      y.d <- y.d +. (x.v *. z.d))


let ( * ) = mul

let grad ~f x =
  let z = { v = x; d = 0. } in
  push_prompt p0 (fun () ->
      let k = f z in
      k.d <- 1.);
  z.d

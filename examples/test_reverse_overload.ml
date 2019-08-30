open Lib

(* incredibly unreadable code without shift reset *)
let f x k =
  (fun z3 -> (fun z2 -> (fun z -> RO.mul x z k) |> RO.mul x z2) |> RO.mul x z3)
  |> RO.mul x x


let df = RO.grad ~f
let df' x = 5. *. x *. x *. x *. x
let xs = Array.init 100 (fun x -> float x)

let () =
  Array.iter (fun x -> assert (df x = df' x)) xs;
  Printf.printf "%f = %f\n" (df 2.) (df' 2.)

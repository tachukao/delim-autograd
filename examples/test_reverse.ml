open Lib

(* incredibly unreadable code without shift reset *)
let f x = R.((x * x * x * x * x) + (x * x))

(* autodiff grad *)
let df = R.grad ~f

(* true grad *)
let df' x = (5. *. x *. x *. x *. x) +. (2. *. x)
let xs = Array.init 100 (fun x -> float x)

let () =
  Array.iter (fun x -> assert (df x = df' x)) xs;
  Printf.printf "%f = %f\n" (df 2.) (df' 2.)

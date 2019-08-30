# Delimited Continuations Automatic Differentiation

Reproduced examples in [Demystifying Differentiable Programming: Shift/Reset the Penultimate Backpropagator](https://arxiv.org/pdf/1803.10228.pdf). 

## Examples

Reverse-mode automatic differentiation using shift/reset operators
```sh
$ dune exec examples/test_reverse.exe
```
Reverse-mode automatic differentiation with paramter-overload
```sh
$ dune exec examples/test_reverse_overload.exe
```

## Dependencies
Shift/Reset library: [Delimcc](https://opam.ocaml.org/packages/delimcc/)
Install with
```sh
$ opam install delimcc
```

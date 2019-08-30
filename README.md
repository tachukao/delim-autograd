# Delimited Continuations Automatic Differentiation

Reproduced some examples in [Demystifying Differentiable Programming: Shift/Reset the Penultimate Backpropagator](https://arxiv.org/pdf/1803.10228.pdf) .  

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
Delimited Continuation Library: [Delimcc](https://opam.ocaml.org/packages/delimcc/)

```sh
$ opam install delimcc
```

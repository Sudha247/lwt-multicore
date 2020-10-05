# Lwt with Multicore Support

This is a fork of [Lwt](https://github.com/ocsigen/lwt) with added
support for CPU parallelism with Multicore OCaml provided via the
`Lwt_preemptive` module. 

A blog post with a high level overview of this repo is here:
https://sudha247.github.io/2020/10/01/lwt-multicore/


### Running on multiple cores

The method `Lwt_preemptive.detach` runs computations in multiple domains. It
spawns four domains by default. The number of domains can be increased or
decreased usnig the `Lwt_preemptive.set_bounds` function. For more details,
refer the [doc](https://github.com/Sudha247/lwt-multicore/blob/master/src/unix/lwt_preemptive.mli)

### Examples

A Lwt server that computes fibonacci number of input can be found
[here](https://github.com/Sudha247/code-samples/blob/master/lwt-server/fibp.ml).

### Issues

Feel free to use the [issue tracker](https://github.com/Sudha247/lwt-multicore/issues)
to ask questions and report any bugs.

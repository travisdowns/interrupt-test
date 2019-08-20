
## Requirements

This project targets Linux, but as they are small standalone asm examples which make only a single system call ([`exit(3)`](http://man7.org/linux/man-pages/man3/exit.3.html) to terminate the process), there is not reason it couldn't easily be ported to any x86 system.

You need the following to build this project:

 - nasm
 - strip
 - gnu make
 - ld

To perform the interrupt analysis as described in the blog post, you will also want `perf` installed - although of course you could interrupt the process in other ways too.

All of these are available as packages on common Linux distributions.

## Building

Just run `make`.

## Running

Each file like `foo.asm` compiles to a binary `foo` that you can run directly. More usefully you will want the test processes run under `perf record` to actually collect interrupt information.

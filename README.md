# Summary
## NOTE: This repository is now read-only - official repository now at https://git.sr.ht/~flexibeast/s6-networking-man-pages

This repository provides [mdoc(7)](https://man.openbsd.org/mdoc.7)
ports of the HTML documentation for the [s6-networking
suite](http://skarnet.org/software/s6-networking/). The HTML version
on the s6-networking site is authoritative; in the event of semantic
differences between an HTML original and its port, please open an
issue in this repository.

To install the man pages, run `make`.

The default installation directory is `/usr/share/man`, but this can
be changed by setting the `MAN_DIR` environment variable prior to
running `make`.  The user running `make` will need to have the
appropriate permissions for installation in the chosen directory.

The man pages can be uninstalled by running `make uninstall`.

HTML versions can be produced with
[mandoc(1)](https://man.openbsd.org/mandoc.1)'s `-T` flag:

```
$ mandoc -T html man8/s6-clockadd.8 > s6-clockadd.8.html
```

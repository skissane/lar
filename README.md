# lar

Utility to manipulate CP/M LU format libraries.
Originally written by Stephen C. Hemminger, a long time ago (1980s?).
This is my modified version: the C syntax has been modernised, and a Makefile
added.

I started with the code from here: https://dflund.se/~pi/cpm/files/ftp.unicamp.br/pub/unix-c/cpm/lar.c.gz

## License

Original license:
```
This program is public domain software, no warranty intended or
implied.
```

I release all my changes under the same terms.

I have put CC0 in the `LICENSE` file, which (in my personal opinion) is legally
equivalent to the above.

## Original documentation

```
Usage: lar key library [files] ...

Key functions are:
    u - Update, add files to library
    t - Table of contents
    e - Extract files from library
    p - Print files in library
    d - Delete files in library
    r - Reorginize library
Other keys:
    v - Verbose

DESCRPTION
   Lar is a Unix program to manipulate CP/M LU format libraries.
   The original CP/M library program LU is the product
   of Gary P. Novosielski. The primary use of lar is to combine several
   files together for upload/download to a personal computer.

PORTABILITY
   The code is modeled after the Software tools archive program,
   and is setup for Version 7 Unix.  It does not make any assumptions
   about byte ordering, explict and's and shift's are used.
   If you have a dumber C compiler, you may have to recode new features
   like structure assignment, typedef's and enumerated types.

BUGS/MISFEATURES
   The biggest problem is text files, the programs tries to detect
   text files vs. binaries by checking for non-Ascii (8th bit set) chars.
   If the file is text then it will throw away Control-Z chars which
   CP/M puts on the end.  All files in library are padded with Control-Z
   at the end to the CP/M sector size if necessary.

   No effort is made to handle the difference between CP/M and Unix
   end of line chars.  CP/M uses Cr/Lf and Unix just uses LF.
   The solution is just to use the Unix command sed when necessary.
```

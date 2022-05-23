# cpython-compile-windows-base
Quickly set up a cpython project that compiles pyx files to exe files

# Instructions 

Install cython via pip first
Make sure you have MINGW for c installed

NOTICE: in this projects the python installation is located at "C:/Python39" (you can change the location in the compile.sh file)

BEFORE DOING ANYTHING ADD THIS TO YOUR PYCONFIG.h FILE IN ```/Python39/pyconfig.h```
(search for the comment ```/* Compiler specific defines */``` and put this below it)

```
#ifdef __MINGW32__
#ifdef _WIN64
#define MS_WIN64
#endif
#endif

#ifdef __MINGW64__
#ifdef _WIN64
#define MS_WIN64
#endif
#endif
```

All you have to do now is run ```compile.sh```!

(It will compile ```lib.pyx``` to ```lib.c```, ```lib.h```, etc. Then it will use gcc to compile ```lib.c``` to ```lib.exe```)

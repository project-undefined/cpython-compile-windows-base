cython lib.pyx --embed
gcc lib.c -Ic:/Python39/include -LC:/Python39/libs -lpython39 -o lib.exe -municode
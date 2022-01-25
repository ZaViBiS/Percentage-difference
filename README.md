# Percentage-difference

```console
➜  Percentage difference git:(master) ✗ ./pd 1 2        
100 %
➜  Percentage difference git:(master) ✗ ./pd 1 2 -n        
-50 %
```

### check version
```console
./pd -v
update available 0.1 -> 0.2
(or)
./pd -v
the latest version is already installed.
```

## BUILD

```console
v up
v -prod main.v -o pd
```

### GCC/CC BUILD

```console
v up
v -o main.c main.v
cc/gcc main.c -o pd
```

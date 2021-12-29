# Percentage-difference

```console
➜  Percentage difference git:(master) ✗ ./pd 1 2        
100 %
➜  Percentage difference git:(master) ✗ ./pd 2 1 -n        
-50 %
```

## BUILD

```console
v up
v install nedpals.vargs
v main.v -o pd
```

### GCC/CC BUILD

```console
v up
v install nedpals.vargs
v -o main.c main.v
cc/gcc main.c -o pd
```

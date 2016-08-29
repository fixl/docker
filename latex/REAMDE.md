LaTeX Docker Container
======================

A docker image with selected LaTeX packages installed.

Run the image
-------------

```
docker run -v `pwd`:/source ${USER}/latex [filename].tex
```

Build the image
---------------
```
docker build --tag ${USER}/latex .
```


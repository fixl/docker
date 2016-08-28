LaTeX Docker Container
======================

This docker image's the sole purpose is to generate PDF files through `texlive`. 

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


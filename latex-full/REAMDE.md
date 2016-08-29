LaTeX Full Docker Container
======================

This docker image's the sole purpose is to generate PDF files through `texlive` including everything available in the
distribution.

Run the image
-------------

```
docker run -v `pwd`:/source ${USER}/latex-full [filename].tex
```

Build the image
---------------
```
docker build --tag ${USER}/latex-full .
```


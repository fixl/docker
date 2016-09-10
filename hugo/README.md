Hugo Docker Container
=====================

A Docker container that can run you your [Hugo](https://gohugo.io/) website.

Usage
-----

Add your content to a docker container based on the hugo image
```
FROM fixl/hugo

ADD your/site /hugo
```

Build your new image
```
docker build --tag ${USER}/my-hugo-website
```


Run your new image
```
docker run -d -p 1313:1313 ${USER}/my-hugo-website
```

Build the image
---------------
```
docker build --tag ${USER}/hugo .
```

DokuWiki docker container
=========================


To run image:
-------------

```
docker run -d -p 80:80 --name dokuwiki fixl/docker-dokuwiki
```

You can now visit the install page to configure your new DokuWiki wiki.

For example, if you are running container locally, you can access the page 
in browser by going to http://127.0.0.1/install.php

To update the image:
--------------------

First stop your container

```
docker stop my_wiki
```

Then run new container just to hold the volumes

```
docker run --volumes-from dokuwiki --name dokuwiki-data busybox true
```

Now you can remove old container

```
docker rm dokuwiki
```

..and run a new one (you built, pulled before)

```
docker run -d -p 80:80 --name dokuwiki --volumes-from dokuwiki-data fixl/docker-dokuwiki
```

afterwards you can remove data container if you want

```
docker rm dokuwiki-data
```

(or keep it for next update, takes no space anyway..)

Optimising your wiki
--------------------

Lighttpd configuration also includes rewrites, so you can enable 
nice URLs in settings (Advanced -> Nice URLs, set to ".htaccess")

For better performance enable xsendfile in settings.
Set to proprietary lighttpd header (for lighttpd < 1.5)

Additional Plugins
------------------

* PlantUML
* indexmenu
* addnewpage
* edittable
* todo
* bpmnio
* move
* slacknotifier

Build your own
--------------

```
docker build -t $USER/docker-dokuwiki .
```

Back up your files
------------------

```
docker run --rm  --volumes-from dokuwiki -v $(pwd):/backup debian:jessie tar -zcvf /backup/dokuwiki-backup.tar.gz /dokuwiki/data/ /dokuwiki/conf/
```

This backs upo the the `conf` and `data` directories.

Restore your files
------------------

```
# create new dokuwiki container, but don't start it yet
docker create -p 80:80 --name dokuwiki fixl/docker-dokuwiki

# re-create data volume container (optional)
docker rm -f dokuwiki-data ; docker run --volumes-from dokuwiki --name dokuwiki-data busybox

# restore from backup
docker run --rm --volumes-from dokuwiki -w / -v $(pwd):/backup debian:jessie tar -xzvf /backup/dokuwiki-backup.tar.gz

# start dokuwiki
docker start dokuwiki
```

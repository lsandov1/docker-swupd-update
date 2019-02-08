# docker-swupd-update

```bash
$ make
docker build --build-arg swupd_args="-m 27600"  -t clr-27600  .
Sending build context to Docker daemon  76.29kB
Step 1/5 : FROM clearlinux
latest: Pulling from library/clearlinux
db4f6ce5788a: Pull complete
Digest: sha256:5293a6a5a66570f3fa4b9828f1fafeca5d29e0f4a01cf468b89cafb3d4b9490a
Status: Downloaded newer image for clearlinux:latest
 ---> 1625900bcaf7
Step 2/5 : MAINTAINER otc-swstacks@intel.com
 ---> Running in b9f22f41c75a
Removing intermediate container b9f22f41c75a
 ---> 2f7ba474f4a9
Step 3/5 : ARG swupd_args
 ---> Running in f084045c3471
Removing intermediate container f084045c3471
 ---> f74882608a67
Step 4/5 : RUN swupd update $swupd_args
 ---> Running in d24140b97e7c
Warning: Unable to verify server SSL certificate
Trying fallback CA path /usr/share/ca-certs/.prebuilt-store/anchors
Update started.
Preparing to update from 27440 to 27600
Downloading packs...
.
Extracting os-core-webproxy pack for version 27580

Statistics for going from version 27440 to version 27600:

    changed bundles   : 3
    new bundles       : 0
    deleted bundles   : 0

    changed files     : 236
    new files         : 38
    deleted files     : 18

Starting download of remaining update content. This may take a while...
.............................Finishing download of update content...

Staging file content
Applying update
..............................
Update was applied.
Calling post-update helper scripts.
Update took 12.6 seconds
264 files were not in a pack
Update successful. System updated from version 27440 to version 27600
Removing intermediate container d24140b97e7c
 ---> 66dde6fbd74d
Step 5/5 : CMD 'bash'
 ---> Running in edb7fe7a8da8
Removing intermediate container edb7fe7a8da8
 ---> b7d0e62a6aa7
Successfully built b7d0e62a6aa7
Successfully tagged clr-27600:latest
docker run -i -t clr-27600 /bin/bash -c 'exit'
standard_init_linux.go:190: exec user process caused "no such file or directory"
make: *** [Makefile:7: 27600] Error 1
```

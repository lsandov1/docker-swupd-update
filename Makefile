CLR_VERSIONS = 27600

all: $(CLR_VERSIONS)

$(CLR_VERSIONS):
		docker build --build-arg swupd_args="-m $@"  -t clr-$@  .
		docker run -i -t clr-$@ /bin/bash -c 'exit'

test:
		docker build --no-cache --build-arg swupd_args="-m 27590"  -t clr-27590-glibc -f Dockerfile.glibc  .
	  docker run -i -t clr-27590-glibc /bin/bash -c 'exit'

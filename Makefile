CLR_VERSIONS = 27520 27540 27550 27560 27580 27590 27600
all: $(CLR_VERSIONS)
$(CLR_VERSIONS):
		docker build --build-arg swupd_args="-m $@"  -t clr-$@  .
		docker run -i -t clr-$@ /bin/bash -c 'exit'

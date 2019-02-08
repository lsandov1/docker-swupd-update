FROM clearlinux
MAINTAINER otc-swstacks@intel.com
ARG swupd_args
RUN swupd update $swupd_args
CMD 'bash'

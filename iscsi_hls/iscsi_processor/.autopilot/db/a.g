#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/phirasit/project/san-adapter/iscsi_hls/iscsi_processor/.autopilot/db/a.g.bc ${1+"$@"}

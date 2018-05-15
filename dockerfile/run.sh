!/bin/sh

ENV_FILE=`ls /workdir/environment-setup-*`

. $ENV_FILE

cd /workdir/develop

/bin/sh -i

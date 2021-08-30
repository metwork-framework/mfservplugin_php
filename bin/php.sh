#!/bin/bash

export MFMODULE_RUNTIME_GROUP=metwork
export WWWCONF=${MFMODULE_RUNTIME_HOME}/tmp/config_auto/www.conf

cat ${MFEXT_HOME}/opt/php/etc/php-fpm.conf | envtpl > ${MFMODULE_RUNTIME_HOME}/tmp/config_auto/php-fpm.conf
cat ${MFEXT_HOME}/opt/php/etc/php-fpm.d/www.conf | envtpl > ${MFMODULE_RUNTIME_HOME}/tmp/config_auto/www.conf

exec /opt/metwork-mfext/opt/php/sbin/php-fpm --nodaemonize --force-stderr --fpm-config=${MFMODULE_RUNTIME_HOME}/tmp/config_auto/php-fpm.conf

#!/bin/sh

[ -z "`ls /opt/openfire/conf`" ] && cp /usr/local/etc/* /opt/openfire/conf
[ -z "`ls /opt/openfire/plugins`" ] && cp -r /usr/local/lib/plugins /opt/openfire
[ -z "`ls /opt/openfire/resources/security`" ] && cp -r /usr/local/lib/security /opt/openfire/resources

exec sh /opt/openfire/bin/openfire.sh

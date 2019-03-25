#!/bin/bash
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/conf.d/default.conf
if [ "$PLATFORM" = "test" ]; then
	ln -s /etc/nginx/sites-available/${PLATFORM}-drupal-site.conf /etc/nginx/sites-enabled/
fi

exec "$@"

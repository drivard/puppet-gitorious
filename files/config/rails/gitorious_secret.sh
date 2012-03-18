#!/bin/sh -e
cp /usr/src/gitorious.yml /var/www/gitorious/config/gitorious.yml
cp /var/www/gitorious/config/gitorious.yml /var/www/gitorious/config/gitorious.yml.old
export SECRET=$(apg -m 64 | tr -d '\n')
sed -i "s/cookie_secret\:.*$/cookie_secret\: $SECRET/g" /var/www/gitorious/config/gitorious.yml
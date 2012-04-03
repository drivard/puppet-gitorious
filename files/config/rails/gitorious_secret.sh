#!/bin/sh -e
if [ ! -f /usr/src/secret_file ]; then
  echo "secret doesn't exists.";
  cp /var/www/gitorious/config/gitorious.yml /var/www/gitorious/config/gitorious.yml.old
  cp /usr/src/gitorious.yml /var/www/gitorious/config/gitorious.yml
  /usr/bin/apg -m 64 | tr -d '\n' > /usr/src/secret_file
  export SECRET=$(cat /usr/src/secret_file)
  sed -i "s/cookie_secret\:.*$/cookie_secret\: $SECRET/g" /var/www/gitorious/config/gitorious.yml
fi
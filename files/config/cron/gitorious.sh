#!/bin/sh -e
export PATH=/usr/local/sphinx/bin:$PATH
cd /var/www/gitorious && /opt/ruby-enterprise/bin/bundle exec /opt/ruby-enterprise/bin/rake ultrasphinx:index RAILS_ENV=production
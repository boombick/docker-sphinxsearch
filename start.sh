#!/bin/bash

service cron start
echo "0 */1 * * * /usr/bin/indexer --config /etc/sphinxsearch/sphinx.conf --rotate --all" | crontab -u root -
/usr/bin/indexer --config /etc/sphinxsearch/sphinx.conf --rotate --all
searchd -c /etc/sphinxsearch/sphinx.conf --nodetach

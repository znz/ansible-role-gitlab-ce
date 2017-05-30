#!/bin/sh
set -e
umask 077
/opt/gitlab/embedded/bin/chpst -u gitlab-psql /opt/gitlab/embedded/bin/pg_dump -p 5432 -h /var/opt/gitlab/postgresql mattermost_production > "/var/opt/gitlab/backups/$(date +%s_%Y_%m_%d)_mattermost_production_backup"

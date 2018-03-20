#!/bin/sh
set -e
BACKUPS=/var/opt/gitlab/backups
umask 077
if [ ! -S /var/opt/gitlab/postgresql/.s.PGSQL.5432 ]; then
  sleep 5
fi
tar acf "$BACKUPS/$(date +%s_%Y_%m_%d)_etc_gitlab.tar.xz" -C / etc/gitlab
tar acf "$BACKUPS/$(date +%s_%Y_%m_%d)_var_opt_gitlab_mattermost.tar.xz" -C / var/opt/gitlab/mattermost
/opt/gitlab/embedded/bin/chpst -u gitlab-psql /opt/gitlab/embedded/bin/pg_dump -Fc -p 5432 -h /var/opt/gitlab/postgresql mattermost_production > "$BACKUPS/$(date +%s_%Y_%m_%d)_mattermost_production.dump"

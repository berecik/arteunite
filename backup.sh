#!/usr/bin/env bash
git stash
pg_dump $POSTGRES_DB > arteunite.sql
git add arteunite.sql
git add -A media/
git commit -m "db backup"
git push
git stash apply

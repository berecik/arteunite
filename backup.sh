<<<<<<< Updated upstream
#!/usr/bin/env bash
=======
>>>>>>> Stashed changes
git stash
pg_dump $POSTGRES_DB > arteunite.sql
git add arteunite.sql
git add -A media/
git commit -m "db backup"
git push
git stash apply

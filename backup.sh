pg_dump $POSTGRES_DB > arteunite.sql
git add arteunite.sql
git commit -m "db backup"
git push
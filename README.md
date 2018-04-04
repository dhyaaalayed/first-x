# first-x

# Reset database
```
docker-compose run app npm run migrate -- --sync
```

# Run postgress
```
docker-compose run postgres psql postgres://postgres@postgres/postgres
```

# Add new migration file
```
docker-compose run app node_modules/.bin/add-migration file-name.sql
```
# Maintenance Tasks API

To run the app and all current migrations:
- `cp .env.example .env` and fill in the password values
- `docker-compose up`

## Migrations

[migrate](https://github.com/golang-migrate/migrate) is used for DB migrations.

There is a docker-compose service `migrate` that will update to the latest migration as a default when run.

You can run it with the `CMD` argument to update or rollback specific migrations. E.G:
```bash
CMD="down 2" docker-compose run migrate
```

There is also a `make` command to create a new migration:
```bash
make NAME=MIGRATION_NAME create_migration
```

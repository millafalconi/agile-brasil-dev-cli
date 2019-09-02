# README

###DEV-CLI
This application has a Development Command Line Interface that automates a few tasks:

`./trans
`

### Build, Configure and Start Application on local dev environment:
remove the .example from the database.yml.example on the /config folder and then run:

`./trans init`

### Databse Migration:
When first running the application you need to run the db migration
`./trans db_migrate`

### Start Application on local dev environment:
remove the .example from the database.yml.example on the /config folder and then run:

`./trans start`
# README

### DEV-CLI
This application has a Development Command Line Interface that automates a few tasks:

`./trans
`

### Build, Configure and Start Application on local dev environment:
remove the .example from the database.yml.example on the /config folder and then run:

`./trans dev init`


### Start Application on local dev environment:
remove the .example from the database.yml.example on the /config folder and then run:

`./trans dev start`


## trans DEV-CLI commands:

### `trans dev` - Shortcuts to handle local dev env

`init` - Init, configure the local dev environment; And start the app.                      

`start` - Start transervicos in local dev environment.

`stop [SERVER]` - Stop transervicos in local dev environment. 

`clean_data` - Clean all data in local dev environment.

`db_migrate` - Run DB migration.

`goto` - Open transervicos app in localhost. Will trigger 'open URL', in OSX this will fire up your browser.

### `trans setup` - Shortcuts to handle the project setup
`check` - Check all required software.

`install` - Install all required and not installed software.

### `trans test` - Shortcuts to run tests
`unit` - Run all unit tests.

`all` - Run all application tests. Including static analysis.

`style` - Run static analysis for Ruby with Rubocop.

### `trans url` - List relevant URLs                                          
`all` - List all URLs and aliases.

`goto [ALIAS]` - Will trigger 'open URL', in OSX this will fire up your browser.

`show [ALIAS]` - List URL for an specific [ALIAS].

`[ALIAS]` - Just a shortcut. Same as 'show [ALIAS]'.

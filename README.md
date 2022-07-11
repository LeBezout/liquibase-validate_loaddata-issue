# liquibase-validate_loaddata-issue

This project expose an issue with the [`loadData`](https://docs.liquibase.com/change-types/load-data.html) change type, with the `relativeToChangelogFile=true` attribute, when Liquibase is executed with a "java -cp" command.

## Version

* liquibase 4.12.0

## Provided scripts

* `./run1.sh <command>` call the `${LIQUIBASE_HOME}/liquibase` script and assume that `LIQUIBASE_HOME=/opt/liquibase-4.12.0`
* `./run2.sh <command>` is based on `liquibase.integration.commandline.Main` ("java -cp" command)
* `./run3.sh <command>` is based on `liquibase.integration.commandline.LiquibaseLauncher` ("java -jar" command, same as `${LIQUIBASE_HOME}/liquibase` script)

## How to reproduce

### status command is OK

* Execute `./run1.sh status` results : _Liquibase command 'status' was executed successfully._
* Execute `./run2.sh status` results : _Liquibase command 'status' was executed successfully._
* Execute `./run3.sh status` results : _Liquibase command 'status' was executed successfully._

### validate command failed

* Execute `./run1.sh validate` results :
  * _No validation errors found._
  * _Liquibase command 'validate' was executed successfully._
* Execute `./run2.sh validate` results :
  * _liquibase.exception.LiquibaseException: liquibase.exception.UnexpectedLiquibaseException: File 'data/persons.csv' not found_
* Execute `./run3.sh validate` results :
  * _No validation errors found._
  * _Liquibase command 'validate' was executed successfully._

## How to fix

* Add root project folder in classpath for `run2.sh`


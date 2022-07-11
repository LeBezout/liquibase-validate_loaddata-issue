#!/bin/bash
# Execute liquibase with Java liquibase.integration.commandline.Main
# ---------------------------------------------------------------------------
readonly LIQUIBASE_HOME="/opt/liquibase-4.12.0"

# Execute command based on configuration in ./liquibase.properties
java -cp "${LIQUIBASE_HOME}/liquibase.jar:${LIQUIBASE_HOME}/internal/lib/*" -Dliquibase.hub.mode=off -Dliquibase.showBanner=false liquibase.integration.commandline.Main "$@"

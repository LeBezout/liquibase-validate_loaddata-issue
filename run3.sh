#!/bin/bash
# Execute liquibase with Java liquibase.integration.commandline.LiquibaseLauncher
# ---------------------------------------------------------------------------
export LIQUIBASE_HOME="/opt/liquibase-4.12.0"
readonly JAVA_OPTS="-Dliquibase.hub.mode=off -Dliquibase.showBanner=false"

# Execute command based on configuration in ./liquibase.properties
java ${JAVA_OPTS} -jar "${LIQUIBASE_HOME}/liquibase.jar" "$@"

#!/bin/bash
# Execute liquibase with liquibase CLI
# ---------------------------------------------------------------------------
readonly LIQUIBASE_HOME="/opt/liquibase-4.12.0"

# Execute command based on configuration in ./liquibase.properties
"${LIQUIBASE_HOME}/liquibase" "$@"

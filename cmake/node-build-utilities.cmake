##############
# NPM UPDATE #
##############


## Note that it updates node modules for every complilation
macro(catkin_npm_update_target)
    set(NPM_UPDATE_BIN "/usr/bin/npm")
    set(NPM_UPDATE "update")

    message(STATUS "    ... Installing Node dependencies")
    message(STATUS "    ... CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")

    add_custom_target(
      Name ALL
      COMMAND  ${NPM_UPDATE_BIN} ${NPM_UPDATE}
      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )
endmacro()

# This gets invoked only once when the cmake rule gets changed
macro(catkin_npm_update_once)
    set(NPM_UPDATE_BIN "/usr/bin/npm")
    set(NPM_UPDATE "update")

    message(STATUS "    ... Installing Node dependencies")
    message(STATUS "    ... CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")

    # Not sure whether there is a way to make it custom target
    safe_execute_process(
      COMMAND  ${NPM_UPDATE_BIN} ${NPM_UPDATE}
      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
      RESULT_VARIABLE NPM_RESULT
      OUTPUT_VARIABLE NPM_VARIABLE)

    #message(STATUS "    ... Done.. [${NPM_RESULT}]: ${NPM_VARIABLE}")

endmacro()

cmake_minimum_required(VERSION 2.8.3)
project(cmake_nodejs_hook)

find_package(catkin REQUIRED)

set(${PROJECT_NAME}_MODULES "")
list(APPEND ${PROJECT_NAME}_MODULES node-build-utilities.cmake)

catkin_package(
  CFG_EXTRAS ${${PROJECT_NAME}_MODULES}
)

install(DIRECTORY cmake
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

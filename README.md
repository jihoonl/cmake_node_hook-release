cmake_node_hook
===============

Provides cmake hook to manipulate node modules

**catkin_npm_update()**

It invokes npm update update in source directory. 
Note that it is untested with install space

* Example
```
...
find_package(catkin REQUIRED cmake_node_hook)

# Calling npm update every complilation
catkin_npm_update_target()

# Calling only once 
catkin_npm_update_once()

catkin_package()
...
```

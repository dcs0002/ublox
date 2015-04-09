cmake_minimum_required(VERSION 2.8.3)
project(ublox)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  sensor_msgs
  message_generation
  serial
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)

## Generate messages in the 'msg' folder
add_message_files(
   FILES
   Ephem.msg
   GPSFix.msg
   GPSStatus.msg
   navSol.msg
   raw.msg
   rawmeasreap.msg
   svephdata.msg
   Velned.msg
 )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   sensor_msgs
   std_msgs
 )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  INCLUDE_DIRS
    include
  LIBRARIES 
    ublox
  CATKIN_DEPENDS 
    roscpp
    sensor_msgs 
    message_generation
    serial
  DEPENDS 
    system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  include
  include/${PROJECT_NAME}
  ${catkin_INCLUDE_DIRS}
)

## Declare a cpp library
add_library(ublox
   ${PROJECT_INCLUDE_DIRS}
   include/${PROJECT_NAME}/ublox.h
   src/ublox.cpp
   ${catkin_INCLUDE_DIRS}
 )
## Declare a cpp executable
add_executable(ublox_node 
	src/ublox_node.cc)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
add_dependencies(ublox_node
	ublox_generate_messages_cpp
	${PROJECT_NAME}_gencfg
)
## Specify libraries to link a library or executable target against
target_link_libraries(ublox_node
   ublox
   ${catkin_LIBRARIES}
 )


#add_executable(ublox_node src/ublox_node.cc)
#target_link_libraries(ublox_node ${catkin_LIBRARIES})
#add_dependencies(ublox_node ublox_node_generate_messages_cpp)

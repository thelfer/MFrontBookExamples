project(MFrontBookExamples)
set(PACKAGE mfront-book-examples-project)
cmake_minimum_required(VERSION 3.0.2)

include(cmake/modules/mfm.cmake)

# testing
set(CTEST_CONFIGURATION_TYPE "${JOB_BUILD_CONFIGURATION}")
enable_testing()
if(CMAKE_CONFIGURATION_TYPES)
  add_custom_target(check COMMAND 
    ${CMAKE_CTEST_COMMAND} -T test -C $<CONFIGURATION>)
else(CMAKE_CONFIGURATION_TYPES)
  add_custom_target(check COMMAND 
    ${CMAKE_CTEST_COMMAND} -T test )
endif(CMAKE_CONFIGURATION_TYPES)

# add subdirectories here
add_subdirectory(material-properties)
add_subdirectory(models)
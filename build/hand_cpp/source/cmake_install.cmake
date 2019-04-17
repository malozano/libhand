# Install script for directory: /home/mvrlab/Documentos/libhand/hand_cpp/source

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mvrlab/Documentos/libhand/dist/libhand_hog.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE SHARED_LIBRARY FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/libhand_hog.so")
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so"
         OLD_RPATH "/home/mvrlab/Documentos/libhand/build/hand_cpp/source:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_hog.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE SHARED_LIBRARY FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/libhand_renderer.so")
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so"
         OLD_RPATH "/home/mvrlab/Documentos/libhand/build/hand_cpp/source:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_utils.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_utils.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_utils.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mvrlab/Documentos/libhand/dist/libhand_utils.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE SHARED_LIBRARY FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/libhand_utils.so")
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_utils.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_utils.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/libhand_utils.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/LibHand-export.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/LibHand-export.cmake"
         "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/CMakeFiles/Export/_home/mvrlab/Documentos/libhand/dist/LibHand-export.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/LibHand-export-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/mvrlab/Documentos/libhand/dist/LibHand-export.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mvrlab/Documentos/libhand/dist/LibHand-export.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE FILE FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/CMakeFiles/Export/_home/mvrlab/Documentos/libhand/dist/LibHand-export.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/mvrlab/Documentos/libhand/dist/LibHand-export-noconfig.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE FILE FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/CMakeFiles/Export/_home/mvrlab/Documentos/libhand/dist/LibHand-export-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mvrlab/Documentos/libhand/dist/LibHandConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE FILE FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/LibHandConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mvrlab/Documentos/libhand/dist/FindLibHand.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mvrlab/Documentos/libhand/dist" TYPE FILE RENAME "FindLibHand.cmake" FILES "/home/mvrlab/Documentos/libhand/build/hand_cpp/source/LibHandConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/mvrlab/Documentos/libhand/build/hand_cpp/source/dot_sceneloader/cmake_install.cmake")

endif()


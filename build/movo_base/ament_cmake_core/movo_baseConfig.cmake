# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_movo_base_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED movo_base_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(movo_base_FOUND FALSE)
  elseif(NOT movo_base_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(movo_base_FOUND FALSE)
  endif()
  return()
endif()
set(_movo_base_CONFIG_INCLUDED TRUE)

# output package information
if(NOT movo_base_FIND_QUIETLY)
  message(STATUS "Found movo_base: 0.0.0 (${movo_base_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'movo_base' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${movo_base_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(movo_base_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${movo_base_DIR}/${_extra}")
endforeach()

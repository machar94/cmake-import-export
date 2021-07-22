#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Stats::types" for configuration ""
set_property(TARGET Stats::types APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(Stats::types PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libtypes.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Stats::types )
list(APPEND _IMPORT_CHECK_FILES_FOR_Stats::types "${_IMPORT_PREFIX}/lib/libtypes.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

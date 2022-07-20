#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "msdfgen::msdfgen-core" for configuration ""
set_property(TARGET msdfgen::msdfgen-core APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(msdfgen::msdfgen-core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmsdfgen-core.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS msdfgen::msdfgen-core )
list(APPEND _IMPORT_CHECK_FILES_FOR_msdfgen::msdfgen-core "${_IMPORT_PREFIX}/lib/libmsdfgen-core.a" )

# Import target "msdfgen::msdfgen-ext" for configuration ""
set_property(TARGET msdfgen::msdfgen-ext APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(msdfgen::msdfgen-ext PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmsdfgen-ext.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS msdfgen::msdfgen-ext )
list(APPEND _IMPORT_CHECK_FILES_FOR_msdfgen::msdfgen-ext "${_IMPORT_PREFIX}/lib/libmsdfgen-ext.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

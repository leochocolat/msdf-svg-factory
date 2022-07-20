# Install script for directory: /Users/immersiveg/tools/msdfgen

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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/immersiveg/tools/msdfgen/out/libmsdfgen-core.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmsdfgen-core.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmsdfgen-core.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmsdfgen-core.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/msdfgen/core" TYPE FILE FILES
    "/Users/immersiveg/tools/msdfgen/core/Bitmap.h"
    "/Users/immersiveg/tools/msdfgen/core/Bitmap.hpp"
    "/Users/immersiveg/tools/msdfgen/core/BitmapRef.hpp"
    "/Users/immersiveg/tools/msdfgen/core/Contour.h"
    "/Users/immersiveg/tools/msdfgen/core/EdgeColor.h"
    "/Users/immersiveg/tools/msdfgen/core/EdgeHolder.h"
    "/Users/immersiveg/tools/msdfgen/core/MSDFErrorCorrection.h"
    "/Users/immersiveg/tools/msdfgen/core/Projection.h"
    "/Users/immersiveg/tools/msdfgen/core/Scanline.h"
    "/Users/immersiveg/tools/msdfgen/core/Shape.h"
    "/Users/immersiveg/tools/msdfgen/core/ShapeDistanceFinder.h"
    "/Users/immersiveg/tools/msdfgen/core/ShapeDistanceFinder.hpp"
    "/Users/immersiveg/tools/msdfgen/core/SignedDistance.h"
    "/Users/immersiveg/tools/msdfgen/core/Vector2.h"
    "/Users/immersiveg/tools/msdfgen/core/arithmetics.hpp"
    "/Users/immersiveg/tools/msdfgen/core/bitmap-interpolation.hpp"
    "/Users/immersiveg/tools/msdfgen/core/contour-combiners.h"
    "/Users/immersiveg/tools/msdfgen/core/edge-coloring.h"
    "/Users/immersiveg/tools/msdfgen/core/edge-segments.h"
    "/Users/immersiveg/tools/msdfgen/core/edge-selectors.h"
    "/Users/immersiveg/tools/msdfgen/core/equation-solver.h"
    "/Users/immersiveg/tools/msdfgen/core/generator-config.h"
    "/Users/immersiveg/tools/msdfgen/core/msdf-error-correction.h"
    "/Users/immersiveg/tools/msdfgen/core/pixel-conversion.hpp"
    "/Users/immersiveg/tools/msdfgen/core/rasterization.h"
    "/Users/immersiveg/tools/msdfgen/core/render-sdf.h"
    "/Users/immersiveg/tools/msdfgen/core/save-bmp.h"
    "/Users/immersiveg/tools/msdfgen/core/save-tiff.h"
    "/Users/immersiveg/tools/msdfgen/core/sdf-error-estimation.h"
    "/Users/immersiveg/tools/msdfgen/core/shape-description.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/msdfgen" TYPE FILE FILES "/Users/immersiveg/tools/msdfgen/msdfgen.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/immersiveg/tools/msdfgen/out/libmsdfgen-ext.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmsdfgen-ext.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmsdfgen-ext.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmsdfgen-ext.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/msdfgen/ext" TYPE FILE FILES
    "/Users/immersiveg/tools/msdfgen/ext/import-font.h"
    "/Users/immersiveg/tools/msdfgen/ext/import-svg.h"
    "/Users/immersiveg/tools/msdfgen/ext/resolve-shape-geometry.h"
    "/Users/immersiveg/tools/msdfgen/ext/save-png.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/msdfgen" TYPE FILE FILES "/Users/immersiveg/tools/msdfgen/msdfgen-ext.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenTargets.cmake"
         "/Users/immersiveg/tools/msdfgen/out/CMakeFiles/Export/lib/cmake/msdfgen/msdfgenTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen" TYPE FILE FILES "/Users/immersiveg/tools/msdfgen/out/CMakeFiles/Export/lib/cmake/msdfgen/msdfgenTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen" TYPE FILE FILES "/Users/immersiveg/tools/msdfgen/out/CMakeFiles/Export/lib/cmake/msdfgen/msdfgenTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/immersiveg/tools/msdfgen/out/msdfgen")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/msdfgen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/msdfgen")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/msdfgen")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenBinaryTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenBinaryTargets.cmake"
         "/Users/immersiveg/tools/msdfgen/out/CMakeFiles/Export/lib/cmake/msdfgen/msdfgenBinaryTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenBinaryTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen/msdfgenBinaryTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen" TYPE FILE FILES "/Users/immersiveg/tools/msdfgen/out/CMakeFiles/Export/lib/cmake/msdfgen/msdfgenBinaryTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen" TYPE FILE FILES "/Users/immersiveg/tools/msdfgen/out/CMakeFiles/Export/lib/cmake/msdfgen/msdfgenBinaryTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/msdfgen" TYPE FILE FILES
    "/Users/immersiveg/tools/msdfgen/out/lib/cmake/msdfgen/msdfgenConfig.cmake"
    "/Users/immersiveg/tools/msdfgen/out/msdfgenConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/immersiveg/tools/msdfgen/out/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

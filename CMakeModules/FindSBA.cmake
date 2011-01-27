# - Try to find libSBA
# Once done, this will define
#
#  SBA_FOUND - system has libsba
#  SBA_INCLUDE_DIRS - the libsba include directories
#  SBA_LIBRARIES - link these to use libsba


# Include dir
find_path(SBA_INCLUDE_DIR
  NAMES sba.h
)

# Finally the library itself
find_library(SBA_LIBRARY
  NAMES sba
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SBA DEFAULT_MSG SBA_LIBRARY SBA_INCLUDE_DIR)



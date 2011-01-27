# DAISY
# Once done, this will define
#
#  DAISY_FOUND - system has asdcplib
#  DAISY_INCLUDE_DIRS - the asdcplib include directories
#  DAISY_LIBRARY - link these to use asdcplib


# Include dir
find_path(DAISY_INCLUDE_DIR
  NAMES daisy.h daisy/
)

# Finally the library itself
find_library(DAISY_LIBRARY
  NAMES daisy
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DAISY DEFAULT_MSG DAISY_LIBRARY DAISY_INCLUDE_DIR)


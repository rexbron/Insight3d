# ANN
# Once done, this will define
#
#  ANN_FOUND - system has asdcplib
#  ANN_INCLUDE_DIRS - the asdcplib include directories
#  ANN_LIBRARY - link these to use asdcplib


# Include dir
find_path(ANN_INCLUDE_DIR
  NAMES ANN.h ANN/
)

# Finally the library itself
find_library(ANN_LIBRARY
  NAMES ann
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ANN DEFAULT_MSG ANN_LIBRARY ANN_INCLUDE_DIR)

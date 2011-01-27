# ANN
# Once done, this will define
#
#  ANN_FOUND - system has asdcplib
#  ANN_INCLUDE_DIRS - the asdcplib include directories
#  ANN_LIBRARY - link these to use asdcplib


# Include dir
find_path(GDK_PIXBUF_INCLUDE_DIR
  gdk-pixbuf/gdk-pixbuf.h PATH_SUFFIXES gdk-pixbuf-2.0/
)

find_library(GDK_PIXBUF_LIBRARY gdk_pixbuf-2.0)


INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GDK_PIXBUF DEFAULT_MSG GDK_PIXBUF_LIBRARY GDK_PIXBUF_INCLUDE_DIR)

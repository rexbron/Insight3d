# SDL
# Once done, this will define
#
#  SDL_FOUND - system has libsdl
#  SDL_INCLUDE_DIRS - the libsdl include directories
#  SDL_LIBRARIES - link these to use libsdl


# Include dir
find_path(SDL_INCLUDE_DIR
 SDL.h PATH_SUFFIXES SDL/
)

# Finally the library itself
find_library( SDL_LIBRARY
  NAMES SDL
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SDL DEFAULT_MSG SDL_LIBRARY SDL_INCLUDE_DIR)

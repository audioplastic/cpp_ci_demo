PROJECT( cpp_ci_demo )
cmake_minimum_required(VERSION 3.0)

# Set project layout variables
SET(BII_PROJECT_ROOT "/Users/nick/programming/bii/cpp_ci_demo")
SET(BII_BLOCKS_DIR blocks)
SET(BII_DEPS_DIR bii/deps)
SET(BII_LIB_DIR bii/lib)
SET(BII_CMAKE_DIR bii/cmake)
SET(BII_BIN_DIR bin)
set(CMAKE_MODULE_PATH "${BII_PROJECT_ROOT}/blocks"
					  "${BII_PROJECT_ROOT}/bii/deps")

# inclusion of general biicode macros, biicode.cmake 
INCLUDE(biicode.cmake) 

SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BII_PROJECT_ROOT}/bin)
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${BII_PROJECT_ROOT}/bin)
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${BII_PROJECT_ROOT}/bin)

SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${BII_PROJECT_ROOT}/bii/lib)
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${BII_PROJECT_ROOT}/bii/lib)
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${BII_PROJECT_ROOT}/bii/lib)

# Including /blocks and /deps directories
INCLUDE_DIRECTORIES(${BII_PROJECT_ROOT}/blocks)
INCLUDE_DIRECTORIES(${BII_PROJECT_ROOT}/bii/deps)

ADD_DEFINITIONS(-DBIICODE)
SET(BIICODE_ENV_DIR "/Users/nick/.biicode")

#artifact to allow upstream configurations
BII_PREBUILD_STEP(bii/deps/google/gtest)
BII_PREBUILD_STEP(bii/deps/google/gmock)
BII_PREBUILD_STEP(nick/cpp_ci_demo)

# Enable tests with CTest
enable_testing()
# Creating a custom target which will bring associated
# all the test targets
add_custom_target(biitest)

# Inclusion of the blocks affected by the build
BII_INCLUDE_BLOCK(bii/deps/google/gtest)
BII_INCLUDE_BLOCK(bii/deps/google/gmock)
BII_INCLUDE_BLOCK(nick/cpp_ci_demo)

# Automatically generated file, do not edit
SET(BII_IS_DEP False)


# LIBRARY nick_cpp_ci_demo ##################################
# with interface nick_cpp_ci_demo_interface

# Source code files of the library
SET(BII_LIB_SRC  )
# STATIC by default if empty, or SHARED
SET(BII_LIB_TYPE )
# Dependencies to other libraries (user2_block2, user3_blockX)
SET(BII_LIB_DEPS nick_cpp_ci_demo_interface )
# System included headers
SET(BII_LIB_SYSTEM_HEADERS )
# Required include paths
SET(BII_LIB_INCLUDE_PATHS )


# Executables to be created
SET(BII_BLOCK_EXES tests)

SET(BII_BLOCK_TESTS )


# EXECUTABLE tests ##################################

SET(BII_tests_SRC tests.cpp)
SET(BII_tests_DEPS nick_cpp_ci_demo_interface google_gmock google_gtest)
# System included headers
SET(BII_tests_SYSTEM_HEADERS )
# Required include paths
SET(BII_tests_INCLUDE_PATHS )

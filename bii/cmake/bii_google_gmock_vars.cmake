# Automatically generated file, do not edit
SET(BII_IS_DEP True)


# LIBRARY google_gmock ##################################
# with interface google_gmock_interface

# Source code files of the library
SET(BII_LIB_SRC  include/gmock/gmock-actions.h
			include/gmock/gmock-cardinalities.h
			include/gmock/gmock-generated-actions.h
			include/gmock/gmock-generated-function-mockers.h
			include/gmock/gmock-generated-matchers.h
			include/gmock/gmock-generated-nice-strict.h
			include/gmock/gmock-matchers.h
			include/gmock/gmock-more-actions.h
			include/gmock/gmock-more-matchers.h
			include/gmock/gmock-spec-builders.h
			include/gmock/gmock.h
			include/gmock/internal/gmock-generated-internal-utils.h
			include/gmock/internal/gmock-internal-utils.h
			include/gmock/internal/gmock-port.h
			src/gmock-cardinalities.cc
			src/gmock-internal-utils.cc
			src/gmock-matchers.cc
			src/gmock-spec-builders.cc
			src/gmock.cc)
# STATIC by default if empty, or SHARED
SET(BII_LIB_TYPE )
# Dependencies to other libraries (user2_block2, user3_blockX)
SET(BII_LIB_DEPS google_gmock_interface google_gtest)
# System included headers
SET(BII_LIB_SYSTEM_HEADERS algorithm assert.h ctype.h errno.h initializer_list iostream iterator limits limits.h map math.h ostream set sstream stdexcept stdio.h stdlib.h string string.h unistd.h utility vector)
# Required include paths
SET(BII_LIB_INCLUDE_PATHS ${BII_PROJECT_ROOT}/bii/deps/google/gmock//include)


# Executables to be created
SET(BII_BLOCK_EXES )

SET(BII_BLOCK_TESTS )

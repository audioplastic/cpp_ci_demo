#include "google/gtest/include/gtest/gtest.h"
#include "google/gmock/include/gmock/gmock.h"



float sum(float a, float b) 
{
	return a+b;
}


//=================================

TEST(Sum, Normal) {
	//Using a matcher here from gmock
	using namespace testing;
  	EXPECT_THAT(   sum(2, 3),  FloatEq(5)   );
}


//=================================


int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
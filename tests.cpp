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
	
	auto a = 2.f;
	auto b = 3.f;
	
  	EXPECT_THAT(   sum(a, b),  FloatEq(a+b)   );
}


//=================================


int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
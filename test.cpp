#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#include "catch.hpp"

#include "functions_to_implement.cpp"

TEST_CASE ( "Factorials are computed", "[factorial]") {
  REQUIRE( Factorial(2) == 2 );
  REQUIRE( Factorial(3) == 6 );

  std::vector<int> v1 = {1, 2, 3};
  REQUIRE( Sum(v1) == 6 );

  std::vector<int> v2 = {0};
  CHECK( Sum(v2) == 0 );
}

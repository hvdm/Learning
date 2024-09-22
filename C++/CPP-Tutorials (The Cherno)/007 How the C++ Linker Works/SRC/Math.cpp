#include <iostream>
#include "Log.h"

static int Multiply(int a, int b)											// using static means that this function is only for this translation unit (cpp)
{
	Log("Multiply");
	return a * b;
}


int main()
{
	std::cout << Multiply(5, 8) << std::endl;
	std::cin.get();
}
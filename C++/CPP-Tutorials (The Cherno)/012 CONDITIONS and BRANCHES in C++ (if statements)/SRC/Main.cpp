#include <iostream>
#include "Log.h"

int main()
{
	int x = 6;
	bool comparisonResult = x == 5;
	if (comparisonResult)
	{
		Log("Hello world!");
	}
	std::cin.get();
}
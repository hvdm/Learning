#include <iostream>
#include "Log.h"

int main()
{
	// The continue statement breaks one iteration(in the loop) and cintinues with the next iteration

	for (int i = 0; i < 5; i++)
	{
		// *** CONTINUE ***
		// (i % 2) is (i mod 2) is the remainder (keep dividing x/y and you get the remainder. 5 % 2 = 1
		if (i % 2 == 0)
			continue;
		Log("Hello world!!");
		std::cout << i << std::endl;
	}

	Log("=========================================");

	for (int i = 0; i < 5; i++)
	{
		// *** CONTINUE ***
		if (i > 2)
			continue;
		Log("Hello world!!");
		std::cout << i << std::endl;
	}

	Log("=========================================");

	// The break statement is used to jump out of a loop.

	for (int i = 0; i < 5; i++)
	{
		// *** BREAK ***
		// (i % 2) is (i mod 2) is the remainder (keep dividing x/y and you get the remainder. 5 % 2 = 1
		if (i % 2 == 0)
			break;
		Log("Hello world!!");
		std::cout << i << std::endl;
	}

	Log("=========================================");

	for (int i = 0; i < 5; i++)
	{
		// *** BREAK ***

		if (i > 2)
			break;
		Log("Hello world!!");
		std::cout << i << std::endl;
	}

	Log("=========================================");

	for (int i = 0; i < 5; i++)
	{
		// return a value and directly terminates the function
		// *** RETURN ***

		if (i > 2)
			return 0;
		Log("Hello world!!");
		std::cout << i << std::endl;
	}



	std::cin.get();
}
#include <iostream>
#include "Log.h"

int main()
{
	// printing 5 times not the mkost smart way to do :-)
	Log("Hello world!");
	Log("Hello world!");
	Log("Hello world!");
	Log("Hello world!");
	Log("Hello world!");

	for (int i = 0; i < 5; i++)
		Log("Hello world!!");

	Log("===================================");

	bool condition = false;
	while (condition)
	{

	}

	do
	{

	} while (condition);


	std::cin.get();
}
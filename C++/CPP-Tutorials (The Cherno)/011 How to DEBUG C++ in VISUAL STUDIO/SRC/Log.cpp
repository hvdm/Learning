#include <iostream>		// <xxx> use de include path folder
#include "Common.h"		// "xxx" quotes are reletive to the current file
#include "Log.h"


void InitLog()
{
	Log("Initializing Log");

}

void Log(const char* message)
{
	std::cout << message << std::endl;
}

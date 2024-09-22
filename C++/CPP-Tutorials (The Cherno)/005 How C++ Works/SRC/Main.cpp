#include <iostream>														// # = Pre-Processor statement

void Log(const char* message);											// Declaration of Log which is in Log.cpp

int main()																// Entrypoint for the application
{
	Log("Hello World!!!");
	std::cin.get();														// Wait for pressing Enter
}
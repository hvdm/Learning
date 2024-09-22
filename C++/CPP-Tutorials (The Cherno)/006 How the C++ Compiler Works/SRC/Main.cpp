// To see what files are generated and what is included, change the project properties.
// Configuration: All Configurations
// Platform: the current platform using
//
// Configuration Properties -> C/C++ -> PreProcessor -> Preproccess to a file: YES
// it will create a file.i which contains what is processed and how.

// to see what is in a OBJ file (asm), change the configuration property
// Configuration Properties -> C/C++ -> Output files -> Assembler output:  No Listing -> Assembly-Only listing



#include <iostream>														// # = Pre-Processor statement

void Log(const char* message);											// Declaration of Log which is in Log.cpp

int main()																// Entrypoint for the application
{
	Log("Hello World!!!");
	std::cin.get();														// Wait for pressing Enter
}
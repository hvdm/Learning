#pragma once

/*


// using static means that this function is only for this translation unit (cpp)
// When included into multiple cpp files, each file get its own copy of Log
static void Log(const char* message)
{
	std::cout << message << std::endl;
}

// using inline means that this it replaces each call to log with the content of Log
// Log("Initialized") will be changed into std::cout << "Initialized" << std::endl;
// 
inline void Log(const char* message)
{
	std::cout << message << std::endl;
}


*/


// To get rid of the error, move the code to Log.cpp and leave the declaration into Log.h
void Log(const char* message);

#include <iostream>
#include <string>
#include <stdlib.h>

int main()
{
	// Adding a \0 adds an end of string character
	const char name[7] = "hel\0lo";
	// Len will be 3 till it reaches the end of the string
	std::cout << strlen(name) << std::endl;

	// char is a 1 byte type
	const char* name1 = "Hello";	// 8 bits / 1 byte
	
	const wchar_t* name2 = L"Hello";  // 16 bits / 2 bytes
	const char16_t* name3 = u"Hello"; // 16 bits / 2 bytes
	const char32_t* name4 = U"Hello"; // 32 bits / 4 bytes

	const char* name5 = R"(Hello
Line2
Line3)"; // R = RAW = ignore escape characters

	std::cin.get();
}
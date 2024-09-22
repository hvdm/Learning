#include <iostream>
#include <string>

// Always pass the string to a function by reference.
// Otherwise it makes a copy of the string
// const makes the string readonly
void PrintString(const std::string& string)
{
	std::cout << string << std::endl;
}

int main()
{
	// Char pointer
	const char* name = "My Name";
	std::cout << name << std::endl;

	// not null terminated, so extra garbage will be added
	char name2[5] = { 'H', 'e', 'l', 'l', 'o' };
	std::cout << name2 << std::endl;

	// added #0 to terminate the string
	char name3[6] = { 'H', 'e', 'l', 'l', 'o', 0 };
	std::cout << name2 << std::endl;

	name3[3] = 'a';
	std::cout << name3 << std::endl;

	// standard string, must include <string>
	std::string name4 = "Hello";
	std::cout << name4 << std::endl;

	// Adding a string to a string
	std::string name5 = "Hello";
	name5 += " there!";

	// Find text in string
	bool contains = name5.find("llo") != std::string::npos;

	std::cin.get();
}
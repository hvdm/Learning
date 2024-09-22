#include <iostream>


int main()
{
	// VarType VarName = Value (optional)
	int variable = 8;
	std::cout << variable << std::endl;

	variable = 20;
	std::cout << variable << std::endl;

	// Data types:
	// char				= 1 byte	8 bit
	// int				= 4 bytes	31 bit, 1 bit is for the sign		-2147483648 to 2147483647	(2147483647 = because 0 needs to be stored as well)
	// unsigend int		= 4 bytes	32 bit								          0 to 4294967295	(4294967296 = but starting from 0 it's -1)
	// short			= 2 bytes	16 bit
	// long				= 4 bytes	32 bit (depending on the compiler)
	// long long		= 8 bytes	64 bit
	// float			= 4 bytes
	// double			= 8 bytes
	// bool				= 1 byte	(actually it's 1 bit but to address the value it needs to be stored as byte)

	char a = 'A';
	std::cout << a << std::endl;

	a = 65;
	std::cout << a << std::endl;

	float f = 5.5f;
	std::cout << f << std::endl;

	float d = 5.5;
	std::cout << d << std::endl;

	bool b = true;
	std::cout << b << std::endl;

	// To get the size of a datatype use sizeof()
	std::cout << sizeof(b) << std::endl;

	// pointers are declared with a *
	// references are declared with a &
	int varName = 10;
	int* ptrName;
	ptrName = &varName;

	std::cout << varName << std::endl;
	std::cout << ptrName << std::endl;

	std::cin.get();
}
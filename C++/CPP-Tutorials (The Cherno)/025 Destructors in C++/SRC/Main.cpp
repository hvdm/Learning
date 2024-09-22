#include <iostream>

class Entity
{
public:
	float X, Y;

	// Constructor must have the same name as the class
	Entity()
	{
		X = 0.0f;
		Y = 0.0f;
		std::cout << "Constructor Entity!" << std::endl;
	}

	// Destructor must have the same name as the class ans starts with a ~
	~Entity()
	{
		std::cout << "Destructor Entity!" << std::endl;
	}

	void Print()
	{
		std::cout << X << ", " << Y << std::endl;
	}
};


void Function()
{
	Entity e;
	e.Print();
}

int main()
{
	Function();
	std::cin.get();
}
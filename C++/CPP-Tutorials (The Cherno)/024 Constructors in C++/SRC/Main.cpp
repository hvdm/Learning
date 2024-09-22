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
	}

	Entity(float x, float y)
	{
		X = x;
		Y = y;
	}

	void Print()
	{
		std::cout << X << ", " << Y << std::endl;
	}
};

int main()
{
	Entity e(10.0f, 21.4f);
	e.Print();
	
	std::cin.get();
}
#include <iostream>


class Entity
{
private:			// Only this class can access the private variables
	int X, Y;
protected:			// Only this class AND subclasses can access the protected variables
	int Z;
	void Print() {};
public:				// Accessible for everyone
	Entity()
	{
		X = 0;		// Accessible
		Y = 1;		// Accessible
		Z = 2;		// Accessible
		Print();	// Accessible
	}
};

class Player : public Entity
{
private:
	
public:
	Player()
	{
		// X = 2;	// Not accessible
		// Y = 2;	// Not accessible
		Z = 2;		// Accessible
		Print();	// Accessible
	}
};

int main()
{
	// Create an Entity instance
	Entity e;
	//X = 0;		// Not accessible, main is outside the class
	//Y = 1;		// Not accessible main is outside the class
	//Z = 2;		// Not accessible main is outside the class
	//Print();		// Not accessible main is outside the class


	std::cin.get();
}
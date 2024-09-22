#include <iostream>
// the THIS keyword is only accessible to a member function that belongs to a class (a method)
// and inside this method you can reference THIS and THIS is a pointer to the current object instance that the method belongs to.
// 

class Entity
{
public:
	int x, y;
	Entity(int x, int y)
	{
		// you cant do x = x here because the are the same
		this->x = x;
		this->y = y;
	}

	int GetX() const // by placing const here you cant modify the value
	{
		return this->x;

	}
};




int main()
{
	Entity e(1,2);
	std::cout << e.GetX() << std::endl;


	std::cin.get();
}
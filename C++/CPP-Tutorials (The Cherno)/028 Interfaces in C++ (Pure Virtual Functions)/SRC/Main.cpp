#include <iostream>

// A pure virtual funcion in C++ is a essentialy the same as an abstract methode
// or an interface 
// Pure virtual funtions allow us define a function in a base class that doesn't 
// have an implementation and then force subclasses to implement that function

// An interface is a class with only unimplemented functions

// Pure Virtual Class
class Printable
{
public:
	// Public method GetNameName
	// virtual tells the compiler to create a vtable for this function
	// the function has a declaration with = 0; The = 0 makes it pure virtual
	virtual std::string GetClassName() = 0;
};

class Entity : public Printable
{
public:
	// Public method GetName
	// virtual tells the compiler to create a vtable for this function
	// the function has a declaration with = 0; The = 0 makes it pure virtual

	virtual std::string GetName() { return "Entity"; }
	std::string GetClassName() override { return "Entity"; }
};

// Subclass of Entity
class Player : public Entity
{
private:
	// store the name
	std::string m_Name;
public:
	//constructor which let you specify a name
	Player(const std::string& name) : m_Name(name) {}

	// Public method GetName
	// mark the function as override (not required but highly recommended)
	std::string GetName() override { return m_Name; }
	std::string GetClassName() override { return "Player"; }

};


void PrintName(Entity* entity)
{
	std::cout << entity->GetName() << std::endl;
}

void Print(Printable* obj)
{
	std::cout << obj->GetClassName() << std::endl;
}

int main()
{
	// Create the entity
	Entity* e = new Entity();
	Player* p = new Player("Player's name");

	Print(e);
	Print(p);



	std::cin.get();
}
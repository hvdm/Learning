#include <iostream>

// Baseclass
class Entity
{
public:
	// Public method GetName
	// virtual tells the compiler to create a vtable for this function
	virtual std::string GetName() { return "Entity"; }
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
		
};


void PrintName(Entity* entity)
{
	std::cout << entity->GetName() << std::endl;
}

int main()
{
	// Create the entity
	Entity* e = new Entity();
	PrintName(e);
	Player* p = new Player("Player's name");
	PrintName(p);



	std::cin.get();
}
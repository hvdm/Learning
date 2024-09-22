#include <iostream>
#include <string>

using String = std::string;


class Entity
{
private:
	String m_Name;
public:
	Entity() : m_Name("Unknown") {}
	Entity(const String& name) : m_Name(name) {}

	const String& GetName() const { return m_Name; }
};


int main()
{
	// This creates the object on the stack.
	// The stack is small, ussually a few MB's
	// ==============================================

	// e1 is a variable that points to an Entity
	Entity* e1;
	{
		Entity entity1("Hello");
		
		// assign e1 to the memory address of entity
		e1 = &entity1;
		std::cout << entity1.GetName() << std::endl;
	}

	// This creates the object on the heap.
	// ==============================================

	
	Entity* e2;
	{
		// Change the type to an Entity pointer
		//When using new, manually delete
		Entity* entity2 = new Entity("Hello");
		
		// assign e2 to entity, both are poiters allready
		e2 = entity2;
		
		// option1: dereference entity2 firsr before using GetName
		std::cout << (*entity2).GetName() << std::endl;
		// or use the arrow operator that does that for us
		std::cout << entity2->GetName() << std::endl;

		delete e2;
	}



	std::cin.get();
}
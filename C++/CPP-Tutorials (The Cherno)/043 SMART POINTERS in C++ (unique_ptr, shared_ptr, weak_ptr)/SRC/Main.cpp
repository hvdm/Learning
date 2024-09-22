#include <iostream>
#include <string>
#include <memory>

// Previous mentioned:
// "new" allocates memory on the heap
// "delete" the alloced memory because they wont be freed automatically
// Smart Pointer automates this proccess
// Smart Pointer is a wrapper arround new & delete

// There are different types of Smart Pointers:
// unique_ptr : is a scoped pointer, when the pointer goes out of scope it will get destroyed and call delete
// make_unique:

// shared_ptr : using reference counting to keep track on how many references there are. When refcount =0 it gets deleted.
// make_shared:

// weak_ptr   : when assigning a shared_ptr to a weak_ptr it does the same but doesn't increase the refcount



class Entity
{
public:
	// Constructor
	Entity()
	{
		std::cout << "Created Entity!" << std::endl;
	}
	
	// Destructor
	~Entity()
	{
		std::cout << "Destoyed Entity!" << std::endl;
	}

	// Simple print function, passing the string as reference (to prevent a copy of it)
	void Print(const std::string& string)
	{
		std::cout << "Print: " << string << std::endl;
	}
};






int main()
{
	
	// Calling unique_ptr
	{   // New Scope
		
	 // std::unique_ptr<object_type> object_name  = std::make_unique <object_type>(arguments);
	 //	std::unique_ptr<Entity>      entity       = std::make_unique <Entity>     ();
		std::unique_ptr<Entity> uniqueEntity = std::make_unique<Entity>();

		uniqueEntity->Print("uniqueEntity");
	}

	std::cout << "============================================================" << std::endl;

	// Calling shared_ptr

	{   // New Scope
	 //	std::shared_ptr <T>          ptr_name     = std::make_shared <object_type>(arguments);
	 //	std::shared_ptr<Entity>      sharedEntity = std::make_shared <Entity>();
		std::shared_ptr<Entity> sharedEntity = std::make_shared<Entity>();

		sharedEntity->Print("sharedEntity");
	}

	std::cout << "============================================================" << std::endl;

	// Calling weak_ptr
	{   // New Scope
		std::shared_ptr<Entity> sharedEntity0;
		{   // New Scope
		//	std::shared_ptr <T>          ptr_name     = std::make_shared <object_type>(arguments);
		//	std::shared_ptr<Entity>      sharedEntity = std::make_shared <Entity>();
			std::shared_ptr<Entity> sharedEntity1 = std::make_shared<Entity>();
			sharedEntity1->Print("sharedEntity1");

		//	std::weak_ptr <type>  name;
			std::weak_ptr<Entity> weakEntity = sharedEntity1;
		}
	}


	std::cout << "============================================================" << std::endl;

	 
	std::cin.get();
}
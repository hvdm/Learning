#include <iostream>

// Member Initializer Lists in C++ (Constructor Initializer List)
// This means initialize class member function in the constructor

class Entity
{
private:
	std::string m_Name;
	int m_Score;
public:
//	Entity() // default constructor
//	{
//		m_Name = "Unknown";
// 	    m_Score = 0;
//	}

	// Doing the same but with Constructor Initializer List
	Entity()
			// WARNING:
			// the initializer list "order"must be the same as the order in the private section		
		: m_Name("Unknown"), m_Score(0)
	{
	}

	//Entity(const std::string& name)
	//{
	//	m_Name = name;
	//}

	Entity(const std::string& name)
		: m_Name(name)
	{
	}


	// 2nd const is there otherwise you cant access it from
	// const Entity e;
	// e.GetName();
	const std::string& GetName() const
	{
		return m_Name;
	}
};


int main()
{
	Entity e0;
	std::cout << e0.GetName() << std::endl;

	Entity e1("Hello");
	std::cout << e1.GetName() << std::endl;

	std::cin.get();
}
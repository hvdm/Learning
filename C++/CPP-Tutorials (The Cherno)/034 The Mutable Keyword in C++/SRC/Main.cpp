#include <iostream>
#include <string>

class Entity
{
private:
	std::string m_Name;
	int m_DebugCount = 0;
public:
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


	std::cin.get();
}
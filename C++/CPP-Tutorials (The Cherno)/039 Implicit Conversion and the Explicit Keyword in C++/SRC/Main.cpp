#include <iostream>
// Implicit means without you implicity tells what to do, sort of automaticly
// Explicit disables the implict functionality


class Entity
{
private:
	std::string m_Name;
	int m_Age;
public:
	Entity(const std::string& name)
		: m_Name(name), m_Age(-1) {}

	explicit Entity(int age)
		: m_Name("Unknown"), m_Age(age) {}
};


int main()
{
	Entity a("Hello");	// or Entity a = Entity("Hello");

	// This will fail
	//Entity b = 22;		// or Entity b = Entity(22);

	std::cin.get();
}
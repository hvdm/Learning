#include <iostream>
#include <string>

using String = std::string;


// New is used to allocate memory on the HEAP

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
	
	int a = 2;
	// Single 4 byte integer created on the HEAP, memory address strored in b
	int* b = new int;
	delete b;
	// Allocate 50*4 = 200 bytes integer created on the HEAP, memory address strored in c
	int* c = new int[50];
	delete[] c;

	Entity* e = new Entity();
	delete e;




	std::cin.get();
}
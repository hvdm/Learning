#include <iostream>
#include <cstring>

struct Vector2
{
	float x, y;
};

// Writing old school string class the demostrate things without automating things
class String
{
private:
	// char pointer (char*) points to the buffer of chars (m_Buffer)
	char* m_Buffer;
	// variable m_Size that holds the length of the string
	
	// unsigned int m_Size;
	// changed from unsiged int to size_t to prevent C4267 (possible data loss)
	std::size_t m_Size;
public:
	// Constructor
	String (const char* string)
	{
		// Get the size of the string
		m_Size = strlen(string);
		// Create the buffer (m_Buffer) with the size of m_Size +1 (+1 is for the null terminate character #0)
		m_Buffer = new char[m_Size +1];
		// Copy the content of string into the buffer
		memcpy(m_Buffer, string, m_Size);
		// Adding a null terminated character
		m_Buffer[m_Size] = 0;
	}

	// Copy Constructor that does a deep copy
	String(const String& other)
		: m_Size(other.m_Size)
	{
		// Create a new buffer (m_Buffer)
		m_Buffer = new char[m_Size + 1];

		// Copy the content of string into the buffer
		memcpy(m_Buffer, other.m_Buffer, m_Size + 1);

	}


	// Destructor
	~String()
	{
		// Delete the buffer
		delete[] m_Buffer;
	}

	char& operator[](unsigned int index)
	{
		return m_Buffer[index];
	}

	// making this a friends allow the overloaded function to access the m_Buffer directly
	friend std::ostream& operator<<(std::ostream& stream, const String& string);
};



// Write an overload of the operator
std::ostream& operator<<(std::ostream& stream, const String& string)
{
	std::cout << "Copied string" << std::endl;
	stream << string.m_Buffer;
	// Return the stream
	return  stream;
}

void PrintString(const String& string)
{
	std::cout << string << std::endl;
}


int main()
{
	//Creating a variable a and give it the value of 2
	int a = 2;

	//Creating a variable b and assign it to a, this makes a copy of a into b
	int b = a;

	// changing b to 3, leaves a at 2
	b = 3;

	// --------------------------------------------------------------------

	// create a vector2 aa and set x to 2 and y to 3
	Vector2 aa = { 2,3 };
	
	// create a vector2 bb and assign it to aa, this makes a copy of aa into bb
	Vector2 bb = aa;

	// modify bb.x, leaves aa.x at 2
	bb.x = 5;

	// --------------------------------------------------------------------

	// Create a new vector a1 (on the heap)
	Vector2* a1 = new Vector2();
	
	// Assign b1 to a1 is now different, it creates a copy of the pointer, not its content
	Vector2* b1 = a1;

	// Modifying x of b1 will also change x of a1 because a1 and b1 are pointing to the same memoery address
	b1->x = 2;


	// --------------------------------------------------------------------

	String string1 = "Hello world!";
	String string2 = string1;
	string2[1] = 'a';


	std::cout << string1 << std::endl;
	//std::cout << string2 << std::endl;

	// When exiting the application it crashes.
	// This is beause m_Buffer is a char*, meaning that the address of the buffer for both strings is the same.
	// The desctructor of the first string has allready cleaned up the m_Buffer, the destructor of the seccond string tries to do the same

	// When adding the copy constructor this issue is fixed
	std::cout << string2 << std::endl;


	PrintString(string1);
	PrintString(string2);

	// --------------------------------------------------------------------

	 
	std::cin.get();
}
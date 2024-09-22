#include <iostream>
#include <string>
#include <vector>


struct Vertex
{
	float x, y, z;
};

// Output operator
std::ostream& operator<<(std::ostream& stream, const Vertex& vertex)
{
	stream << vertex.x << ", " << vertex.y << ", " << vertex.z;
	return stream;
}


int main()
{
	std::vector<Vertex> vertices;



	std::cin.get();
}
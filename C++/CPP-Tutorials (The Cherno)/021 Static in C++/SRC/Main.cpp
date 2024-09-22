#include <iostream>
// Static INSIDE a class : shares memory with all of the instances of the class
// Static OUTSIDE a class: only visible inside the unit itself


// When the variable exists in both cpp files it will give a linker error.
//int s_Variable = 10;

// To fix this make it point to the external from main (it will take the variable from static.cpp)
extern int s_Variable;

static void Function()
{

}

int main()
{
	std::cout << s_Variable << std::endl;
	std::cin.get();
}
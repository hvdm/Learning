#include <iostream>
#include<string>

static int s_Level = 1;
static int s_Speed = 2;


int main()
{
	if (s_Level > 5)
		s_Speed = 10;
	else
		s_Speed = 5;

	// var = condition ? ValueIfTrue : ValueIfFalse
	s_Speed = s_Level > 5 ? 10 : 5;

	std::string rank = s_Level > 10 ? "Master" : "Beginner";




	std::cin.get();
}
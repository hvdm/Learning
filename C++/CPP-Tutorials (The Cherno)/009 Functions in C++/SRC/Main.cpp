#include <iostream>

// ReturnType FunctionName (input value(s))
int Multiply(int a, int b)
{
	return a * b;
}

// void means "nothing"
void MultiplyAndLog(int a, int b)
{
	int result = Multiply(a, b);
	std::cout << result << std::endl;
}


int main()
{
	MultiplyAndLog(3, 2);
	MultiplyAndLog(8, 5);
	MultiplyAndLog(90, 45);
		 
	std::cin.get();
}
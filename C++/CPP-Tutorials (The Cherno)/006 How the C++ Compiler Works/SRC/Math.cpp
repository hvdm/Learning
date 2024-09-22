const char* Log(const char* message)
{
	return message;
}


#define INTEGER int

INTEGER Multiply(int a, int b)
{
	Log("Multiply");
	INTEGER result = a * b;
	return result;
#include "EndBrace.h"
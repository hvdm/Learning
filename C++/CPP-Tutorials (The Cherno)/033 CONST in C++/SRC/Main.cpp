#include <iostream>

class Entity
{
private:
	int m_X, m_Y;
public:
	int GetX() const
	{
		return m_X;
	}
	void SetX(int x)
	{
		m_X = x;
	}
};



int main()
{
	const int MAX_AGE = 90;

	int* a = new int;
	*a = 2;
	a = (int*)&MAX_AGE; 
	std::cout << * a << std::endl;



	std::cin.get();
}
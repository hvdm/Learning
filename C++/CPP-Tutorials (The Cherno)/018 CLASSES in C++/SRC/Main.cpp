#include <iostream>
#define LOG(x)	std::cout << x << std::endl


class Player
{
public:	
	int x, y;			// position
	int speed;			// speed

	void Move(int xa, int ya)
	{
		x += xa * speed;
		y += ya * speed;
	}
};


// passing Player as reference allows us to modify the object
// OUTSIDE the class
void Move(Player& player, int xa, int ya)
{
	player.x += xa * player.speed;
	player.y += ya * player.speed;
}


int main()
{
	// Lets assume we have a player
	int PlayerX = 0, PlayerY =0;			// position
	int PlayerSpeed = 2;			// speed

  //type   name
	Player player;
	player.x = 5;
	//OUTSIDE the class
	Move(player, 1, -1);

	//INSIDE the class
	player.Move(1, -1);


	std::cin.get();
}
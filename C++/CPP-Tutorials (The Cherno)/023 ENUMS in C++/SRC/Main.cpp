#include <iostream>


class Log
{
public:
	enum Level
	{
		// By setting Error to 0, Warning will be automaticly 1 and Info 2
		LevelError = 0, LevelWarning, LevelInfo
	};

private:
	// using m_ to indicate this is class member which is private
	//int m_LogLevel = LogLevelInfo;

	// changed to enum
	Level m_LogLevel = LevelInfo;

public:
	void SetLevel(Level level)
	{
		m_LogLevel = level;
	}

	void Error(const char* message)
	{
		if (m_LogLevel >= LevelError)
			std::cout << "[Error]: " << message << std::endl;
	}

	void Warn(const char* message)
	{
		if (m_LogLevel >= LevelWarning)
			std::cout << "[WARNING]: " << message << std::endl;
	}

	void Info(const char* message)
	{
		if (m_LogLevel >= LevelInfo)
			std::cout << "[INFO]: " << message << std::endl;
	}

};


int main()
{
	// Create an instance of Log
	Log log;
	log.SetLevel(Log::LevelError);
	log.Warn("Warn Message");
	log.Error("Error Message");
	log.Info("Info Message");


	std::cin.get();
}
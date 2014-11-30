
all:
	g++ -std=c++0x -O3 test.cpp -g -Wall -Wextra -ggdb -o siphashtest && ./siphashtest

clean:
	$(RM) siphashtest


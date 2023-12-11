CC = g++
FLAGS = -std=c++20
COMPILE_FLAGS = $(FLAGS) -c
all: bomberman.out
bomberman.out: main.o wall.o TextField.o Player.o Label.o Home.o Game.o Button.o Box.o  Bomb.o  
	$(CC)  main.o wall.o TextField.o Player.o Label.o Home.o Game.o Button.o Box.o Bomb.o   $(FLAGS) -o bomberman.out
	rm *.o
main.o: main.cpp
	$(CC) $(COMPILE_FLAGS) main.cpp
wall.o: wall.cpp
	$(CC) $(COMPILE_FLAGS) wall.cpp
TextField.o: TextField.cpp
	$(CC) $(COMPILE_FLAGS) TextField.cpp
Player.o: Player.cpp
	$(CC) $(COMPILE_FLAGS) Player.cpp	
Label.o: Label.cpp
	$(CC) $(COMPILE_FLAGS) Label.cpp
Home.o: Home.cpp
	$(CC) $(COMPILE_FLAGS) Home.cpp
Game.o: Game.cpp
	$(CC) $(COMPILE_FLAGS) Game.cpp
Button.o: Button.cpp
	$(CC) $(COMPILE_FLAGS)Button.cpp
Box.o: Box.cpp
	$(CC) $(COMPILE_FLAGS) Box.cpp
Bomb.o: Bomb.cpp
	$(CC) $(COMPILE_FLAGS) Bomb.cpp
Blocks.o: Blocks.cpp
	$(CC) $(COMPILE_FLAGS) Blocks.cpp

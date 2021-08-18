FLAG += -lopengl32
FLAG += -lglu32
FLAG += -lglfw3
FLAG += -lgdi32
FLAG += -lassimp
DEBUG += -g

main: main.o glad.o shader.h camera.h mesh.h model.h
	g++ $^ -o $@ $(FLAG) $(DEBUG)

main.o: main.cpp
	g++ -c $<

glad.o: glad.cpp
	g++ -c $<

.PHONY: clean
clean:
	rm test.exe *.o
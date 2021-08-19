LIB_PATH += -L./assimp/bin
LIB_PATH += -L./assimp/lib
LIB += -lopengl32
LIB += -lglu32
LIB += -lglfw3
LIB += -lgdi32
LIB += -lassimp
INCLUDE_PATH += -I.
DEBUG += -g
DEBUG += -Wall

main: main.o glad.o shader.h camera.h mesh.h model.h
	g++ $^ -o $@ $(LIB_PATH) $(LIB) $(DEBUG)

main.o: main.cpp
	g++ -c $< $(INCLUDE_PATH) $(DEBUG)

glad.o: glad.cpp
	g++ -c $< $(INCLUDE_PATH) $(DEBUG)

.PHONY: clean
clean:
	rm main.exe *.o
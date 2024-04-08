cmake_minimum_required(VERSION 3.28)
project(TiledDeferredShading)

find_package(glm CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(assimp CONFIG REQUIRED)
find_package(Stb REQUIRED)
find_package(glad CONFIG REQUIRED)

set(SRC
    GeometryPass.fs     
    GeometryPass.vs     
    LightBox.fs         
    LightBox.vs         
    LightCulling.cs.glsl
    LightingPass.fs     
    LightingPass.vs     
    camera.h 
    main.cpp            
    mesh.h              
    model.h             
    shader.h   
)         

add_executable(TiledDeferredShading ${SRC})
target_link_libraries(TiledDeferredShading PRIVATE glfw)
target_include_directories(TiledDeferredShading PRIVATE ${Stb_INCLUDE_DIR})
target_link_libraries(TiledDeferredShading PRIVATE assimp::assimp)
target_link_libraries(TiledDeferredShading PRIVATE glad::glad)
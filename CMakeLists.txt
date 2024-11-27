cmake_minimum_required(VERSION 3.29)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")
if(CMAKE_EXPORT_COMPILE_COMMANDS)
  set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES 
      ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})
endif()
project(mcc)
add_executable(mcc
  src/main.cpp
  src/common/loadShader.cpp
  src/common/loadShader.hpp
)
FILE(COPY include/SimpleFragmentShader.fragmentshader DESTINATION .)
FILE(COPY include/SimpleVertexShader.vertexshader DESTINATION .)
find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)
find_package(sdl2 REQUIRED)
find_package(OpenGL REQUIRED)
target_link_libraries(mcc GLEW)
target_link_libraries(mcc glfw)
target_link_libraries(mcc m)
target_link_libraries(mcc OpenGL::GL)


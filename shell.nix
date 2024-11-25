{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  nativeBuildInputs = with pkgs; [
    glib
    cmake
    glfw
    glew
    glm
    libGL
    clang-tools
    SDL2
  ];

  buildInputs = with pkgs; [
    glib
    cmake
    glfw
    glew
    glm
    libGL
    clang-tools
    SDL2
  ];
}

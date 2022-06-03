comp=clang++

$comp -std=c++2a -fmodules-ts --precompile math.cppm -o math.pcm
$comp -std=c++2a -fmodules-ts -c math.pcm -o math.o
$comp -std=c++2a -fmodules-ts -fprebuilt-module-path=. math.o main.cpp -o math


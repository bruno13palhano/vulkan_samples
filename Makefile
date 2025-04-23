#CFLAGS = -std=c++17 -02
#LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -1Xrandr -1Xi
#
#VulkanTest: main.cpp
#    g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)
#
#.PHONY: test clean
#
#test: VulkanTest
#    ./VulkanTest
#
#clean: 
#    rm -f VulkanTest

CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest

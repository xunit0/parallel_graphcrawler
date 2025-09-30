CXX = g++
CXXFLAGS = -std=c++17 -I/opt/homebrew/include
LDFLAGS = -L/opt/homebrew/lib -lcurl

all: level_client par_level_client

level_client: level_client.o
	$(CXX) $(CXXFLAGS) $< -o $@ $(LDFLAGS)

par_level_client: par_level_client.o
	$(CXX) $(CXXFLAGS) $< -o $@ $(LDFLAGS)

clean:
	-rm -f level_client level_client.o par_level_client par_level_client.o

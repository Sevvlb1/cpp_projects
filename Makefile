# Variables
CXX = g++
CXXFLAGS = -Wall -std=c++17
SRC_DIR = src
OBJ_DIR = obj
BIN = main

# Source and object files
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRCS))

# Default target
all: $(BIN)

# Linking
$(BIN): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compilation
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean target
clean:
	rm -rf $(OBJ_DIR) $(BIN)

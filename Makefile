CXX = g++
CXXFLAGS = -std=c++11 -Wall

SRCS = main.cpp Matrix.cpp MultiHeadAttention.cpp FeedForward.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = transformer

.PHONY: all clean

all: $(TARGET)

main: main.cpp Matrix.cpp MultiHeadAttention.cpp FeedForward.cpp
	$(CXX) -std=c++11 -Wall main.cpp Matrix.cpp MultiHeadAttention.cpp FeedForward.cpp -o main

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
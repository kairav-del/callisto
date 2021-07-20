CC	= gcc
TARGET := callisto

target_link_libraries(callisto SDL2main SDL2)

CFILES := $(shell find src/ -name '*.c')
OBJS	= $(addsuffix .o, $(basename $(CFILES)))

CFLAGS := -Wall -Wextra -Werror -O2
LIBS   := -lSDL2

all: $(TARGET)

%.o: %.c
	@$(CC) -o $@ -c $< $(CFLAGS)

$(TARGET): $(OBJS)
	@$(CC) -o $@ $(OBJS)

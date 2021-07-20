CC	= gcc
TARGET := callisto

CFILES := $(shell find src/ -name '*.c')
OBJS	= $(addsuffix .o, $(basename $(CFILES)))

CFLAGS := -Wall -Wextra -Werror -O2
LIBS   := -lSDL2

all: $(TARGET)

%.o: %.c
	@$(CC) -o $@ -c $< $(CFLAGS)

$(TARGET): $(OBJS)
	@$(CC) -o $@ $(OBJS)

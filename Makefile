NAME		:= term

SRC_DIR		:= source/
OBJ_DIR		:= obj/
BUILD_DIR	:= build/

SRC		:= $(wildcard $(SRC_DIR)*.c)
OBJ		:= $(SRC:$(SRC_DIR)%.c=$(OBJ_DIR)%.o)

CC		:= gcc
CFLAG		:= -ggdb -Wall -Wextra
LFLAG		:= -lraylib -lopengl32 -lgdi32 -lwinmm -lpthread

$(OBJ_DIR)%.o: $(SRC_DIR)%.c | build_dir
	$(CC) $(CFLAG) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(LFLAG) -o $(BUILD_DIR)/$(NAME)

build_dir:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR) $(BUILD_DIR)

re: clean all

.PHONY: all $(NAME) build_dir clean re

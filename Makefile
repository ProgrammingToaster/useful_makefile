SRC	=	main.c

OBJ	=	$(SRC:.c=.o)

NAME	=	test

MODE	=	debugging

CFLAGS	+=	-W -Wall -Werror -Wextra

ifeq ($(MODE), debugging)
	CFLAGS	+= -g -g3 -DDEBUGGING
endif

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ) $(CFLAGS)

clean:
	rm -f $(OBJ)
	rm -f $(NAME)

.PHONY: all clean
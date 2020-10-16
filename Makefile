##
## EPITECH PROJECT, 2020
## Untitled (Workspace)
## File description:
## Makefile
##

D_SRC	 =	./src/
D_INC	=	./include/


NAME	=	criterionExample

SRC	=	$(D_SRC)my_putchar.c	\
		$(D_SRC)my_add.c		\
		$(D_SRC)my_rem.c

OBJ	=	$(SRC:.c=.o)

MAIN =	$(D_SRC)main.c
OBJ_MAIN = $(MAIN:.c=.o)

CFLAGS	+=	-W -Wall -Wextra -g3 -I$(D_INC)

all	:	$(NAME)


$(NAME)	:	$(OBJ) $(OBJ_MAIN)
		gcc -o $(NAME) $(OBJ) $(OBJ_MAIN) $(LDFLAGS)

clean	:
		rm -f $(OBJ)
		rm -f $(OBJ_MAIN)
		rm -f $(lib)

fclean	:	clean
		rm -f $(NAME)
		rm -f vgcore.*

re	:	clean all

.PHONY	:	all clean fclean re
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

SRC_TEST =	tests/test_functions.c	\
			tests/test_print.c
OBJ_TEST = $(SRC_TEST:.cpp=.o)
NAME_TEST = unit_tests
TFLAG = --coverage -lcriterion

CFLAGS	+=	-W -Wall -Wextra -g3 -I$(D_INC)

all	:	$(NAME)


$(NAME)	:	$(OBJ) $(OBJ_MAIN)
		gcc -o $(NAME) $(OBJ) $(OBJ_MAIN) $(CFLAGS)

clean	:
		rm -f $(OBJ)
		rm -f $(OBJ_MAIN)

fclean	:	clean
		rm -f $(NAME)
		rm -f $(NAME_TEST)
		rm -f vgcore.*
		rm -rf *.gcda
		rm -rf *.gcno

re	:	clean all

tests_run	: fclean $(OBJ) $(OBJ_TEST)
			gcc -o $(NAME_TEST) $(SRC) $(OBJ_TEST) $(CFLAGS) $(TFLAG)
			./unit_tests
			gcovr --exclude tests/

.PHONY	:	all clean fclean re tests_run
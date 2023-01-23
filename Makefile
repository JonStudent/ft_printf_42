# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbasilio <jbasilio@student.42lisboa.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/17 01:33:50 by jbasilio          #+#    #+#              #
#    Updated: 2022/06/17 02:54:29 by jbasilio         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c

CC = cc -c

CFLAGS = -Wall -Wextra -Werror

LIB = ar -rcs $(NAME)

REMOVE = rm -f

GRN = \e[1;32m

RST = \e[m

all: $(NAME)

$(NAME): *.o
	@printf '%s$(GRN)' "Compiling Libft... "
	@make -s -C libft
	@printf '%s\n$(RST)%s$(GRN)' "Done" "Compiling Ft_printf... "
	@mv libft/libft.a ./$(NAME)
	@$(LIB) *.o
	@printf '%s$(RST)\n' "Go"

bonus: all

%.o: %.c
	@$(CC) $(CFLAGS) $(SRC)

clean:
	@make clean -s -C libft
	@$(REMOVE) *.o

fclean: clean
	@$(REMOVE) $(NAME)

re: fclean all

.PHONY: all clean fclean re

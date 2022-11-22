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

all: $(NAME)

$(NAME): *.o
	@make -C libft
	@mv libft/libft.a ./$(NAME)
	@$(LIB) *.o
bonus: all
%.o: %.c
	@$(CC) $(CFLAGS) $(SRC)
clean:
	@make clean -C libft
	@$(REMOVE) *.o

fclean: clean
	@$(REMOVE) $(NAME)

re: fclean all

.PHONY: all clean fclean re

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
	@printf '%s\n$(RST)%s$(GRN)' "Ok" "Compiling Ft_printf... "
	@mv libft/libft.a ./$(NAME)
	@$(LIB) *.o
	@printf '%s$(RST)\n' "Done"

bonus: all

%.o: %.c
	@$(CC) $(CFLAGS) $(SRC)

clean:
	@printf '%s$(GRN)' "Cleaning Libft... "
	@make clean -s -C libft
	@printf '%s\n$(RST)%s$(GRN)' "Ok" "Cleaning Ft_printf... "
	@$(REMOVE) *.o
	@printf '%s$(RST)\n' "Ok"

fclean: clean
	@printf '%s$(GRN)' "Removing $(NAME)... "
	@$(REMOVE) $(NAME)
	@printf '%s$(RST)\n' "Done"

re: fclean all

.PHONY: all clean fclean re

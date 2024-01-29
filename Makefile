# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jfilipa- <jfilipa-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 18:05:49 by jfilipa-          #+#    #+#              #
#    Updated: 2024/01/19 20:57:07 by jfilipa-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c ft_print_char.c ft_print_hex.c ft_print_pointer.c ft_print_str.c ft_print_unsigned.c ft_putnbr.c

OBJS = $(SRCS:.c=.o)

CFLAGS = -Wall -Werror -Wextra

RM = rm -rf

all : $(NAME)

$(NAME) : $(OBJS)
		ar rcs $(NAME) $(OBJS)

clean :
		$(RM) $(OBJS)

fclean : clean
		$(RM) $(NAME)

re : fclean all

fnorm :
	python3 -m c_formatter_42 $(SRCS) *.h
	norminette $(SRCS) *.h
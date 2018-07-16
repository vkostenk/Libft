# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vkostenk <vkostenk@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/26 12:06:46 by vkostenk          #+#    #+#              #
#    Updated: 2018/07/15 21:43:21 by vkostenk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc -c
AR = ar rc
W = -W -Wall -Wextra -Werror
HEADER = libft.h
SRC = *.c
OBJ = *.o

all: $(NAME)

$(NAME):
	$(CC) $(W) $(SRC) -I $(HEADER)
	$(AR) $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

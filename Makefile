NAME = libftprintf.a
 
SRCS = ft_print_hexa_maj.c \
ft_print_hexa_min.c \
ft_print_memory.c \
ft_printf.c \
ft_putchar_fd.c \
ft_putnbr_fd.c \
ft_putnbr_fd_u.c \
ft_putstr_fd.c

OBJS = ${SRCS:.c=.o}

HEADER = libftprintf.h

CMD=gcc
FLAGS=-Wall -Werror -Wextra

%.o: %.c ${HEADER} Makefile
	$(CMD) $(FLAGS) -c $< -o $@ 

$(NAME):	$(OBJS)
	ar rcs $(NAME) $(OBJS)

all: ${NAME}

clean:
	rm -rf $(OBJS)
 
fclean: clean
	rm -rf ${NAME}
 
re: fclean all
 
.PHONY: clean all re fclean
NAME = libft.a
СС = gcc
CFLAGS = -Wall -Wextra -Werror -I.
RM = rm -f

INCLUDES = libft.h
LIST_MAIN = ft_memcpy.c\
		ft_memset.c\
		ft_strlen.c\
		ft_bzero.c\
		ft_memmove.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_strlcpy.c\
		ft_strlcat.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strncmp.c\
		ft_strnstr.c\
		ft_atoi.c\
		ft_isalpha.c\
		ft_isdigit.c\
		ft_isalnum.c\
		ft_isascii.c\
		ft_isprint.c\
		ft_toupper.c\
		ft_tolower.c\
		ft_calloc.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c
	
OBJS = ${LIST_MAIN:.c=.o}

%.o: %.c $(INCLUDES)
	$(CC) $(CFLAGS) -c $<

$(NAME): $(OBJS)
		ar rcs $@ $^

all: $(NAME)

clean:
		$(RM) $(OBJS)

fclean: clean
		$(RM) $(NAME)

re: clean all

norminette:
	norminette *.c
	
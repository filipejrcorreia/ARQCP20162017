# variaveis

INCLUDES = even_sum.h
SOURCES = even_sum.c main.c
OBJFILES = even_sum.o main.o
EXEC = even_sum

# regras de sufixo

.SUFFIXES : .c .o

# como transformar um .c num .o ; $< -- nome do ficheiro

.c.o:

	gcc -Wall -g -c $<

${OBJFILES}: ${SOURCES} ${INCLUDES}

${EXEC}: ${OBJFILES}

	gcc -Wall -g -o ${EXEC} ${OBJFILES}

run: ${EXEC}

	./${EXEC}

clean:

	rm -f ${OBJFILES} ${EXEC}

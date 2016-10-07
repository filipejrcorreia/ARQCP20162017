# variaveis

INCLUDES = where_exists.h
SOURCES = where_exists.c main.c
OBJFILES = where_exists.o main.o
EXEC = where_exists

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

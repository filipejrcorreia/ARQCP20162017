# variaveis

INCLUDES = power_ref.h
SOURCES = power_ref.c main.c
OBJFILES = power_ref.o main.o
EXEC = power_ref

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

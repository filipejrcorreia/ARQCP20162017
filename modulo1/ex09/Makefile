# variaveis

INCLUDES = sort.h sort_without_reps.h
SOURCES = sort.c sort_without_reps.c main.c
OBJFILES = sort.o sort_without_reps.o main.o
EXEC = sort_without_reps

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

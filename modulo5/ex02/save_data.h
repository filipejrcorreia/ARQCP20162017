typedef struct {
        int age;
        int number;
        int grades[10];
        char name[80];
        char address[120];
} Student;


void save_data(Student *p, int age, int number, char * name, char * address);

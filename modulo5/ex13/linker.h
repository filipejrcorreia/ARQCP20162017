struct node{
	struct node *next;
	int data;
};

struct node * push(struct node *head, int num);

int pop(struct node **ptrhead);

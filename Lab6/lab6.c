#include <stdio.h>

#define TRUE 1
#define FALSE 0
#define MAX 25		// maximum size of stack

typedef int EType;	// element type 
typedef int BOOLEAN;

typedef struct {
	EType data[MAX];//this is the array of EType called data with MAX as size;
	int top;//top element in data
} STACK;//The struct called STACK

// initialize the stack
void initialize(STACK *p) 
{
	p->top = -1;//already done
}

// return true if the stack is empty
BOOLEAN isEmpty(STACK *p) 
{
	return p->top < 0;//already done
}

// return true if the statck is full
BOOLEAN isFull(STACK *p)  	
{
	return p->top == MAX-1; //already done max-1 because arrays start at 0
}

// return the top of the stack without removing it
EType top(STACK *p) 
{
	return p->data[p->top];//already done
}

// remove the top from the stack and return it
EType pop(STACK *p)
{					
    return p->data[p->top--]; 
}

// put a value on the top of the stack
void push(EType elem, STACK *p)	
{				
	p->data[++(p->top)] = elem;
}

int main ()
{
	STACK s;
	int i, n;
	
	initialize (&s);

	for (i=0; i<10; i++)
	       push (i, &s);

	// write code below to pop a value from the stack repeatedly
	// until it becomes empty. also display each of the values. 
	while(s.top >= 0){
		printf("%d \n", pop(&s));
	}
	
	return 0;
}

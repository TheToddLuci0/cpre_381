#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
	int x[1024000];
	int y[1024000];
	int sum;
	int i;

	srand(time(0));
	i = 0;
	while(i<1024000){
		x[i] = rand() % 100;	
		y[i] = rand() % 100;	
	}
	i = 0;
	sum = 0;
	while(i<1024000){
		sum += x[i];	
		sum += y[i];	
	}
	printf("%d\n", sum);

	return 0;
}


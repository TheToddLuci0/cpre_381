#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
	int x[1024000];
	int y[1024000];
	int z[1024000];
	int i;

	srand(time(0));
	i = 0;
	while(i<1024000){
		x[i] = rand() % 100;	
		y[i] = rand() % 100;	
	}
	i = 0;
	while(i<1024000){
		z[i] = x[rand() % 1024000] + y[rand() % 1024000];	
	}
	return 0;
}


# include <stdio.h>

int main(int argc, char* argv[], char *envp[]){
	printf("+---------------------+\r\n");
	printf("| Hello Docker World! |\n\r");
	printf("+---------------------+\r\n");
	printf(" Did you notice, how small this container image is ??");
	printf("\r\n ------------------------------------------------------------------ \r\n");
	printf("\r\n Now, lets try the Container's Environment variables: ");
	for(int i=0; envp[i]!= NULL; i++)
	{
		printf("\r\n %3d - %s",(i+1),envp[i]);
	}
	printf("\r\n\n ------------------------------ Container by Mahendra Shinde ---------------------\r\n");
}

#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	FILE * fp = fopen("generated-flashcards-text.tex", "w");
	if (NULL == fp) {
		perror("Unable to create \'generated-flashcards-test.tex\'");
		
		return EXIT_FAILURE;
	}
	
	fputs("\\documentclass{../../flashcards}\n\n", fp);
	fputs("\\usepackage{blindtext}\n\n", fp);
	fputs("\\begin{document}\n\n", fp);
	fputs("\\section{Generated Flashcards Test}\n\n", fp);
	
	for (int i=0; i<25; i++) {
		fputs("\\addcard{Normal question.}{Answer to normal question.}\n\n", fp);
		fputs("\\addcard{\\blindtext[4]}{\\blindtext[4]}\n\n", fp);
	}
	
	for (int i=0; i<25; i++) {
		fputs("\\addcard{\\blindtext[4]}{\\blindtext[4]}\n\n", fp);
	}
	
	for (int i=0; i<25; i++) {
		fputs("\\addcard{Normal question.}{Answer to normal question.}\n\n", fp);
	}
	
	fputs("\\listofcards\n\n", fp);
		
	fputs("\\end{document}", fp);
	
	fclose(fp);
	
	return EXIT_SUCCESS;
}

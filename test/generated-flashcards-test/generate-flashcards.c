#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	FILE * fp = fopen("generated-flashcards-text.tex", "w");
	if (NULL == fp) {
		perror("Unable to create \'generated-flashcards-test.tex\'");
		
		return EXIT_FAILURE;
	}
	
	fputs("\\documentclass{../../flashcards}\n", fp);
	fputs("\\usepackage{blindtext}\n", fp);
	fputs("\\makeindex\n", fp);
	fputs("\\begin{document}\n", fp);
	fputs("\\section{Generated Flashcards Test}\n", fp);
	
	for (int i=0; i<25; i++) {
		fputs("\n\\begin{card}{Normal question.}\n", fp);
		fputs("Answer to normal question.\n", fp);
		fputs("\\end{card}\n\n", fp);
		
		fputs("\n\\begin{card}{\\blindtext[4]}\n", fp);
		fputs("\\blindtext[4]\n", fp);
		fputs("\\end{card}\n\n", fp);
	}
	
	for (int i=0; i<25; i++) {
		fputs("\n\\begin{card}{\\blindtext[4]}\n", fp);
		fputs("\\blindtext[4]\n", fp);
		fputs("\\end{card}\n\n", fp);
	}
	
	for (int i=0; i<25; i++) {
		fputs("\n\\begin{card}{Normal question.}\n", fp);
		fputs("Answer to normal question.\n", fp);
		fputs("\\end{card}\n\n", fp);
	}
	
	fputs("\\listofcard\n", fp);
	
	fputs("\\printindex\n", fp);
		
	fputs("\\end{document}\n", fp);
	
	fclose(fp);
	
	return EXIT_SUCCESS;
}

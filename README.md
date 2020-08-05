# flashcards
LaTeX class for creating Q&A flashcards. 

## How to Use flashcards.cls

### Getting started

Use this [template](../blob/info/flashcards-tmpl.tex), rename it accordingly (e.g. MyKnowledge.tex) and  compile it.

### Adding New Flashcards

To add a new flashcard type

```
\begin{card}{Question}
Answer
\end{card}
```
Where 'Question' and 'Answer' have to be replaced with the real question and answer texts.

It is recommended that new flashcards are always added at the end of the tex-file, in order not to mess with the numbering of the previously defined flashcards.

Within the card environment LaTex commands can be used to include pictures, formulas, enumerations, etc. 

Tip: If the answer and/or question of a flashcard is very long, chances are good that it will exceed the limitations od the flashcard. LaTeX commands like `\footnotesize` can be used in the card environment to avoid that. This change is only locally and since has no effect on following flashcards.

### Removing Existing Flashcards

If flashcards ought to be removed, it is recommended to increment the card counter like so `\stepcounter{card}`.

Again this has to do with guaranteeing consistent ordering of the flashcards. This recommendation needs not to be followed if the flashcard at the end of the tex-file needs to be removed.

Tip: `\stepcounter{card}` can be replaced with a new card environment, if one does not mind inserting the new flashcard.

### Keep Track of Flashcards

To keep track of all defined flashcards use `\listofcard` at the end of the tex-file. This command will print a list of all defined questions along with the card number.

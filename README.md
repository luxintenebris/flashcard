# flashcards
LaTeX class for creating Q&A flashcards. 

## How to Use flashcards.cls

### Getting started

Use this [template](../blob/info/flashcards-tmpl.tex), rename it accordingly (e.g. MyKnowledge.tex) and  compile it.

Tip: The test files are also a good source of how to use the class.

### Adding New Flashcards

To add a new flashcard type

```
\addcard[opt]{Question}{Answer}
```
Where 'Question' and 'Answer' have to be replaced with the real question and answer texts. The optional argument defines the entry in the List of cards. If the optional argument is ommitted, the question text is used as the entry. 

Note: If the question text includes figures, enumeration, complicated formulas, ... the optional argument cannot be ommitted.

It is recommended that new flashcards are always added at the end of the tex-file, in order not to mess with the numbering of the previously defined flashcards.

Within the `\addcard` command, LaTex commands can be used to include pictures, formulas, enumerations, etc. 

Tip: If the answer and/or question of a flashcard is very long, chances are good that it will exceed the limitations od the flashcard. LaTeX commands like `\footnotesize` can be used to avoid that. This change is only locally and since has no effect on following flashcards.

### Removing Existing Flashcards

If flashcards ought to be removed, it is recommended to increment the card counter like so `\stepcounter{cards}`.

Again this has to do with guaranteeing consistent ordering of the flashcards. This recommendation needs not to be followed if the flashcard at the end of the tex-file needs to be removed.

Tip: `\stepcounter{cards}` can be replaced with a new card environment, if one does not mind inserting the new flashcard.

### Keep Track of Flashcards

To keep track of all defined flashcards use `\listofcards` at the end of the tex-file. This command will print a list of all defined questions along with the card number.

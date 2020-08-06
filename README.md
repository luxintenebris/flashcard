# flashcards

LaTeX class for creating Q&A flashcards. 

## How to Use flashcards.cls

### Getting Started

Use this [template](../blob/info/flashcards-tmpl.tex), rename it accordingly (e.g. MyKnowledge.tex) and  compile it.

Tip: The test files are also a good source on how to use the class.

### Adding New Flashcards

Add a new flashcard with

```
\addcard[entry]{Question}{Answer}
```

Where 'Question' and 'Answer' have to be replaced with the real question and answer. The optional argument defines the entry in the list of cards ([Keeping Track of Flashcards](#keeping-track-of-flashcards)). If the optional argument is ommitted, the question text is used as the entry by default. 

Note: If the question text includes LaTeX-environments like figures, enumeration, ... the optional argument cannot be ommitted!

It is recommended that new flashcards are always added at the end of the tex-file, in order not to mess with the numbering of the previously defined flashcards.

Tip: If the answer and/or question of a flashcard is very long, chances are good that it will exceed the limitations of the flashcard. LaTeX commands like `\footnotesize` can be used to avoid that. This change is only locally and since has no effect on following flashcards.

### Removing Existing Flashcards

If flashcards ought to be removed, it is recommended to replace it with the follwing command `\stepcounter{cards}`, which will increment the cards counter. Again this has to do with guaranteeing consistent ordering of the flashcards. 

Note: For obvious reasons this recommendation needs not to be followed, if the flashcard at the end of the tex-file needs to be removed.

Tip: `\stepcounter{cards}` can be replaced with a `\addcard` command, if one does not mind inserting the new flashcard.

### Keeping Track of Flashcards

To keep track of all defined flashcards use `\listofcards` at the end of the tex-file. This command will print a list of all defined questions along with the card number.

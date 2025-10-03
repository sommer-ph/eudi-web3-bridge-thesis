#!/bin/bash

# Compile main.tex (first run)
pdflatex main.tex

# Run biber for bibliography
biber main

# Make glossaries
makeglossaries main

# Compile again to resolve references
pdflatex main.tex
pdflatex main.tex
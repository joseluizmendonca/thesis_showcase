#!/bin/bash

echo "Compiling LaTeX document with bibliography..."

# First run of pdflatex to create aux files
pdflatex main.tex

# Run biber to process the bibliography
biber main

# Run pdflatex again to incorporate the bibliography
pdflatex main.tex

# Run one more time to resolve all references
pdflatex main.tex

echo "Compilation complete. Check main.pdf for the output."

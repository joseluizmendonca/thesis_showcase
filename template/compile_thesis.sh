#!/bin/bash

echo "Compiling thesis with glossaries..."

# First LaTeX run
pdflatex main.tex

# Generate glossaries
makeglossaries main

# Final LaTeX run to incorporate glossaries
pdflatex main.tex

echo "Compilation complete."

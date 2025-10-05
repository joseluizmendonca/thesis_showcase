#!/bin/bash
# Compilation script for LaTeX document with glossaries

echo "Running pdflatex (first pass)..."
pdflatex -interaction=nonstopmode main.tex

echo "Running makeglossaries..."
makeglossaries main

echo "Running biber for bibliography..."
biber main

echo "Running pdflatex (second pass)..."
pdflatex -interaction=nonstopmode main.tex

echo "Running pdflatex (final pass)..."
pdflatex -interaction=nonstopmode main.tex

echo "Compilation complete. Check main.pdf for the output."

#!/bin/bash

echo "======= First pdflatex run ======="
pdflatex -interaction=nonstopmode main.tex

echo "======= Running makeglossaries ======="
makeglossaries main

echo "======= Running biber for bibliography ======="
biber main

echo "======= Second pdflatex run ======="
pdflatex -interaction=nonstopmode main.tex

echo "======= Final pdflatex run ======="
pdflatex -interaction=nonstopmode main.tex

echo "Compilation complete. Check main.pdf for the output."

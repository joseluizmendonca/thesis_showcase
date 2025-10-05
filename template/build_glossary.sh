#!/bin/bash

echo "====== GLOSSARY COMPILATION SCRIPT ======"
echo "Step 1: First pdflatex run"
pdflatex -interaction=nonstopmode main.tex

echo "Step 2: Running makeglossaries"
makeglossaries main

echo "Step 3: Final pdflatex run"
pdflatex -interaction=nonstopmode main.tex

echo "====== Compilation complete ======"
echo "Check the following files to verify glossary creation:"
echo "- main.pdf: Should contain the printed glossary"
echo "- main.glg: Glossary log file"
echo "- main.glo: Glossary entries file"
echo "- main.gls: Processed glossary file"

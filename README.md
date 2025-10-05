# RWU Thesis Template

A LaTeX template for Bachelor's and Master's theses at Ravensburg-Weingarten University (RWU), featuring the official RWU corporate design with Barlow font family and university colors. Based on the latex-rwustyle package.

## Features

- **Official RWU styling** with violet and cyan color scheme
- **Barlow Semi Condensed font** for professional typography
- **Automated compilation** scripts for easy building
- **Pre-configured structure** with all necessary sections
- **Bibliography management** using BibLaTeX with Biber backend
- **Glossary support** with automatic generation
- **Figure and citation management** with proper formatting

## Prerequisites

- **LaTeX distribution** with XeLaTeX support (TeX Live recommended)
- **Barlow font family** installed on your system
  - Download from: https://github.com/jpt/barlow
  - Install using your OS font installation method
- **Biber** for bibliography processing
- **Make** for automated compilation (optional)

## Quick Start

1. **Clone or download** this repository
2. **Navigate** to the `template/` directory
3. **Edit** `main.tex` to specify your thesis type:
   ```latex
   \documentclass[type=bachelor]{rwuthesis}  % or type=master
   ```
4. **Compile** using one of the provided scripts:
   ```bash
   ./compile_thesis.sh        # Basic compilation
   ./compile_with_bib.sh      # With bibliography
   ./compile_with_glossary.sh # With glossary
   ```

## Project Structure

```
template/
├── main.tex              # Main document file
├── rwuthesis.cls         # RWU thesis document class
├── rwu*.sty              # RWU style packages
├── *.tex                 # Chapter and section files
├── figures/              # Images and diagrams
├── citations/            # Bibliography files
├── compile_*.sh          # Compilation scripts
└── build/               # Output directory
```

## Usage

### Document Setup

Configure your thesis in `main.tex`:
```latex
\documentclass[type=bachelor,foot=true,colorhead=true]{rwuthesis}
```

Available options:
- `type=bachelor|master` - Thesis type (required)
- `foot=true|false` - Include page numbers in footer
- `colorhead=true|false` - Use colored section headings

### Adding Content

- **Title page**: Edit metadata in `main.tex`
- **Chapters**: Edit individual `.tex` files (e.g., `introduction.tex`, `theory.tex`)
- **Bibliography**: Add references to `source.bib`
- **Figures**: Place images in `figures/` directory
- **Glossary**: Define terms in `glossary.tex`

### Compilation

The template includes several compilation scripts:

- `compile.sh` - Basic compilation
- `compile_thesis.sh` - Standard thesis compilation
- `compile_with_bib.sh` - Includes bibliography processing
- `compile_with_glossary.sh` - Includes glossary generation

**Manual compilation:**
```bash
xelatex main.tex
biber main
makeglossaries main
xelatex main.tex
xelatex main.tex
```

## Important Notes

- **Use XeLaTeX** instead of pdfLaTeX for proper font support
- **Install Barlow fonts** before compilation
- **Student usage**: Consult your supervising professor about style requirements before using this template
- **Official documents only**: This template follows RWU corporate design guidelines

## Troubleshooting

**Font errors**: Ensure Barlow fonts are properly installed
**Bibliography issues**: Check that Biber is installed and up-to-date
**Glossary problems**: Run `makeglossaries main` after initial compilation

## Files Overview

- `main.tex` - Main document with preamble and structure
- `rwuthesis.cls` - Custom document class for RWU theses
- `rwukoma.sty` - KOMA-Script integration with RWU styling
- `rwufont.sty` - Font configuration for Barlow family
- `rwubase.sty` - Base style definitions
- `rwudefs.sty` - Color definitions and logo macros

## License

This template is designed for academic use at RWU. Please respect university guidelines and copyright policies when using these materials.
#!/bin/bash

# download official character sheet if needed
if [ ! -f 5E_CHARACTERSHEETSV3.ZIP ]; then
    wget http://media.wizards.com/2014/downloads/dnd/5E_CHARACTERSHEETSV3.ZIP
fi

# unpack the sheets and rename them to fix the example character sheet
if [ ! -f base.pdf ] || [ ! -f spells.pdf ] || [ ! -f details.pdf ] || [ ! -f base_alternative.pdf ]; then
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Character Sheet - Print Version.pdf"
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Spellcasting Sheet (Optional) - Print Version.pdf"
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Character Details (Optional) - Print Version.pdf"
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Character Sheet - Alternative - Print Version.pdf"
    mv "Character Sheet - Print Version.pdf" "base.pdf"
    mv "Character Sheet - Alternative - Print Version.pdf" "base_alternative.pdf"
    mv "Character Details (Optional) - Print Version.pdf" "details.pdf"
    mv "Spellcasting Sheet (Optional) - Print Version.pdf" "spells.pdf"
fi

# build character sheet
pdflatex Character\ Sheet.tex

#!/bin/bash

# Clear the Screen
clear

# Animated Title
figlet -f starwars '   : ) to' | lolcat ; figlet -f rozzo '     LaTeX' | lolcat

# Allowing to execute in RAM
cd /tmp/

# New SMI file for Open Babel
touch chemistry_input.smi

# Smile input
echo "Type the smile input here :" | lolcat
read chemistry_input

# Transfer input to the newly created file
echo $chemistry_input >> chemistry_input.smi

# Running Open Babel
echo "
Open Babel 3.1.0
" | lolcat
obabel  -i smi -: "chemistry_input.smi" -o mol -O chemistry_molfile.mol

# Contents of the MOL file
echo "
MOL file Contents :" | lolcat
cat /tmp/chemistry_molfile.mol

# Converting MOL to LaTeX [Using \chemfig{}]
echo "
Converted LaTeX syntax :
" | lolcat
mol2chemfig -w chemistry_molfile.mol

# Remove cache file if exist
rm /tmp/chemistry_input.smi
rm /tmp/chemistry_molfile.mol

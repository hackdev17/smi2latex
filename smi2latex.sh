#!/bin/bash

# Function "chemconverter"
chemconverter ()
{
    # Declaring variables
    source=/tmp/chem_smiles.smi
    target=/tmp/chem_smiles.mol
    pytarget='/tmp/chem_smiles.mol'

    # Heading
    clear && figlet -f speed 'Chemical Converter' -w 100 \
    | lolcat

    # User interaction
    printf '\n %s : \n > ' "Enter Smiles" | lolcat
    read input

    # Convert directly
    directsmi ()
    {
        # Direct Converter
        mol2chemfig -w -i direct $input
    }

    obabelconv ()
    {
        # Dump input to source file
        echo $input > $source

        # Using open-babel
        printf \n
        obabel -i smi -: "/tmp/chem_smiles.smi" \
        -o mol -O $target

        # Molfile Contents
        printf '\n %s \n' "Contents of mol file are :" | lolcat
        cat $target
    
        printf '\n %s \n\n' "Converted Output :" | lolcat
        python3 -m mol2chemfigPy3 -w $pytarget
        
        # Remove cache
        rm -rf $source $target
    }

    directsmi || obabelconverter
    
    printf '\n %s' "Press return to continue ..." | lolcat
    read input
}

# Run funtion "chemconverter" untill requered
while true ; do chemconverter ; done

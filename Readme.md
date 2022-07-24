# smi2latex #

## Introduction ##
Convert SMI input to LaTeX `\chemfig{}` </br>

## Prerequisites/Dependencies ##
You need to install `obabel` & `mol2latex` packages </br>
Installation through command line is better in some case due to non-availability above of packages </br>
You may install them through `pip` if not available </br>

## Installation from Command line [Linux] ##
### Debian ###
`$ sudo apt-get update`</br>
`$ sudo apt-get install obabel mol2chemfig`</br>

### Arch Linux ###
`$ paru obabel mol2chemfig`</br>
`$ yay obabel mol2chemfig`</br>

## PIP Install ##
### Debian ###
`$ sudo apt-get install python-pip`</br>
`$ pip install -U mol2chemfigPy3`</br>

### Arch Linux ###
`$ sudo pacman -S python-pip`</br>
`$ pip install -U mol2chemfigPy3`</br>

## Additional Packages [LaTeX]
To render some complex structures, and ring like structure use the `mol2chemfig` package in LaTeX
i.e add the line `\usepackage{mol2chemfig}`

## How it works ##
Simply it converts user input to `\chemfig{}` output.
If failes then, runs `obabel` which converts input to a `*.mol` file and `mol2chemfig` converts `*.mol` to `*.tex` </br>

## Usage ##
Just type the smile coeds you want in LaTeX </br>

## Output ##
No output file is genarated, Only LaTeX syntax is genarated

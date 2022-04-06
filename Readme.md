# smi2tex

Introduction :
Convert SMI input to LaTeX [ \chemfig{} ]

Prerequisites/Dependencies :
You need to install `obabel` & `mol2latex` packages
Installation through command line is better in some case due to non-availability above of packages
You may install them through `pip` if not available

Commands :

Debian :
`sudo apt-get update`
`sudo apt get-install obabel mol2latex`

Arch Linux :
`paru obabel mol2latex`
`yay obabel mol2latex`

How it works :
This shell script used to run `obabel` which converts input to a *.mol file and `mol2latex` converts *.mol to *.tex

Usage :
Just type the smile coeds u want in LaTeX

Output :
No output file is genarated,only LaTeX syntax is genarated
# smi2tex

ntroduction :</h3> </br>
Convert SMI input to LaTeX [ \chemfig{} ] </br>

Prerequisites/Dependencies : </br>
You need to install `obabel` & `mol2latex` packages </br>
Installation through command line is better in some case due to non-availability above of packages </br>
You may install them through `pip` if not available </br>

Commands : </h3>

Debian : </h4> </br>
`sudo apt-get update`</br>
`sudo apt get-install obabel mol2chemfig`</br>

Arch Linux : </h4> </br>
`paru obabel mol2chemfig`</br>
`yay obabel mol2chemfig`</br>

How it works : </h3> </br>
This shell script used to run `obabel` which converts input to a *.mol file and `mol2latex` converts *.mol to *.tex </br>

Usage : </h3> </br>
Just type the smile coeds u want in LaTeX </br>

Output : </h3> </br>
No output file is genarated,only LaTeX syntax is genarated

# Introduction #
This is a colaborative project for ** syntax highlight** for VIM.

It can to be used for** Identity Manager** (Netiq) and **Oracle Identity Manager** (OIM). 

If you have some coments, feel free to contact me: **fabio.luna@gmail.com**

# Configuration #
To make this work:

1. Create the following structure: **~/.vim/syntax/oim.vim** (for OIM files)
2. Inside the VIM execute **:set syntax=oim**
3. Ou adicione a seguinte linha em ~/.vimrc:
		au BufNewFile,BufRead *.<extensao do log> setlocal ft=<oim ou idm>

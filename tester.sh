#!/bin/bash

PURPLE='\033[0;35m'
GREEN='\033[0;32m'
GRAY='\033[0;30m'
DEFAULT='\033[0m'
DEFAULT_BASH='\033[0;37m'

echo -e "${DEFAULT}"
echo -e "---------------- ex01 ----------------"
gcc ex01.c
echo -e "${GREEN}"
./a.out <<< "40 50 60 70" 			&& echo -e "${DEFAULT}    <--  40 50 60 70 (resposta: 70) ${GREEN}"
./a.out <<< "70 15 120 36" 			&& echo -e "${DEFAULT}   <--  70 15 120 36 (resposta: 120) ${GREEN}"
./a.out <<< "1323 1455 1322 1321" 	&& echo -e "${DEFAULT}  <--  1323 1455 1322 1321 (resposta: 1455) ${GREEN}"
./a.out <<< "1323 344 1322 1321" 	&& echo -e "${DEFAULT}  <--  1323 344 1322 1321 (resposta: 1323) ${GREEN}"
echo -e "${DEFAULT}"

echo -e "---------------- ex02 ----------------"
gcc ex02.c
echo -e "${GREEN}"
./a.out <<< "-1"  && echo -e "${DEFAULT} --> -1! == NaN${GREEN}"
./a.out <<< "0"  && echo -e "${DEFAULT} --> 0! == 1${GREEN}"
./a.out <<< "1"  && echo -e "${DEFAULT} --> 1! == 1${GREEN}"
./a.out <<< "2"  && echo -e "${DEFAULT} --> 2! == 2${GREEN}"
./a.out <<< "3"  && echo -e "${DEFAULT} --> 3! == 6${GREEN}"
./a.out <<< "4"  && echo -e "${DEFAULT} --> 4! == 24${GREEN}"
./a.out <<< "10"  && echo -e "${DEFAULT} --> 10! == 3628800${GREEN}"
./a.out <<< "11"  && echo -e "${DEFAULT} --> 11! == 39916800${GREEN}"
./a.out <<< "12"  && echo -e "${DEFAULT} --> 12! == 479001600${GREEN}"
./a.out <<< "13"  && echo -e "${DEFAULT} --> 13! == 6227020800 (above int range)${GREEN}"
echo -e "${DEFAULT}"

echo -e "---------------- ex03 ----------------"
gcc ex03.c
echo -e "${DEFAULT}"
echo -e "${DEFAULT}--> 1,2,3 --> 0 (resposta: 0) ${GREEN}" && ./a.out <<< "1,2,3 0" && echo ""
echo -e "${DEFAULT}--> 1,2,3 --> 1 (resposta: 1) ${GREEN}" && ./a.out <<< "1,2,3 1" && echo ""
echo -e "${DEFAULT}--> 1,2,3,4,5 --> 5 (resposta: 2) ${GREEN}" && ./a.out <<< "1,2,3,4,5 5" && echo ""
echo -e "${DEFAULT}--> 1,2,3,4,5 --> 6 (resposta: 3) ${GREEN}" && ./a.out <<< "1,2,3,4,5 6" && echo ""
echo -e "${DEFAULT}--> 1,2,3,4,5 --> 100 (resposta: 5) ${GREEN}" && ./a.out <<< "1,2,3,4,5 100" && echo ""
echo -e "${DEFAULT}--> 4,2,3,1,5,6 --> 7 (resposta: 3) ${GREEN}" && ./a.out <<< "4,2,3,1,5,6 7" && echo ""
echo -e "${DEFAULT}--> 4,2,3,1,5,6,7,8,9,10 --> 15 (resposta: 5) ${GREEN}" && ./a.out <<< "4,2,3,1,5,6 15" && echo ""
echo -e "${DEFAULT}"

echo -e "---------------- ex04 ----------------"
gcc ex04.c
echo -e "${DEFAULT}"
echo -e "${DEFAULT}--> 1 2 (resposta: 4) ${GREEN}" && ./a.out <<< "1 2" && echo ""
echo -e "${DEFAULT}--> 8 2 (resposta: 512) ${GREEN}" && ./a.out <<< "8 2" && echo ""
echo -e "${DEFAULT}--> 10 15 (resposta: 327680) ${GREEN}" && ./a.out <<< "10 15" && echo ""
echo -e "${DEFAULT}--> 10 100 (resposta: 102400) ${GREEN}" && ./a.out <<< "10 100" && echo ""
echo -e "${DEFAULT}"

echo -e "---------------- ex05 ----------------"
gcc ex05.c
echo -e "${GREEN}"
./a.out
echo -e "${DEFAULT}"
echo -e "  [resposta]"
echo -e ""
echo -e " O  O  X  O  O"
echo -e " O  X  O  X  O"
echo -e " X  X  X  X  X"
echo -e "${DEFAULT_BASH}"
echo -e "--------------------------------------"
rm ./a.out

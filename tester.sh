PURPLE='\033[0;35m'
GREEN='\033[0;32m'
GRAY='\033[0;30m'
DEFAULT='\033[0m'
DEFAULT_BASH='\033[0;37m'

echo -e "${DEFAULT}"
echo -e "---------------- ex01 ----------------"
gcc ex01.c
echo -e "${GREEN}"
./a.out <<< "40 50 60 70" 			&& echo -e "${DEFAULT}    <--  40 50 60 70${GREEN}"
./a.out <<< "70 15 120 36" 			&& echo -e "${DEFAULT}   <--  70 15 120 36${GREEN}"
./a.out <<< "1323 1455 1322 1321" 	&& echo -e "${DEFAULT}  <--  1323 1455 1322 1321${GREEN}"
./a.out <<< "1323 344 1322 1321" 	&& echo -e "${DEFAULT}  <--  1323 344 1322 1321${GREEN}"
echo -e "${DEFAULT}"

echo -e "---------------- ex02 ----------------"
gcc ex02.c
echo -e "${GREEN}"
./a.out <<< "0"  && echo -e "${DEFAULT} --> fatorial de 0 == 1${GREEN}"
./a.out <<< "1"  && echo -e "${DEFAULT} --> fatorial de 1 == 1${GREEN}"
./a.out <<< "2"  && echo -e "${DEFAULT} --> fatorial de 2 == 2${GREEN}"
./a.out <<< "3"  && echo -e "${DEFAULT} --> fatorial de 3 == 6${GREEN}"
./a.out <<< "4"  && echo -e "${DEFAULT} --> fatorial de 4 == 24${GREEN}"
./a.out <<< "10"  && echo -e "${DEFAULT} --> fatorial de 10 == 3628800${GREEN}"
echo -e "${DEFAULT}"

echo -e "---------------- ex03 ----------------"
gcc ex03.c
echo -e "${DEFAULT}"
echo -e "${DEFAULT}--> 1,2,3,4 --> 5 (resposta: 2) ${GREEN}" && ./a.out <<< "1,2,3,4 5" && echo ""
echo -e "${DEFAULT}--> 1,2,3,4 --> 6 (resposta: 3) ${GREEN}" && ./a.out <<< "1,2,3,4 6" && echo ""
echo -e "${DEFAULT}--> 4,2,3,1,5,6 --> 7 (resposta: 3) ${GREEN}" && ./a.out <<< "4,2,3,1,5,6 7" && echo ""
echo -e "${DEFAULT}--> 4,2,3,1,5,6,7,8,9,10 --> 15 (resposta: 5) ${GREEN}" && ./a.out <<< "4,2,3,1,5,6 15" && echo ""
echo -e "${DEFAULT}"

echo -e "---------------- ex04 ----------------"
gcc ex04.c
echo -e "${DEFAULT}"
echo -e "${DEFAULT}--> 1 2 (resposta: 3) (0 3 3 -2) ${GREEN}" && ./a.out <<< "1 2" && echo ""
echo -e "${DEFAULT}--> 8 2 (resposta: 10) (0 10 10 -3) ${GREEN}" && ./a.out <<< "8 2" && echo ""
echo -e "${DEFAULT}--> 10 15 (resposta: 15) (10 15 5 -11) ${GREEN}" && ./a.out <<< "10 15" && echo ""
echo -e "${DEFAULT}--> 10 100 (resposta: 110) (0 110 110 -11) ${GREEN}" && ./a.out <<< "10 100" && echo ""
echo -e "${DEFAULT}"

echo -e "---------------- ex05 ----------------"
gcc ex05.c
echo -e "${GREEN}"
./a.out
echo -e "${DEFAULT}"
echo -e "  [resposta]"
echo -e ""
echo -e " O  O  O  O  O"
echo -e " X  X  O  X  O"
echo -e " O  X  O  O  X"
echo -e "${DEFAULT_BASH}"
echo -e "--------------------------------------"

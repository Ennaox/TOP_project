rm -f tmp.txt
var=0
while [ $var -ne 201 ]
do
./display --checksum ref_resultat_200.raw var >> tmp.txt
echo $var >> tmp.txt
let "var++"
done

rm -f tmp2.txt
var2=0
while [ $var2 -ne 201 ]
do
./display --checksum resultat.raw var >> tmp2.txt
echo $var2 >> tmp2.txt
let "var2++"
done

diff tmp.txt tmp2.txt
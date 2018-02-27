#!/usr/bin/bash
#Donloading the pdf Files 
 sudo wget   "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=ZzxGQeIAqwwjQ8N1QlwEPz4nWxYmnjGCmJGcs%2BMo2%2Bo%3D" -O S_1.pdf
 sudo wget   "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=jFRGWr1baXaLumYZsI2ij4HCe5swJsQU7kCx2HkcThY%3D" -O S_2.pdf
 sudo wget   "http://14.139.184.212/ask/c4b/c4b.txt" 

truncate -s 0 S.txt 
truncate -s 0 S1temp.txt
pdftotext S_1.pdf S.txt  #to convert into text
#to delete the non-printable characters
tr -cd "[:print:]" < S.txt > S1temp.txt

#to get the data of the specified branch.

sed 's/MDL16/\n&/g' < S1temp.txt > S.txt
grep 'MDL16CS*' S.txt > S1temp.txt
sed 's/ELECTRONICS/\n&/g' < S1temp.txt > S.txt
head -n -3 S.txt > S1temp.txt
sed 's/[, ]//g' S1temp.txt > S.txt
sed 's/)/) /g' S.txt > S1temp.txt
sed 's/MA/ MA/g'  S1temp.txt > S.txt
sed 's/MA101(//g' S.txt > S1temp.txt
sed 's/) PH100(/ /g' S1temp.txt > S.txt
sed 's/) BE110(/ /g' S.txt > S1temp.txt
sed 's/) BE10105(/ /g' S1temp.txt > S.txt
sed 's/) BE103(/ /g' S.txt > S1temp.txt
sed 's/) EE100(/ /g' S1temp.txt > S.txt
sed 's/) PH110(/ /g' S.txt > S1temp.txt
sed 's/) EE110(/ /g' S1temp.txt > S.txt
sed 's/) CS110(/ /g' S.txt > S1temp.txt
sed 's/)/ /g' S1temp.txt > S.txt

sed 's/ O/ 10/g' < S.txt > S1temp.txt
sed 's/ A+/ 9/g' < S1temp.txt > S.txt
sed 's/ A/ 8.5/g' < S.txt > S1temp.txt
sed 's/ B+/ 8/g' < S1temp.txt > S.txt
sed 's/ B/ 7/g' < S.txt > S1temp.txt
sed 's/ P/ 6/g' < S1temp.txt > S.txt
sed 's/ C/ 5/g' < S.txt > S1temp.txt
sed 's/ F/ 0/g' < S1temp.txt > S.txt


truncate -s 0 p.txt
truncate -s 0 S1temp.txt

filename=S.txt 
while read -r line
do
	name="$line"
	arr=($name)
	line1=${arr[0]}
	echo "$line1" >> S1temp.txt
done < "$filename"

# Calulating SGPA1

filename=S.txt
while read -r line
do
    name="$line"
    arr=($name)
    MA101=${arr[1]}
    PH100=${arr[2]}
    BE110=${arr[3]}
    BE10105=${arr[4]}
    BE103=${arr[5]}
    EE100=${arr[6]}
    PH110=${arr[7]}
   EE110=${arr[8]}
	CS110=${arr[9]}
	i=$(bc <<< "scale=1; ($MA101)*4 + ($PH100) * 4 + ($BE110) * 3 + ($BE10105)*3 + ($BE103)*3 + ($EE100)*3 + ($PH110)*1 + ($EE110)*1 + ($CS110)*1")
	mark=$(bc <<< "scale=1; ($i)/23 ")
	echo "$mark" >> p.txt 
done < "$filename"

paste S1temp.txt p.txt > r.txt




truncate -s 0 S.txt 
truncate -s 0 S1temp.txt
pdftotext S_2.pdf S.txt ##to convert into text
tr -cd "[:print:]" < S.txt > S1temp.txt

# extracting the required data of specified Branch

sed 's/MDL16/\n&/g' < S1temp.txt > S.txt
grep 'MDL16CS*' S.txt > S1temp.txt
sed 's/TCE16CS006P/\n&/g' < S1temp.txt > S.txt
head -n -1 S.txt > S1temp.txt
sed 's/,C/, C/g' < S1temp.txt > S.txt 
sed 's/[, ]//g' S.txt > S1temp.txt
sed 's/)/) /g' S1temp.txt > S.txt
sed 's/CY/ CY/g'  S.txt > S1temp.txt
sed 's/CY100(//g' S1temp.txt > S.txt
sed 's/) BE100(/ /g' S.txt > S1temp.txt
sed 's/) EC100(/ /g' S1temp.txt > S.txt
sed 's/)  CY110(/ /g' S.txt > S1temp.txt
sed 's/) EC110(/ /g' S1temp.txt > S.txt
sed 's/) MA102(/ /g' S.txt > S1temp.txt
sed 's/) BE102(/ /g' S1temp.txt > S.txt
sed 's/) CS100(/ /g' S.txt > S1temp.txt
sed 's/) CS120(/ /g' S1temp.txt > S.txt
sed 's/)/ /g' S.txt > S1temp.txt

sed 's/ O/ 10/g' < S1temp.txt > S.txt
sed 's/ A+/ 9/g' < S.txt > S1temp.txt
sed 's/ A/ 8.5/g' < S1temp.txt > S.txt
sed 's/ B+/ 8/g' < S.txt > S1temp.txt
sed 's/ B/ 7/g' < S1temp.txt > S.txt
sed 's/ P/ 6/g' < S.txt > S1temp.txt
sed 's/ C/ 5/g' < S1temp.txt > S.txt
sed 's/ F/ 0/g' < S.txt > S1temp.txt


truncate -s 0 p1.txt
truncate -s 0 S.txt

filename=S1temp.txt 
while read -r line
do
	name="$line"
	arr=($name)
	line1=${arr[0]}
	echo "$line1" >> S.txt
done < "$filename"

#Calculating SGPA2

filename=S1temp.txt
while read -r line
do
    name="$line"
    arr=($name)
    CY100=${arr[1]}
    BE100=${arr[2]}
    EC100=${arr[3]}
    CY110=${arr[4]}
    EC110=${arr[5]}
    MA102=${arr[6]}
    BE102=${arr[7]}
    CS100=${arr[8]}
	CS120=${arr[9]}
	i1=$(bc <<< " ($MA102)*4 + ($CY100) * 4 + ($BE100) * 4 + ($EC100)*3 + ($CY110) + ($EC110) + ($BE102)*3 + ($CS100)*3 + ($CS120)")
	mark1=$(bc <<< "scale=1; ($i1)/24 ")
	echo "$mark1" >> p1.txt 
done < "$filename"
truncate -s 0 final.txt
paste S.txt p1.txt > r1.txt



paste p.txt p1.txt > final.txt
truncate -s 0 p3.txt

# Calculating CGPA

filename=final.txt
while read -r line
do
	name="$line"
	arr=($name)
	sgpa1=${arr[0]}
	sgpa2=${arr[1]}
	i3=$(echo "$sgpa1 * 23" | bc)
	i4=$(echo "$sgpa2 * 24" | bc)
	i5=$(echo "$i3 + $i4" | bc)
	cgpa=$(echo "scale=1;($i5)/47" | bc)
	echo "$cgpa" >> p3.txt
done < "$filename"

paste final.txt p3.txt > r3.txt
paste S.txt r3.txt > r4.txt

# Final Output
truncate -s 0 final1.txt
awk '{ print $6" "$7" "$8" "$9}' c4b.txt > tc.txt
grep 'MDL16CS*' tc.txt > tc1.txt
column -t tc1.txt > tc2.txt
join -j 1 <(sort r4.txt) <(sort tc2.txt) > r5.txt
sed -i -e '1iRegNumber SGPA1 SGPA2 CGPA NAME\' r5.txt
cat r5.txt | column -t

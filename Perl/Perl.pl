#!/usr/bin/perl
# Single line comment
=for
print "Hello world\n"; Multi Line Comment
=cut

# printing in perl
print "Hello World\n";
#variable decleration in per

#declaring scalar variable
$p = 25;
$c = 25;             # An integer 
$n = "Jish";   # A string 
$sal = 1445.50;     # A floating point

print "P=$p\n";
print "n=$n\n";
print "sal=$sal\n";

#declaring Array variable
@name = ("Jish","Nair");
@no =(1,2);

print "name=$name[0],$name[1]\n";
print "no=$no[0],$no[1]\n";
print "Full array:@no\n";

#Escape sequences in perl
print "Escape characters \" \' \$ \\ \n";

#declaring Hashes
%phone = ("Jish",12,"Nair",13);
print("phone of Jish=$phone{'Jish'}\n");

#arithmethic operation

$a=$p + $c;
$b=$p - $c;
$c=$p * $c;
$d=$p / $c;
print "Add=$a,Sub=$b,Mul=$c,Div=$d\n";

#Text Processing

#1) Match Operation

$vb = "This is poo and poo";
if ($vb =~ /poo/) {
   print "First time is matching\n";
} else {
   print "First time is not matching\n";
}

#2)Substitution Operation

$J = "Hello World.World is Round";
$J =~ s/World/Moon/;

print "$J\n";

# 3) Translation

$J = "Hello World.World is Round";
$J =~ tr/o/a/;

print "$J\n";

# Concatenation

$str = "Jish"."nair";
print "Concatenated strings of Jish, nair : $str\n";

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";

use strict;
use warnings;

##READING THE INPUT
my $input_filename = 'all_input.txt';
open(my $fh, $input_filename)
  or die "Could not open file '$input_filename' $!";
  my $row;
while ($row = <$fh>) {
  chomp $row;
  my $a_test = $row;

##REMOVING ALL SPACES IN THE EXPRESSION
my @a_array = split(' ',$a_test);
my $a_without_spaces = join("",@a_array);
#print "Given Expression : $a_without_spaces";
my @a_array_with_each_element = split('',$a_without_spaces);


my $array_count = 0;
my $array_size = @a_array_with_each_element;


##ADDING $ BEFORE ANY ALPHABET IN THE EXPRESSION
 for (my $iter = 0;$iter <$array_size; $iter = $iter+1){
	 if($a_array_with_each_element[$iter] =~ /[a-zA-Z]/){
	 splice @a_array_with_each_element, $iter, 0 , '$';
	 $iter = $iter + 1;
	 $array_size = $array_size+1; 
	 }
 $array_count = $array_count +1 ;	
 }
 
##CONVERTING THE EXPRESSION INTO A STRING 
 my $a_exp = join('',@a_array_with_each_element); 
  
  
##EVALUATIING THE EXPRESSION  
 my $a_exp_eval = eval($a_exp);
}

close $fh;

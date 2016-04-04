let n = read_int () in
if (n mod 2) = 0 then
    begin
        print_string "the number ";
        print_int n;
        print_endline " is even"
   end
else
 begin
        print_string "the number ";
        print_int n;
        print_endline " is odd"
   end
;;

let whatever = 
    if ( read_int () ) mod 2 = 0
    then "The second number is even"
    else "The second number is odd" in
print_endline whatever
;;

if true
then print_endline "No else !"
;;

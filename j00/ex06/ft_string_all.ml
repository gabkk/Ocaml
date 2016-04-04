let is_digit c= c >= '0' && c <= '9';;

let ft_string_all funct str =
    let len = String.length str in
    let rec loop pos =
    if pos < len then
       let c = String.get str pos in
       	if funct c then
    	loop (pos + 1)
	else
	false
    in
    loop 0;
    true

let main () =
   ft_string_all is_digit "0123456789"

let () = main ()

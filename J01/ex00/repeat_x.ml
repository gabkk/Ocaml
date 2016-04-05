
let repeat_x nbr =
    let rec loop nbr acc =
	let value = "" in
	if nbr <= -1 then "error"
    	else if nbr == 0 then " "
	else
	loop (nbr - 1) (acc + 1)
    in loop nbr 1

let main () =
    print_endline (repeat_x 6);
    print_endline (repeat_x 0);
    print_endline (repeat_x (-1))

let () = main ()

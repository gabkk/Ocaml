(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/04 18:53:03 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/05 13:12:59 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
    let first = 0 in
    let rec loop firstpos =
    if firstpos <= 7 then
    	    let second = firstpos + 1 in
	    let rec loop2 secondpos =
	    if secondpos <= 8 then
		let third = secondpos + 1 in
		let rec loop3 thirdpos =
		if thirdpos <= 9 then
	    	    begin
	    	    print_int firstpos;
	    	    print_int secondpos;
	    	    print_int thirdpos;
       	    	    if firstpos < 7 then
		    print_string " ,";
	    	    loop3 (thirdpos + 1)	
		    end
		in
		loop3 third;
		loop2 (secondpos + 1)
	    in
	    loop2 second;
       	    loop (firstpos + 1)
    in
    loop first;
    print_char '\n'

let main () =
    ft_print_comb ()

let () = main ()

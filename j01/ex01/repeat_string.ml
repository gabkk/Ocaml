(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/06 11:45:39 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 12:11:16 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec repeat_string ?(str="x") nbr =
    if nbr < 0 then "Error"
    else if nbr = 0 then ""
    else str ^ repeat_string ~str (nbr - 1)

let main () =
    print_endline (repeat_string (-1));
    print_endline (repeat_string 0);
    print_endline (repeat_string ~str:"Toto" 1);
    print_endline (repeat_string 2);
    print_endline (repeat_string ~str:"a" 5);
    print_endline (repeat_string ~str:"what" 3)

let () = main ()

(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/05 16:43:06 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 12:06:54 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec repeat_x nbr =
    if nbr < 0 then "Error"
    else if nbr = 0 then ""
    else "x" ^ repeat_x (nbr - 1)

let main () =
    print_endline (repeat_x 3);
    print_endline (repeat_x (-1));
    print_endline (repeat_x 2);
    print_endline (repeat_x 5)

let () = main ()

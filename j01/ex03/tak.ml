(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   tak.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/06 12:13:51 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 12:44:56 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec tak x y z =
    if y < x then
    tak (tak (x - 1) y z) (tak(y - 1) z x) (tak(z - 1) x y)
    else z


let main () =
    print_int (tak 1 2 3);
    print_char '\n';
    print_int (tak 5 23 7);
    print_char '\n';
    print_int (tak 9 1 0);
    print_char '\n';
    print_int (tak 1 1 1);
    print_char '\n';
    print_int (tak 0 42 0);
    print_char '\n';
    print_int (tak 23498 98734 98776);
    print_char '\n'

let () = main ()

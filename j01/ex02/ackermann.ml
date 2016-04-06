(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/06 10:43:50 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 11:45:12 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ackermann m n =
    if m = 0 then n + 1
    else if n < 0 || m < 0 then -1
    else if m > 0 && n = 0 then ackermann (m - 1) 1
    else if m > 0 && n > 0 then ackermann (m - 1) (ackermann m (n - 1))
    else 0

let main () =
    print_int (ackermann (-1) 7);
    print_char '\n';
    print_int (ackermann 0 0);
    print_char '\n';
    print_int (ackermann 2 3);
    print_char '\n';
    print_int (ackermann 4 1);
    print_char '\n'

let () = main ()

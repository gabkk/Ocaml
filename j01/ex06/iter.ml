(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/06 13:42:53 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 19:28:55 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let iter f x n =
    if n = 0 then x
    else
    let rec iter_aux f x pos acc =
        if pos = 1 then f acc
        else if pos > 1 then iter_aux f x (pos - 1) (f acc)
        else -1
    in iter_aux f x n x

let main () =
    print_int (iter (fun x -> x * 0) 2 4);
    print_char '\n';
    print_int (iter (fun x -> x * 1) 2 4);
    print_char '\n';
    print_int (iter (fun x -> x * x) 2 4);
    print_char '\n';
    print_int (iter (fun x -> x * 2) 2 4);
    print_char '\n'

let () = main ()

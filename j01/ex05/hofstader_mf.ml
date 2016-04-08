(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstader_mf.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/06 13:35:06 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 13:41:41 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec hfs_f n =
    if n = 0 then 1
    else if n > 0 then n - hfs_m (hfs_f (n - 1))
    else 0

and hfs_m n =
    if n = 0 then 0
    else if n > 0 then n - hfs_f(hfs_m (n - 1))
    else 0

let main () =
    print_int (hfs_m 0);
    print_char '\n';
    print_int (hfs_f 0);
    print_char '\n';
    print_int (hfs_m 4);
    print_char '\n';
    print_int (hfs_f 4);
    print_char '\n'

let () = main ()

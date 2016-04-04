(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/04 18:53:03 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/04 20:02:37 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
    let first = 0 in
    let rec loop1 first =
       if first <= 9 then
          if (first + 1) <= 9 then
             let second = (first + 1) in
                 let rec loop2 second =
                 if (second + 1) <= 9 then
                 let third = (second + 1) in
                 print_int first;
                 print_int second;
                 print_int third;
                 print_string " ,";
                 in
                 loop2 (second + 1);
                 loop1 (first + 1)
    in
    loop1 first;
    print_char '\n'

let main () =
    ft_print_comb ()

let () = main ()

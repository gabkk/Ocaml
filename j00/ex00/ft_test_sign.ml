(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/04 10:33:32 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/04 18:13:53 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign arg =
    if (arg < 0) then
        print_endline "negatif"
    else
        print_endline "positif"

let main () =
    ft_test_sign 42;
    ft_test_sign 0;
    ft_test_sign (-42)
 
let () = main ()

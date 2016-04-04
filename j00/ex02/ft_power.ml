(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/04 15:39:17 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/04 18:09:20 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_power x y =
    if y = 0
    then 1
    else
        if y > 1
        then
        x * (ft_power x (y - 1))
        else
        x

let main () =
    print_int (ft_power 2 4);
    print_char '\n';
    print_int (ft_power 3 0);
    print_char '\n';
    print_int (ft_power 0 5);
    print_char '\n'

let () = main ()

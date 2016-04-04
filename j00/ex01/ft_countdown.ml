(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/04 15:18:16 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/04 16:35:13 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_countdown n =
    if n > 0
    then
    begin
        print_int n;
        print_char '\n'; 
        ft_countdown (n -1)
    end
    else
    begin
        print_int 0;
        print_char '\n'
    end
let main () =
    ft_countdown 3;
    ft_countdown 0;
    ft_countdown (-1)

let () = main ()

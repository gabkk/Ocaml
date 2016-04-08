(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/05 13:33:19 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/05 21:09:46 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_rot_n i str =
    let func c =
        if ((c > '@' && c < '[') || (c > '`' && c < '{')) then

           begin
                     let tmp = (int_of_char c + i) in
                     if ((tmp < 65) || (tmp > 90 && tmp < 97) || tmp > 122) then
                         if (c > '@' && c < '[') then
                         let value = (((int_of_char c - 65) mod 26) + (65 - i)) in
                            if (value + 1 = 90 ) then
                                char_of_int (65)
                            else
                                char_of_int (value)
                         else
                         let value = (((int_of_char c - 97) mod 26) + (97 - i)) in 
                            if (value + 1 = 122 ) then
                                char_of_int (97)
                            else
                                char_of_int (value)
                     else
                     char_of_int (int_of_char c + i)
           end
        else
        char_of_int (int_of_char c) 
    in
    let newstr = String.map func str in
    print_endline newstr

let main () =
    ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz";
    ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz";
    ft_rot_n 42 "0123456789";
    ft_rot_n 2 "OI2EAS67B9";
    ft_rot_n 0 "Damned !";
    ft_rot_n 42 "";
    ft_rot_n 1 "NBzlk qnbjr !";
    ft_rot_n 1 "AAaaZZzz !"

let () = main ()

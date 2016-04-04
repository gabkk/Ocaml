(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/04 18:41:06 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/04 18:52:02 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_alphabet () =
    let char_a = int_of_char 'a' in
    let char_z = int_of_char 'z' in
    let rec loop position =    
        if position <= char_z then
            let res = char_of_int position in
            print_char res;
            loop (position + 1)
    in
    loop char_a;
    print_char '\n'

let main () =
    ft_alphabet ()

let () = main ()

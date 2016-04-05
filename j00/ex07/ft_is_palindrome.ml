(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/05 13:11:43 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/05 13:32:24 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome str =
let rec loop pos =
    if pos >= 0 then
        let d = (String.get str (String.length str - (pos + 1))) in
        let c = (String.get str pos) in
        if (c = d) then
            loop (pos - 1)
        else
            false
        else
            true
        in
        loop (String.length str - 1)

let main () =
    print_string (string_of_bool (ft_is_palindrome "radar"));
    print_char '\n';
    print_string (string_of_bool (ft_is_palindrome "radare"));
    print_char '\n';
    print_string (string_of_bool (ft_is_palindrome "madam"));
    print_char '\n';
    print_string (string_of_bool (ft_is_palindrome "car"));
    print_char '\n';
    print_string (string_of_bool (ft_is_palindrome ""));
    print_char '\n'

let () = main ()

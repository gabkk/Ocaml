(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/05 10:25:36 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/05 13:14:57 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_digit c = c >= '0' && c <= '9';;

let ft_string_all funct str =
    let rec loop pos =
       if pos >= 0 then
       let c = (String.get str pos) in
            if (funct c) then
                loop (pos - 1)
            else
              false
       else
           true
    in
    loop ((String.length str)-1)


let main () =
    print_string (string_of_bool (ft_string_all is_digit "0123456789"));
    print_char '\n';
    print_string (string_of_bool (ft_string_all is_digit "012A456789"));
    print_char '\n';
    print_string (string_of_bool (ft_string_all is_digit "012345678Q"));
    print_char '\n';
    print_string (string_of_bool (ft_string_all is_digit "Q12A456789"));
    print_char '\n'

let () = main ()

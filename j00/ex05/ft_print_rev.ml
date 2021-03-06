(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/05 10:25:31 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/05 11:18:16 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev str =
   let size = String.length str in
   let rec loop pos =
	if pos >= 0 then
   	let c = String.get str pos in
   	print_char c;
   	loop (pos - 1)
   in
   loop (size - 1);
   print_char '\n'

let main () =
    ft_print_rev "Hello world !";
    ft_print_rev ""

let () = main ()

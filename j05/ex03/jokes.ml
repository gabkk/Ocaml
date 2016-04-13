(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/11 19:28:49 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/12 14:40:46 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main argv =
    let ic = open_in (Array.get argv 1) in
    let i = ref(0) in
    let tab = ref (Array.make 0 "") in 
	try
  	while true do
  	  let s = input_line ic in
      let newtab = Array.make 1 s in
        incr i;
        tab := (Array.append !tab newtab)
	done
    with End_of_file -> close_in ic;
    Random.self_init ();
    if !i > 0 then print_endline (!tab.(Random.int !i))

let () = 
	let argv = Sys.argv in
	if (Array.length argv) != 2 then exit (-1)
	else main argv

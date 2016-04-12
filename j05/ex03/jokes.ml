(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/11 19:28:49 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/11 19:37:02 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main argv =
	let ic = open_in (Array.get argv 1) in
(*	let tab = Array.make 1 "" in *)
	try
  	while true do
  	  let s = input_line ic in
		print_endline s
(*		print_endline tab.(0)
		tab = Array.append tab s; *)
	done
	with End_of_file ->
  	close_in ic
	

let () = 
	let argv = Sys.argv in
	if (Array.length argv) != 2 then exit (-1)
	else main argv
       
	(*let cmpt = ref (0) in 
	#for i = 0 do 
	
	#done
	let s = input_line ic in
	*)

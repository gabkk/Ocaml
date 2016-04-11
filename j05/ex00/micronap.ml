(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/11 10:27:49 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/11 13:56:36 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)



(*  camlc -custom inix.cma micronap.ml -cclib -lunix *)

let my_sleep () = Unix.sleep 1

let main argv = 
    let rsl = 
    try (int_of_string (Array.get Sys.argv  1)) with 
    | Failure err -> exit (-1)
    | _ -> int_of_string (Array.get argv 1)
    in
    for i = 1 to rsl do
        my_sleep ()
    done

let () =
    let argv = Sys.argv in
    if (Array.length argv) != 2 then exit (-1)
    else main argv
    

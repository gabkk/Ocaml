(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sum.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/12 15:00:04 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/12 15:17:24 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sum value1 value2 =
    value1 +. value2
 

let () =
    let argv = Sys.argv in 
    if (Array.length argv) != 3 then exit(-1)
    else
    begin
    let value1 = try (float_of_string(Array.get Sys.argv 1)) with
    | Failure err -> print_endline ("Error : " ^ err); exit (-1)
    | _ -> float_of_string (Array.get argv 1)
    in
     let value2 = try (float_of_string(Array.get Sys.argv 2)) with
     | Failure err -> print_endline ("Error : " ^ err); exit (-1)
    | _ -> float_of_string (Array.get argv 1)
     in
    print_float (sum value1 value2)
    end

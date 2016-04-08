(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/08 13:27:27 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/08 18:20:10 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let a = Color.all in
    let rec print_color a =
        match a with
        | tete::tail    ->
                begin
                    print_endline ((Color.toString tete)
                    ^ "->" ^ (Color.toStringVerbose tete));
                    print_color tail
                end
        | _             -> ()
    in
    print_color a

let () = main ()

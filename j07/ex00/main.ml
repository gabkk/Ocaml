(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/13 10:56:45 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/13 12:09:42 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let foo = new People.people "Joe" in
    print_endline foo#talk;
    print_endline foo#to_string;
    print_endline foo#die

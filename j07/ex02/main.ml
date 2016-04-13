(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/13 13:13:54 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/13 19:34:04 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    Random.self_init ();
    let wroom = new People.people "JOe" in
    let mechant = new Dalek.dalek in
    print_endline mechant#to_string;
    print_endline mechant#talk;
    (mechant#exterminate wroom)


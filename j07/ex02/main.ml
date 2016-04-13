(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/13 13:13:54 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/13 18:38:36 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    Random.self_init ();
    let wrooom = new People.people "Wroom" in
    let joe = new Doctor.doctor "Joe" 40 wrooom in
    let mechant = new Dalek.dalek in
    print_endline wrooom#talk;
    print_endline wrooom#to_string;
    print_endline joe#talk;
    print_endline joe#to_string;
    print_endline mechant#talk;
    print_endline mechant#to_string;
    print_endline joe#use_sonic_screwdriver;
    print_endline (joe#travel_in_time 1950 1960)#to_string;
    print_endline ("Wroom die : " ^ wrooom#die);
    print_endline ("Dr who die " ^ joe#die)

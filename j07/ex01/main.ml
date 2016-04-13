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
    let wrooom = new People.people "Wroom" in
    let boulet = new Doctor.doctor "Joe" 40 wrooom in
    print_endline boulet#talk;
    print_endline boulet#to_string;
    print_endline boulet#use_sonic_screwdriver;
    print_endline (boulet#travel_in_time 1950 1960)#to_string;
    print_endline boulet#to_string


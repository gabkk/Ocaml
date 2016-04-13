(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/13 10:51:08 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/13 15:33:15 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people name =
    object
        val _name:string = name
        val _hp:int = 100

        initializer print_endline "Creation of an instance of people"
        method to_string = _name ^ " : " ^ (string_of_int _hp) ^ " health points"
        method talk = "I'm " ^ _name ^ "! Do you know the Doctor ?"
        method die = "Aaaarghh!"
    end

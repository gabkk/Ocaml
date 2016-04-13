(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   dalek.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/13 16:03:13 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/13 19:34:44 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class dalek =
    object
        val _name:string = "dalek" ^
        (String.make 1("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".[Random.int(String.length
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")])) ^      (String.make 1("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".[Random.int(String.length
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")])) 
       ^ (String.make 1("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".[Random.int(String.length
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")]))  
       
        val _hp:int = 100
        val mutable _shield:bool = true

        method to_string = "name : " ^ _name  ^ " hp : " ^ (string_of_int _hp) ^ " shield : " ^
        (string_of_bool _shield)
        method talk = let rd = Random.int 3 in
            if rd = 0 then "yo1"
            else if rd = 1 then "yo2"
            else if rd = 2 then "yo3"
            else "yo4"
        method exterminate test:People.people = (test)#die
    end

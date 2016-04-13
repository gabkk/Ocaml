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
    object (self)
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
        method talk = 
	match (Random.int 3) with
	| 0 -> "Explain! Explain!"
	| 1 -> "Exterminate! Exterminate!"
	| 2 -> "I obey!"
	| _ -> "You are the Doctor! You are the enemy of the Daleks!"
          
        method exterminate test:People = {<test>}#die
    end

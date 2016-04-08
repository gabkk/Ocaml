(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Color.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/08 12:36:18 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/08 15:13:48 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

    type t = Spade | Heart | Diamond | Club

    let all = [Spade; Heart; Diamond; Club]

    let toString x = match x with
    | Spade -> "S"
    | Heart -> "H"
    | Diamond -> "D"
    | Club  -> "C"
    
    let toStringVerbose x = match x with
    | Spade -> "Spade"
    | Heart -> "Heart"
    | Diamond -> "Diamond"
    | Club -> "Club"
 

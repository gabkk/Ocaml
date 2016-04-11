(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/09 12:20:32 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/09 17:02:54 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    print_endline "Best in All Cards : ";
    print_endline (Card.toStringVerbose (Card.best Card.all));
    let c1 = Card.newCard Card.Value.Queen Card.Color.Spade in
    let c2 = Card.newCard Card.Value.T10 Card.Color.Club in
    print_endline "max card between Queen Spade and T10 Club";
    print_endline (Card.toString (Card.max c1 c2));
    print_endline "min card between Queen Spade and T10 Club";
    print_endline (Card.toString (Card.min c1
    c2));
    let c3 = Card.newCard Card.Value.As
    Card.Color.Heart in
    let c4 = Card.newCard Card.Value.As
    Card.Color.Diamond in
    print_endline "compare As Heart and As Diamon if that return 0 then it's equal";
    print_int (Card.compare c3
    c4);
    print_newline ();
    print_endline "isOf ({As Heart}) Diamond";
print_endline (string_of_bool (Card.isOf c3 Card.Color.Diamond));
print_endline "isOf ({As Heart}) Heart";
print_endline (string_of_bool (Card.isOf c3 Card.Color.Heart));
print_endline "isHeart ({As Heart})";
print_endline (string_of_bool (Card.isHeart c3));
print_endline "isClub ({As Heart})";
print_endline (string_of_bool (Card.isClub c3));
let c5 = Card.newCard Card.Value.T2
Card.Color.Club in
print_endline "getValue ({T2 Club})";
print_endline
(Card.Value.toStringVerbose
(Card.getValue c5));
print_endline "getColor ({T2 Club})";
print_endline
(Card.Color.toStringVerbose
(Card.getColor c5))


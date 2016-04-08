(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/08 18:20:54 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/08 20:12:58 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let a = Value.all in

    let rec print_color a =
        match a with
        | head::tail    ->
                begin
                    print_endline
                    (
                    "toString : "
                    ^
                    (Value.toString head)
                    ^
                    "| toStringVerbose : "
                    ^
                    (Value.toStringVerbose head)
                    ^
                    "| toInt : "
                    ^
                    begin
                    (string_of_int (Value.toInt head))
                    end
                    ^
                    "| next : "
                    ^
                    begin
                     if (Value.toString head) <> "A" then (Value.toString (Value.next head))
                     else " "
                    end
                    ^
                    "| prev : "
                    ^
                    begin
                    if (Value.toString head) <> "2" then (Value.toString
                    (Value.previous head))
                    else " "
                    end);
                    print_color tail
                end
        | _             -> ()
    in
    print_color a

    let () = main ()


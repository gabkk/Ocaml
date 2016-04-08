(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/06 13:25:40 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/06 15:45:46 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let fibonacci n =
    let rec fibonacci_aux ?(a = 0) ?(b = 1) n =
    if n = 0 then a
    else if n = 1 then b
    else if n > 1 then fibonacci_aux ~a:b ~b:(a + b) (n - 1)
    else -1
    in fibonacci_aux n

let main () =
    print_int (fibonacci (-42));
    print_char '\n';
    print_int (fibonacci 1);
    print_char '\n';
    print_int (fibonacci 3);
    print_char '\n';
    print_int (fibonacci 6);
    print_char '\n';
    print_int (fibonacci 21);
    print_char '\n'

let () = main ()

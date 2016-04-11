(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/11 18:19:18 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/11 19:24:40 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let main () =
    let tab = Array.make 5 "" in
    tab.(0) <- "What kind of lettuce did they serve on the Titanic? Iceberg";
    tab.(1) <- "Who can shave 25 times a day and still have a beard? A barber";
    tab.(2) <- "What did King Kong say when he saw the Statue of Liberty? Are you my mother?";
    tab.(3) <- "How do spies send secret messages in a forest? By moss code.";
    tab.(4) <- "Did you hear about the restaurant on the moon? It has great
    food, but no atmosphere";
    print_endline (tab.(Random.int 5))

let () = main ()

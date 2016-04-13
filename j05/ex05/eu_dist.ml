(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/12 16:56:34 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/12 19:07:19 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*    racine  ( (a1-b1)^2 + (a2 - b2)^2 + ... + (an - bn) ^2 ) *)

let eu_dist value1 value2 =
    let rst = ref(0.0) in
    for x = 0 to ((Array.length value1) - 1) do
        rst :=  !rst +. (value1.(x) -. value2.(x)) *. (value1.(x) -.value2.(x))
    done;
    sqrt(!rst)

let () =
    let value1 = [|1.;2.;42.|] in 
    let value2 = [|3.;4.;42.|] in 
    print_float (eu_dist value1 value2)


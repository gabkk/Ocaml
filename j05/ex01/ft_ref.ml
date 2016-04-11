(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/11 14:06:25 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/11 18:51:06 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = {mutable contents: 'a}

let return x = {contents = x}

let get {contents = x} = x

let set x a = x.contents <- a

let bind x f = return (get(f(get x)))

let main () =
    let x = return 4 in
    print_int (get x);
    set x 10;
    print_char '\n';
    print_int (get  x);
    print_char '\n';
    print_int (get (bind x (fun x -> return (x / 2))))

let () = main ()

(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/13 10:33:11 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/13 18:36:18 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor name age blaze =
    object (self)
        val _name:string = name
        val _sidekick:People.people = blaze
        val _age = age
        val mutable _hp = 100

        initializer print_endline "Creation of an instance of doctor"
        method to_string = _name ^ " : " ^ (string_of_int _age) ^ " years old " ^
        "hp : " ^ (string_of_int _hp) ^ "\n" ^ _sidekick#to_string 
        method talk = "Hi! I'm the Doctor!"
        method travel_in_time start arrival = print_endline "
                    `..-:..`                      
                    :  -/  `.                     
    `....:--.:.----....  ..` `...--.---....`      
     -   /.--:.-.-./-            -/:-:/`  -       
     `                                    `       
     -                                    -       
     ``..................................``       
       -               `.               -         
       `  `..........   `  ...-.-.-..`  `         
       -   -`+-+:/:`.  `.   --o.o.o -   -         
       `   ` ` ```` `   `   ` ` ` ` `   `         
       -   -`+-+:/:`.  `.   --o.o.o -   -         
       `   ` ` ` `  `   `   ` ` ` ` `   `         
       -               `.               -         
       `  `..........   `  ..........`  `         
       -   .`.`  .``.  `.   . -   - -   -         
       `   ` `   ````   `   ` `   ` `   `         
       -   .`.`  .``.  `.   . -   - -   -         
       `   ` ``..````   `   ` ``.`` `   `         
       .               `.-:             -         
       `  `..........   ```..........`  .         
       .   .`.`  ````  `.   . .   . .   .         
       .   ` `   ````   `   ` .   . .   .         
       .   .`.`  ````  `.   . .   . .   .         
       .   . ``..````  ``   . .`.`. .   .         
       .               `.               .         
       .  `..........  ``  ..........`  .         
       .   . .`  ````  `.   . .   . .   .         
       .   . .`  ````  `.   . .   . .   .         
       .   . ``  ````  ``   . .   . .   .         
       .   . .`..````  `.   . .`.`. .   .         
       .               ``               .         
       .               `.               .         
       -`-`-`-`..........`-`-`-`-`-`-`-`-         
       ` ` ` `      ` ` ` ` ` ` ` ` ` ` `  
        "; {< _age = _age + (start
        -arrival)>}
        method use_sonic_screwdriver = "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"        
        method private regenerate = _hp <- 100
    end


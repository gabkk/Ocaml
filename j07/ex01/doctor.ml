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

class doctor name age people =
    object (self)
        val _name:string = name
        val _age = age
        val _sidekick:People.people = people
        val mutable _hp = 100

        initializer print_endline "Creation of an instance of doctor"
        method talk = "Hi! I'm the Doctor!"
        method to_string = _name ^ " : " ^ (string_of_int _age) ^ " years old " ^ "hp : " ^ (string_of_int _hp) ^ "\n Sidekick  " ^ _sidekick#get_name
    (*    method private kicksomeone = _name ^ " kick " ^ _sidekick#get_name ^ " die "^ _sidekick#die *)
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
        ";
	begin
	if start > arrival then	{< _age = _age - (start - arrival)>}
	else {< _age = _age + (arrival - start)>}
	
	end
        method use_sonic_screwdriver = "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"        
	method die = 
	begin
		(self)#regenerate;
		" i ll be back !!\n" ^
		(self)#to_string
	end
        method private regenerate = _hp <- 100
    end


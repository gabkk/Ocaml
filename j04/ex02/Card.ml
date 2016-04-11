(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Card.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: gkuma <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/04/08 15:14:58 by gkuma             #+#    #+#             *)
(*   Updated: 2016/04/09 17:52:48 by gkuma            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Color =
struct

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

end


module Value =
    struct

        type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As

        let all = [ T2; T3; T4; T5; T6; T7; T8; T9; T10; Jack; Queen; King; As ]

        let toInt x = match x with
        | T2 -> 1
        | T3 -> 2
        | T4 -> 3
        | T5 -> 4
        | T6 -> 5
        | T7 -> 6
        | T8 -> 7
        | T9 -> 8
        | T10 -> 9
        | Jack -> 10
        | Queen -> 11
        | King -> 12
        | As -> 13

        let toString x = match x with
        | T2 -> "2"
        | T3 -> "3"
        | T4 -> "4"
        | T5 -> "5"
        | T6 -> "6"
        | T7 -> "7"
        | T8 -> "8"
        | T9 -> "9"
        | T10 -> "10"
        | Jack -> "J"
        | Queen -> "Q"
        | King -> "K"
        | As -> "A"

        let toStringVerbose x = match x with
        | T2 -> "2"
        | T3 -> "3"
        | T4 -> "4"
        | T5 -> "5"
        | T6 -> "6"
        | T7 -> "7"
        | T8 -> "8"
        | T9 -> "9"
        | T10 -> "10"
        | Jack -> "Jack"
        | Queen -> "Queen"
        | King -> "King"
        | As -> "As"

        let next x = match x with
        | T2 -> T3
        | T3 -> T4
        | T4 -> T5
        | T5 -> T6
        | T6 -> T7
        | T7 -> T8
        | T8 -> T9
        | T9 -> T10
        | T10 -> Jack
        | Jack -> Queen
        | Queen -> King
        | King -> As
        | As -> invalid_arg "invalid arg"

        let previous x = match x with
        | T2 -> invalid_arg "invalid arg"
        | T3 -> T2
        | T4 -> T3
        | T5 -> T4
        | T6 -> T5
        | T7 -> T6
        | T8 -> T7
        | T9 -> T8
        | T10 -> T9
        | Jack -> T10
        | Queen -> Jack
        | King -> Queen
        | As -> King
end

        type t = (Value.t * Color.t)

        let newCard value color = (value, color)

            let  allSpaces = [ (Value.T2, Color.Spade); (Value.T3, Color.Spade);
            (Value.T4, Color.Spade); (Value.T5,  Color.Spade); (Value.T6,
            Color.Spade); (Value.T7,  Color.Spade); (Value.T8,
             Color.Spade); (Value.T9,  Color.Spade); (Value.T10,  Color.Spade); (Value.Jack,  Color.Spade); (Value.Queen,  Color.Spade);
            (Value.King,  Color.Spade); (Value.As,  Color.Spade)]

            let  allHearts = [(Value.T2,  Color.Heart); (Value.T3,
            Color.Heart); (Value.T4,  Color.Heart); (Value.T5,  Color.Heart); (Value.T6,  Color.Heart); (Value.T7,  Color.Heart); (Value.T8,
             Color.Heart); (Value.T9,  Color.Heart); (Value.T10,  Color.Heart); (Value.Jack,  Color.Heart); (Value.Queen,
             Color.Heart); (Value.King,  Color.Heart); (Value.As,  Color.Heart);]
            
            let  allDiamonds = [ (Value.T2,  Color.Diamond) ; (Value.T3,  Color.Diamond); (Value.T4,  Color.Diamond); (Value.T5,  Color.Diamond); (Value.T6,  Color.Diamond); (Value.T7,
             Color.Diamond); (Value.T8,  Color.Diamond); (Value.T9,  Color.Diamond);
             (Value.T10,  Color.Diamond); (Value.Jack,  Color.Diamond); (Value.Queen,
             Color.Diamond); (Value.King,  Color.Diamond); (Value.As,
             Color.Diamond);]
 
            let  allClubs = [ (Value.T2,  Color.Club) ; (Value.T3,  Color.Club); (Value.T4,
            Color.Club); (Value.T5,
            Color.Club); (Value.T6, Color.Club); (Value.T7,Color.Club); (Value.T8,
            Color.Club); (Value.T9,  Color.Club); (Value.T10,  Color.Club); (Value.Jack,
            Color.Club); (Value.Queen, Color.Club); (Value.King, Color.Club); (Value.As, Color.Club);]

            let all = allSpaces @ allHearts @ allDiamonds @ allClubs
        
            let getValue (value, color) = value
            
            let getColor (value, color) = color

            let toString t = ((Value.toString (getValue t)) ^ Color.toString (getColor t))
            
            let toStringVerbose t = ("Card (" ^ (Value.toStringVerbose (getValue
            t)) ^
            "," ^ (Color.toStringVerbose (getColor t) ^ ")"))

            let compare t1 t2 = 
            if ((getValue t1) < (getValue t2)) then -1
            else if (getValue t1) == (getValue t2 ) then 0
            else Value.toInt (getValue t1)
            
            let max t1 t2 =
                if ((getValue t1) < (getValue t2)) then t2
                else if ((getValue t1) == (getValue t2)) then t1
                else t1
 
            let min t1 t2 =
                if ((getValue t1) > (getValue t2)) then t2
                else if ((getValue t1) == (getValue t2)) then t1
                else t1

            let rec bestaux max liste = match liste with
            | [] -> max
            | head::second::tail -> if ((getValue head) > (getValue second))
            then bestaux head ([second] @ tail)
            else bestaux max ([second] @ tail)
            | _ -> max

            let best liste = match liste with
            | [] -> invalid_arg "invalid arg"
            | head::tail -> bestaux head liste

            
            let isOf t coll = if ((getColor t) = coll) then true else false
            
            let isSpade t = if (Value.toString (getValue t) = "Spade") then true else false
            
            let isHeart t = if (Value.toString (getValue t) = "Heart") then true else false
            
            let isDiamond t = if (Value.toString (getValue t) = "Diamond") then true else false
            
            let isClub t = if (Value.toString (getValue t) = "Club") then true else false
            


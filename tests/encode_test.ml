let print_tuple x = 
    print_int (fst x);
    print_string (snd x)

let print_tupli x = 
    print_int (fst x);
    print_int (snd x)

let rec encode ?(prev = 1) ?(acc = []) liste = match liste with
    | [] -> acc
    | head::[] -> acc @ [(prev, head)]
    | head::second::tail -> if head = second 
    then encode  ~prev:(prev + 1) ~acc:acc ([second] @ tail) 
    else encode  ~prev:(1) ~acc:(acc @ [(prev, head)]) ([second] @ tail) 

let main () =
    List.iter print_tuple (encode []);
    print_char '\n';
    List.iter print_tuple (encode ["a"; "b"]);
    print_char '\n';
    List.iter print_tuple (encode ["a"; "a"; "a"; "b"]);
    print_char '\n';
    List.iter print_tupli (encode [1; 2; 2; 2])
    

let () = main ()

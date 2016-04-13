#nom de l executable
NAME = test

#sourece du programme dans l ordre
SOURCES = test.ml


#les compilateurs

CAMLC = ocamlc
CAMLOPT = ocamlopt
CAMLDEP = ocamldep


#les lib  ajouter les $(WITHLIBNAME) et definir la regle WITHLIBNAME
# cclib permet de linker la lib .a le .cma correspondant
# WITHLIBNAME = LIBNAME.cma -lLIBNAME

LIBS = $(WITHGRAPHICS)
WITHGRAPHICS = graphics.cma -cclib -lGraphics


####RULES####

# regle all qui genere les dependance et lance la regle NAME

all: depend $(NAME)


#regle pour creer le link verrs l'executable du momnet
$(NAME): opt byt
	ln -s $(name).byt $(NAME)

# regle special pour generer la version optimise et la version bytecode

opt: $(NAME).opt
byt: $(NAME).byt

#les duex liste d'objets en fonction du type de compilation 
OBJS = $(SOURCES:.ml=.cmo)
OPTOBJS = $(SOURCE:.ml=.cmx)

#####################LINK######

#la regle NAME basique de linking
$(NAME).byt: $(OBJS)
	$(CAMLC) -o $(NAME).byt $(LIBS) $(OBJS)


#la regle NAME optimisee de linking
$(NAME).opt: $(OPTOBJS)
	$(CAMLOPT) -o $(NAME).opt $(LIBS:.cma=.cmxa) $(OPTOBJS)

############ COMPILATION ###
# suppression des suffixes par defaut et definition de notre liste de suffices
.SUFFIXES:
.SUFFIXES: .ml .mli .cmo .cmi .cmx

# la regle specifiques de compilation des fichiers sources en objet
.ml.cmo:
	$(CAMLC) -c $<

.mli.cmi:
	$(CAMLC) -c $<

.ml.cmx:
	$(CAMLOPT) -c $<

##NETTOYAGE
# regle clean supprimant les fichiers objets et cmi crees
clean:
	rm -f *.cm[iox] *~ .*~ #*#
	rm -f $(NAME).o

# regle fclean appelant clean et suppr exec
fclean: clean
	rm -f $(NAME)
	rm -f $(NAME).opt
	rm -f $(NAME).byt
	
# regle particuliere de creation des dependances ap aartir des sources 

depend: .depend
	$(CAMLDEP) $(SOURCES) > .depend

# regle re qui appelle fclean 

re: fclean all

include .depend
####END


##Tableaux1

v1<- rexp(100)
v1

#transformer le vecteur en un tableau

tab1 <- matrix (v1,25,4)
tab1

##ou
tab2 = data.frame(v1,c(25,4))
tab2
as.data.frame(v1)#convertir les données en data frame 

#selectionner la valeur de 13eme lignes et 3eme colonne
tab1[13,3]

#selectinner les valeurs de toute la 4eme colonne
tab1[,4]

#creer un tableau dynamique
tcd <- xtabs(~tab1[,4]+tab1[,1]+tab1[,2]+tab1[,3])
tcd

#la dimension du tableau tcd
length(tcd)

#############################
dim(tcd)
nrow(tcd)
ncol(tcd)
############################

#somme de tout le tableau
y <- sum(tcd)
y

apply(tcd,2,sum)## la somme de chaque colonne

## la somme de sur les lignes de tcd
apply(tcd,1,sum)

## la somme sur les colonnes de tcd
apply(tcd,2,sum)

## La moyenne sur les colonnes
apply(tcd,2,mean)

#" la moyenne sur les lignes
apply(tcd,1,mean)

##la valur max sur les lignes
apply(tcd,1,max)

###################
max.col(tcd)
###################

##max sur les colonnes
apply(tcd,2,max)

 ##min sur lignes et colonnes
apply(tcd,1,min)
apply(tcd,2,min)

## moyenne de les lignes et colonnes
apply(tcd,c(1,2),mean)

##sion veut faire des opérations sur les lignes et colonnes avec apply on
#fait apply(tcd,c(1,2),meanou max ou min ..)










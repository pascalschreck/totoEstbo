// fichier globals.h
#ifndef __GLOBALS_H__
#define __GLOBALS_H__
#include <stdbool.h>
#include "statement.h"

extern unsigned dim;
extern const unsigned sizemyType;
extern unsigned realSizemyType;
extern bool debug_mode;
extern bool trace;
myType traced;

extern statement STATEMENT;     // on rend l'accès à l'énoncé global
extern char * lemma_prefix;

#define dft_statement_name "dft_statement.stat"
#define dft_rankoutput_name "dft_rankoutput.txt"
#define dft_coqoutput_name "dft_coqoutput.v"
#define dft_newrules_name "dft_newrules.txt"
// prefixe des lemmes par defaut lorsque l'option de compil. 
// PREFIXED_LEMMA est définie
#define dft_lemma_prefix "def"


#define stat_flag 1
#define rank_flag 2
#define coq_flag 4
#define rule_flag 8
#define prefixl_flag 16

/* macro pour le déboggage */
#define TAB  fputc('\t', debug_file)
#define NL	 fputc('\n', debug_file)
#define DEB_PS(str) fputs((str), debug_file)

//---------------------------------------------------------*
//
//           options de COMPILATION
//
//---------------------------------------------------------*

//// format d'écrite des noms des points
// ABC pour avoir les noms de l'énoncé
// P1P2 pour avoir comme nom P<numéro>
#define ABC
// #define P1P2

//---------------------- try
// il faut décommenter la ligne suivante si on veut la version
// avec les "try clear" des hypthèses
// ce nettoyage n'est pas nécessaire lorsqu'on écrit systématiquement
// des lemmes pour chaque ensemble utilisé dont on connaît le rang
// #define MONOLITHE
//
// 
// il faut décommenter la ligne suivante si on veut la version
// avec les "try assert" lorsque l'assertion correspond à un lemme
// sinon on a des "assert"
// #define TRYASSERT
//
// 
// il faut décommenter la ligne suivante si on veut la version
// avec les "try assumption" lorsque l'assertion correspond à un lemme
// sinon on a des "assumption"
// #define TRYASSUMPTION
//
// il faut décommenter la ligne suivante si on veut la version
// avec les "try rewrite" lorsque l'assertion correspond à un lemme
// sinon on a des "rewrite"
#define TRYREWRITE
// il semble qu'ici il faille bien des TRY
//
//
// il faut décommenter la ligne suivante si on veut autoriser
// l'écriture de Lemme où le rang min <  rang max
// le lemme en question écrit bien ce résultat et ça peut être utile
// pour avoir une preuve d'une borne plutôt qu'une églité. 
//#define R_NOT_ID_ALLOWED

// A décommenter si on veut utiliser l'heuristique de couleur des noeuds 
// qui améliore un peu le temps de calcul, à commenter si on ne le veut pas
#define USE_OF_COLOR

//------------------------ prefixes et marque pour .v
#define PREFIXED_LEMMA
//-------------------fin des options de compilation


//---------------------masques et macros
// masques usuels pour traiter les ensembles

#define SetFrom(MT) ((MT) & 0x3FFFFFFFFFFFFFF)
#define SETMASQ 0x3FFFFFFFFFFFFFF

//--------------------fin masques

//
// Constante pour le marquage des noeuds
// -1 utilisé au début (à confirmer)
// 0 : le noeud n'est pas utile dans la preuve
// 1 : le noeud est utile dans la preuve mais pas encore transcrit dans la preuve Coq
// 2 : le noeud est utile, mais on attend que des noeuds dont il dépend soit transcrits
// 3 : les noeud est utile et sa preuve a déjà été tanscrite dans la preuve courante (i.e. la preuve d'un autre noeud)
// 4 : la preuve de ce noeud a déjà été fait sous la forme d'un autre lemme
// ajout du 1er juillet pour filtrer les lemmes non utiles (triviaux)
// pour revenir au fonctionnement antérieur on definit HYPOTHESIS et SINGLE à 0 (UNUSED)
// -4 : il s'agit d'une hypothèse du théorème à prouver
// -2 : il s'agit d'un singleton
#define INITMARK  -1
#define UNUSED 0
#define U_NOT_WRITTEN_IN_PROOF 1
#define U_WAITING_FOR_PREVIOUS_PROOF 2
#define U_PROOF_BEING_WRITTEN 3
#define PROOF_ALREADY_DONE 4
#define PROOF_WRITTEN_in_Lemma 5
#define HYPOTHESIS -4
#define SINGLE -2

#endif
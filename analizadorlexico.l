/*Fecha: 24/mayo/2020*/
/*Autores: García Ramírez Irma*/
/*Descripción: Analizador léxico, generado a partir de las expresiones regulares
/*de los terminales que se encontrarán en la grámatica.*/

%{
  #include <stdio.h>
  #include <stdlib.h>
  #include <string.h>
  void error(char *s);
  typedef struct _token{
    int bloque;
    char value[32];
} token;

token TOKEN;
enum bloque{ 
OR, AND, PRED, NO, TRUE, FALSE, INICIO, FIN, IF, DEFF, ENTONCES, SINO, WHILE,
HACER, SEGUN, CASO, TERMINAR, ESTRUCTURA, ESCRIBIR, LEER, DEVOLVER, 
PARIZQ, PARDER, CORD, CORI, PUNTO, COMA, PTYCM, DOSPTO, MAYORQUE, MENORQUE, MENORIGUAL, MAYORIGUAL, 
IDENTICO, DIFERENTE, MODULO, IGUAL, MAS, MENOS, MULT, DIV,
SIN, CAR, ENTERO, REAL, DREAL,
CARACTER, NUM, ID, CADENA };

%}

%option noyywrap
%x COMENTARIO

/*Expresiones Regulares*/
/*Se definen nuestras expresiones regulares que utilizara nuestra grámatica*/
id [a-zA-Z_][a-zA-Z_0-9]*
num [0-9]+
cadena \"([a-zA-Z][a-zA-Z])*\"
caracter \'([a-zA-Z])\' 

/* Reglas*/
%%

"o" {TOKEN.bloque = OR;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"y" {TOKEN.bloque = AND;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }

"pred" {TOKEN.bloque = PRED;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"no" {TOKEN.bloque = NO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"verdadero" {TOKEN.bloque = TRUE;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"falso" {TOKEN.bloque = FALSE;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"inicio" {TOKEN.bloque = INICIO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"fin" {TOKEN.bloque = FIN;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"si"  {TOKEN.bloque = IF;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"def" {TOKEN.bloque =DEFF;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"entonces" {TOKEN.bloque = ENTONCES;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"sino" {TOKEN.bloque = SINO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"mientras" {TOKEN.bloque = WHILE;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"hacer" {TOKEN.bloque = HACER;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"segun" {TOKEN.bloque = SEGUN;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"caso" {TOKEN.bloque = CASO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"terminar" {TOKEN.bloque = TERMINAR;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"estructura" {TOKEN.bloque = ESTRUCTURA;
             strcpy(TOKEN.value, yytext);
             printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
             }
"escribir" {TOKEN.bloque = ESCRIBIR;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"leer"  {TOKEN.bloque = LEER;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"devolver" {TOKEN.bloque = DEVOLVER;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"(" {TOKEN.bloque = PARIZQ;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
")" {TOKEN.bloque = PARDER;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"[" {TOKEN.bloque = CORD;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"]" {TOKEN.bloque = CORI;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"." {TOKEN.bloque = PUNTO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"," {TOKEN.bloque = COMA;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
";" {TOKEN.bloque = PTYCM;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
":" {TOKEN.bloque = DOSPTO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"<" {TOKEN.bloque = MENORQUE;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
">" {TOKEN.bloque = MAYORQUE;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"<=" {TOKEN.bloque = MENORIGUAL;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
">=" {TOKEN.bloque = MAYORIGUAL;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"=" {TOKEN.bloque = IDENTICO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"<>" {TOKEN.bloque = DIFERENTE;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"%" {TOKEN.bloque = MODULO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
":=" {TOKEN.bloque = IGUAL;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"+" {TOKEN.bloque = MAS;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"-" {TOKEN.bloque = MENOS;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"*" {TOKEN.bloque = MULT;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"/" {TOKEN.bloque = DIV;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"sin" {TOKEN.bloque = SIN;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"car" {TOKEN.bloque = CAR;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"ent" {TOKEN.bloque = ENTERO;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"real" {TOKEN.bloque = REAL;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }
"dreal" {TOKEN.bloque = DREAL;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
        }

{caracter} {
           TOKEN.bloque = CARACTER;
           strcpy(TOKEN.value, yytext);
           printf("Terminal: CARACTER\n Valor: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
           }
{num} { 
        TOKEN.bloque = NUM;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: NUM\n Valor: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
      }
{id}  {
        TOKEN.bloque = ID;
        strcpy(TOKEN.value, yytext);
        printf("Terminal: ID\n Valor: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
      }

{cadena} {
          TOKEN.bloque = CADENA;
          strcpy(TOKEN.value, yytext);
          printf("Terminal: CADENA\n Valor: %s\n Num token:%d\n\n", TOKEN.value, TOKEN.bloque);
         }  
[ \n\r\t] {}
<INITIAL>"/*" {BEGIN(COMENTARIO);}
<COMENTARIO>[^*/]  {}
<COMENTARIO>[*/]   {}    
<COMENTARIO>"*/"   {BEGIN(INITIAL);}
.     {error(yytext);}

%%

/*Si encuentra un error lexico, se imprimira en pantalla el sig. mensaje*/
void error(char *s){ 
    printf("SE ENCONTRO UN ERROR LEXICO: %s\n\n",s);
}
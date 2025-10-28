%{
    int cont = 0;
%}

digito [0-9]
letra [a-z]
digitos {digito}+
ID {letra}({letra}|{digito})*
space " "
opSum "+"
asig "="
%%
end return 0;
{ID} {printf("IDENTIFICADOR\n"); cont++;}
{space} {ECHO;}
{digitos} {printf("NUMERO\n");}
{asig} {printf("OPERADOR_ASIGNACION\n");}
{opSum} {printf("OPERADOR_SUMA\n");}
. {printf("<<error>>");}
%%
int yywrap(){return 1;}
int main(){
    yylex();
    return 0;
}
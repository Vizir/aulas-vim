# Aulas de Vim

Abra este arquivo no vim e acompanhe a aula!

# Primeira Aula

## Antes de tudo

Antes de tudo, as coisas básicas!

### Entrando e saindo do Vim

Para se abrir um arquivo, no seu shell favorito:
```
$ vim arquivo
```
Dentro do Vim, para sair: (Preste atenção nos **dois pontos** (**:**))
```
:q - Sai
:q! - Sai sem salvar, mesmo!
:w - Salva
:wq - Salva e sai
ZZ - Salva e sai (Sim!!! São duas teclas que você aperta, sem os dois pontos!!)
```
**Cuidado:** zz (minúsculo) faz outra coisa!

## Teclas de movimentação

Para movimentar o seu cursor ao longo do texto, utilize alguma das seguintes teclas:
```
h - Para ir para a esquerda, uma posição
j - Para ir para baixo, uma posição
k - Para ir para cima, uma posição
l - Para ir para a direita, uma posição
```
**ATENÇÃO:** Muito cuidado com o CAPS-LOCK!

## Modos visuais

Para ativar o modo visual existem três formas possíveis:
```
v - Modo visual "por caracteres"
V - Modo visual "por linha"
Ctrl-V - Modo visual "por coluna"
```

## ESC, a sua tecla amiga

Lembre-se! Na maioria das vezes, se algo aconteceu de estranho, aperte `ESC`.

`ESC` serve, dentre outras coisas:

- Para sair do modo de inserção
- Para sair do modo visual
- Para sair do modo de edição de textos nessa partezinha de baixo que apareceu quando você apertou os dois pontos!!

## Movimentando-se pelo texto++

`h,j,k,l` são legais, mas movimentam o cursor uma posição por vez! Onde está a produtividade nisso?

### Movimentando-se pelas palavras

Experimente:
```
w - Para ir para o começo da próxima palavra
e - Para ir para o final da próxima palavra
b - Para voltar para o começo das palavras
```

### Movimentando-se pela linha

Legal! Agora você consegue ir se movimentando pelas palavras de uma linha! Mas suponha que você tenha uma linha muito grande que alguém fez, possivelmente até de propósito, só para ficar grande mesmo e você ter que ficar perdendo tempo avançando pelas palavras só para chegar até o final desta linha realmente grande que essa pessoa, que não tem um bom coração, montou para você!

Seus problemas "se acabaram-se!":
```
0 - Vai para o começo da linha
$ - Vai para o final da linha
N| - Onde N é um número - Vai para o N-ésimo caractere da linha
```
Experimente com a linha grande acima!

### Avançando páginas

Se você não está utilizando um monitor de 42" na vertical, possivelmente este texto já tem mais de uma página!

Eis aqui algumas teclas legais para você:
```
Ctrl-f - Avança uma página para baixo (Que nem o `Pg Dn`)
Ctrl-b - Avança uma página para baixo (Que nem o `Pg Up`)
zz - Faz com que a linha atual vire a "linha do meio da tela"
gg - Vai para a primeira linha do arquivo
G - Vai para a última linha do arquivo
:N - Onde N é um número - Vai para a N-ésima linha do arquivo
N% - Onde N é um número - Vai para a linha que está nos N% do arquivo
Ctrl-o - Para voltar onde você estava, antes de um `gg` ou `G`
```

## Finalmente! Escrevendo alguma coisa!

Para que serve um editor de texto se você não puder escrever nada?
```
i - Para começar a escrever a partir da posição do cursor
I - Para começar a escrever, no começo da linha, independentemente de onde você está
a - Para começar a escrever, na posição seguinte do cursor
A - Para começar a escrever, no final da linha, independentemente de onde você está
o - Para adicionar uma linha abaixo e já começar a escrever
O - Para adicionar uma linha acima e já começar a escrever
```
**OBS:** Para sair do modo de inserção, utilize sua tecla amiga: `ESC`

## Apagando!!

Bom, pra você, que comete erros:
```
x - Apaga a letra na posição do cursor (delete)
X - Apaga a letra anterior à posição do cursor (backspace)
dw - Apaga uma palavra
dd - Apaga a linha atual
D - Apaga tudo, do cursor pra frente
C - Apaga tudo, do cursor pra frente, e entra no modo de inserção

rx - Substitui o caractere atual por 'x'
R - Passa por cima e vai substituindo
```

## Ctrl-Z

Bom, pra você, que comete erros e pensou: `"Ahhh mas desde o notepad eu tenho o ctrl-z pra me salvar!"`
```
u - Desfaz (O famoso Ctrl-z)
Ctrl-r - Refaz (Ctrl-y ou Ctrl-Shift-z)
```

## Copiando

`O que seria do conhecimento humano se não fosse o Ctrl-C e o Ctrl-V?`

```
dd - Recorta a linha atual (Perceba que não é a primeira vez que este comando aparece)
y - Copia o que estiver selecionado
yy - Copia a linha
p - Cola da posição do cursor pra frente (se foi uma cópia de linha, na linha de baixo)
P - Cola da posição do cursor pra trás (se foi uma cópia de linha, na linha de cima)
```
**Dica:** Você já sabe apagar... você já sabe copiar... você já sabe colar...você erra na hora de escrever...

Se você por alguma acaso já escreveu alguma palavra e, digitando em velocidades super sônicas, trocou alguns caracteres de posição... Já pensou em apagar um caractere e colá-lo logo em seguida?

Brinque com esta palavar. Coloque o cursor em cima to último 'a' e 'xp' nela!

## Composição de comandos

Lembre-se que somos preguiçosos e que preferimos digitar o mínimo possível!

Alguns comandos do vim podem ser compostos com outros, com repetições....
```
d2w - Apaga as 2 próximas palavras
fa - Vai até o próximo 'a', inclusive
ta - Vai até o próximo 'a'
dfa - Apaga até o próximo 'a', inclusive
dta - Apaga até o próximo 'a'
dG - Apaga do cursor, até o final do arquivo
```
```
3i<letra><ESC> - 3, depois i, depois um caractere qualquer, depois `ESC` - Insere um caractere 3 vezes, numa tacada só!
3o<ESC> - 3, depois o, depois `ESC` - Insere 3 linhas em branco, numa tacada só!
```

**Dica:** `J` junta duas linhas... e `3J`???

## Trocando maiúsculas e minúsculas

Quem Nunca, sem QUERER escreveu algo COM CAPS LOCK ATIVADO ou não, e teve que trocar na mão As Palavras Que Acabaram Ficando EscRitAs de alguMA forma EStRaNHa?
```
~ - Troca o case do caractere onde está o cursor
gu<h,j,k,l,$,0> - Deixa em minúsculas o caractere na direção do movimento que foi feito
gU<h,j,k,l,$,0> - Deixa em minúsculas o caractere na direção do movimento que foi feito
```

## Chegando em lugares

```
:N - Vai até a linha N
NG - Vai até a linha N
ta - Vai até o caractere 'a'
fa - Vai até o caractere 'a', inclusive
```
**Dica:** Depois de utilizar um `f/t` repita o procedimento com:
```
, - Match anterior
; - Match posterior
```

Se você, por algum acaso, trabalha com código, isto pode ser útil: `%`

Coloque o seu cursor em cima de um `{[()]}` e aperte `%` !!!! It is magic!!!!

## Cadê o Ctrl-F??

Para você que não decorou todo o texto e não sabe exatamente onde as coisas estão, talvez a busca seja útil para você!

Para iniciar uma busca, no modo normal, basta pressionar '/' e começar a digitar a palavra que você quer buscar, e logo em seguida, dar um `Enter`. Por exemplo:
```
/bom dia<ENTER>
```
Por padrão a busca é case sensitive, para ignorar os cases adicione `\c` ao final da busca:
```
/bom dia\c<ENTER>
```

## E a substituição?

Do que adianta procurar as coisas se não podemos alterá-las!?

Para fazer uma substituição temos que utilizar o famoso `s/original/modificado/`, da seguinte forma:
```
:<delimitador>s/original/modificado/
```

Onde o <delimitador> diz o escopo da mudança:
```
% - Todo o arquivo
3,19 - Range de linhas
'<,'> - Seleção visual - (Não precisa colocar esses caracteres estranhos, basta fazer uma seleção visual e apertar os dois pontos)
```

Então, por exemplo, nossa busca pode ser:
```
:%s/original/modificado/
:3,19s/original/modificado/
:'<,'>s/original/modificado/
```

Se você não está muito seguro da sua substituição, coloque `c` no final da substituição para ir confirmando uma a uma:
```
:%s/original/modificado/c
```

## O poder da invocação!

Sabia que de dentro do vim você pode invocar comandos do seu terminal sem fechá-lo!? Experimente, por exemplo:
```
:!ls
```
Para qualquer comando que você colocar, o vim vai mostrar o resultado e esperar que você aperte <Enter> para voltar para ele.

### Legal, bacaninha, mas e se eu quiser copiar e colar o conteúdo da saída do meu terminal, hein!?

Não subestime este humilde editor de texto, experimente:
```
:read !ls
```

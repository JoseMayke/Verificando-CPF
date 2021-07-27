## :man_technologist:Verificando CPF em Haskell.
---
#### 📝Este programa em Haskell recebe um número inteiro de CPF e verifica e informa se esse é um CPF válido. A meta foi fazer o programa receber um valor inteiro e transformá-lo em string para fazer a verificação utilizando funções de alta ordem do Haskell. As funções serão mostradas a seguir.



- Função **calcula9** que recebe parte dos números do cpf em string que essa parte são 9 números do cpf, recebe um valor de 10 inteiros (n) e outra variável do tipo inteiro iniciada com zero (aux) e retorna o resto da divisão por 11 da soma das multiplicações de cada número do CPF por n. Como o cpf está no formato de string, ou seja, uma lista de caractere, ele vai ser percorrido como uma lista ate o ultimo elemento e a cada interação é pego a cabeça da lista (c) que é um número do cpf e transformado interior e multiplicado por n e somado com aux dentro da chamada da função e n é subtraído por 1 também dentro da chamada da função. Assim, quando a lista chegar a vazio é feita a divisão por resto por 11 e retornado.
<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/1.png" />
</h1>

- Função **digito** que recebe um número que é o resultado da função acima e verifica o valor. Se o valor for 1 ou 0 é retornado 0 e se não for esse valor é retornado a subtração de 11 por o valor.
<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/2.png" />
</h1>

- Função **verCpfD1** que recebe o número do cpf em string e chama a primeira função citada acima (calculo9) e usando a função take, envia os nove primeiros números do cpf, além de enviar o número 10 para multiplicação e 0. A função calculo9 é chamada dentro da função digito, já mostrada acima que vai me retorna o valor que é comparado com primeiro dígito que é penúltimo número do cpf. Para comparar, é utilizado a função !! para pegar este dígito que é da posição 9 e em seguida é convertido para inteiro e em seguida é comparado. Se o valor for igual ao dígito da posição 9 do cpf é retornado Treu e se não for igual é retornado False.
<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/3.png" />
</h1>

- Função **verCpfD2** que faz a mesma coisa que a função acima (verCpfD1) com a diferença que é usado a função tail que retorna a string sem o primeiro elemento da lista, ou seja, sem o primeiro número do cpf, em seguida é feito e enviado no modo que a função anterior. Outra diferença é que o valor vai ser comparado com o segundo dígito do cpf que é o último número do cpf. Caso o valor seja igual ao último número é retornado true e se não for é retornado false.
<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/4.png" />
</h1>

- Função **verificaCPF** que recebe o cpf em string verifica se a formatação é válida, se o tamanho do cpf é válido utilizando a função length para saber o tamanho e chamando as duas funções mostradas acima (verCpfD1 e verCpfD2). Se as duas funções retornarem true e o tamanho for igual ao do cpf (tamanho 11) a função retorna true.
<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/5.png" />
</h1>

- E a Função **principal** que recebe o cpf do tipo inteiro do usuário e manda em forma de string, utilizando a função show, para a função verificaCPF que vai verificar se o cpf é válido. Caso for válido (true) a função informa que o cpf é válido e caso não seja valido (false) informa que não é válido.
<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/6.png" />
</h1>

---
### ⌨Exemplo de teste:

<h1 align="center">
  <img src="https://github.com/JoseMayke/Verificando-CPF-em-Haskell/blob/master/imagens/exemplo.png" />
</h1>

---

 ### Outras contas 📫

Você pode entrar em contato comigo através dessas contas:

- 
    <a href="https://discord.gg/J4fHeQx">
     <img align="left" alt="José Mayke  | Discord" width="26px" src="https://github.com/wrtinho/wrtinho/blob/master/Assets/discord.svg" />
    </a>
    <a href="https://www.linkedin.com/in/jos%C3%A9-mayke-2714771b8/">
     <img align="left" alt="José Mayke | Linkedin" width="24px" src="https://github.com/wrtinho/wrtinho/blob/master/Assets/Linkedin.svg" />
    </a>    

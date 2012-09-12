# PLANTRONIC /// conectividade

## Exemplos de comunicação entre Arduino, Processing e Pure Data para utilização com o Plantronic

Este repositório contém alguns arquivos de Processing e Pure Data exemplificando duas configurações:

1. Arduino envia dados via Serial para Processing, que gera gráficos e salva um arquivo `.csv` que pode ser aberto como planilha no Excel
2. Arduino envia dados via Serial para Pure Data, que repassa estes valores para o Processing via OSC

## Arduino

Para os dois exemplos, vamos tomar como ponto de partida este código de Arduino que lê dois pinos analógicos e envia para a comunicação Serial:

    void setup() {
      Serial.begin(9600);
    }
    
    void loop() {
    	int sensor0 = analogRead(A0);
    	int sensor1 = analogRead(A1);
    	
    	Serial.print(sensor0);
    	Serial.print(" ");
    	Serial.println(sensor1);
    	
    	delay(20);
    }

Obs: é preciso o envio de dois valores separados por espaço para a leitura no Pure Data com o patch que estamos disponibilizando. Enviar o valor de apenas um sensor seria então:

    void setup() {
      Serial.begin(9600);
    }
    
    void loop() {
    	int sensor0 = analogRead(A0);
    	
    	Serial.print(sensor0);
    	Serial.print(" ");
    	Serial.println(sensor0);
    	
    	delay(20);
    }
    
## Exemplo 1
### Processing

No diretório `Processing > exemplo1_csv` encontra-se o exemplo que conecta ao Arduino via Serial.

Antes de fechar o programa você deve sempre apertar a tecla `q` para que o arquivo `.csv` seja salvo.


## Exemplo 2
### Pure Data

Para rodar esse exemplo, você precisa instalar o PD Extended, disponível no site: <http://puredata.info/downloads/pd-extended>

O patch de Pure Data se encontra em `PD > exemplo2.pd`. Os diretórios `nano` e `pdmtl` devem estar no mesmo diretório da patch para que ele funcione corretamente.


### Processing

No diretório `Processing > exemplo2_osc` encontra-se o exemplo que recebe mensagens OSC do Pure Data e gera gráficos.

Para utilizar OSC no Processing, é preciso instalar a biblioteca extra [**oscP5**](http://www.sojamo.de/libraries/oscP5/) no diretório `Processing > libraries` do seu computador. Geralmente se encontra no diretório `… > user_name > Documents > Processing > libraries`. Caso não exista o diretório `libraries`, você pode cria-lo.

Você pode copiar o **oscP5** do diretório `Processing > libraries > oscP5` desse repositório ou fazer download do zip pelo url <http://www.sojamo.de/libraries/oscP5/download/oscP5-0.9.8.zip> e descompactar no diretório `libraries`.
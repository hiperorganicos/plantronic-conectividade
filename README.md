# PLANTRONIC /// conectividade

## Exemplos de comunicação entre Arduino, Processing e Pure Data para utilização com o Plantronic

Este repositório contém alguns arquivos de Processing e Pure Data exemplificando duas configurações:

1. Arduino envia dados via Serial para Processing
2. Arduino envia dados via Serial para Pure Data, que repassa estes valores para o Processing via OSC

### Arduino

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

Obs: recomendamos o envio de dois valores separados por espaço para a leitura no Pure Data. Outra versão deste código enviando o valor de apenas um sensor seria:

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
    
### Exemplo 1 /// Arduino ~ Processing

em produção...
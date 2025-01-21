# 🖥️ Monitorar Script Python3

## 📂 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Como Executar o Projeto](#-como-executar-o-projeto)

---

## 📖 Sobre o Projeto

Este projeto tem como objetivo monitorar a atividade de um script em **Python3** no sistema **Ubuntu**, utilizando **Shell Script** e **Python3**, permitindo abrir novamento o script caso esteja fechado.

---

## ⚙️ Tecnologias Utilizadas

Este projeto foi desenvolvido utilizando as seguintes tecnologias:

- **Ubuntu** - Sistema operacional utilizado.
- **Shell Script** - Para automação de tarefas no terminal.
- **Python3** - Para funcionalidades mais avançadas de monitoramento.

---

## 🚀 Como Executar o Projeto

### ✅ Pré-requisitos

Certifique-se de ter instalado no sistema:

- **Ubuntu** (versão recomendada: 20.04 ou superior)
- **Python3**
- **Permissões de administrador (sudo)**

---

### 📥 Passos para execução

**Repositório:**  
[https://github.com/jpsallesdeoliveira/raspberry-pi](https://github.com/jpsallesdeoliveira/raspberry-pi)

**Acesse o diretório do projeto:**

```bash
cd monitorar
```

**Tornar o script executável:**

```bash
chmod +x script.sh
```

**Executar arquivo:**
```bash
./script.sh
```

---

## Pseudocódigo shell

```pseudo
INÍCIO
    DEFINIR arquivo COMO "pid.txt"

    ENQUANTO VERDADEIRO FAÇA
        SE arquivo EXISTE ENTÃO
            LER CONTEÚDO DE arquivo PARA pid
        SENÃO
            DEFINIR pid COMO VAZIO
        FIM_SE

        SE pid NÃO ESTÁ VAZIO E processo COM pid É "python3" ENTÃO
            ESCREVER "shell  -> 1: It is alive"
        SENÃO
            ESCREVER "shell  -> 1: It is dead"
            EXECUTAR "python3 script.py &"
        FIM_SE

        AGUARDAR 1 SEGUNDO
    FIM_ENQUANTO
FIM
```

## Pseudocódigo python3

```pseudo
INÍCIO
    OBTER pid DO PROCESSO ATUAL

    TENTAR
        ABRIR "pid.txt" EM MODO DE ESCRITA
        ESCREVER pid NO ARQUIVO
        FECHAR ARQUIVO
    SENÃO
        ESCREVER "python -> Error when trying to save the file" NA SAÍDA PADRÃO
        ABRIR "cromai.log" EM MODO DE ESCRITA
        ESCREVER "python -> Error when trying to save the file" NO ARQUIVO
        FECHAR ARQUIVO
    FIM_TENTAR

    PARA 3 VEZES FAÇA
        ESCREVER "python -> 2: I am alive"
        ESPERAR 5 SEGUNDOS
    FIM_PARA

    ESCREVER "python -> 2: I gonna die now, bye"
FIM
```

# Fluxo de Interação entre os Scripts

Este diagrama representa o fluxo de interação entre o script Shell (`script.sh`) e o script Python (`script.py`).

```mermaid
graph TD;
    A[Início - script.sh] --> B{Arquivo pid.txt existe?}
    B -- Sim --> C[Ler PID do arquivo]
    B -- Não --> F[Exibir mensagem: script morto]
    C --> D{Processo Python está ativo?}
    D -- Sim --> E[Exibir mensagem: script vivo] --> M
    D -- Não --> F
    F --> G[Executar script Python script.py]
    G --> H[Python grava seu PID em pid.txt]
    H --> I[Python exibe: estou vivo]
    I --> J{Repetiu 3 vezes?}
    J -- Não --> I
    J -- Sim --> K[Python exibe: vou morrer, tchau]
    K --> L[Fim do script Python]
    L --> M[script.sh aguarda 1 segundo e recomeça]
    M --> B

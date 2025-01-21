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

chmod +x script.sh

./script.sh

---

# Script de Monitoramento de Processo

## Descrição
Este script monitora se um processo Python está em execução com base em um arquivo de PID. Caso o processo não esteja ativo, ele será reiniciado automaticamente.

## Pseudocódigo

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

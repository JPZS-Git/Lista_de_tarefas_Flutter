Flutter Learning Tasks

Um aplicativo de lista de tarefas construído em Flutter, voltado para aprendizado e prática com widgets fundamentais, layout, gerenciamento de estado e interatividade.

Funcionalidades

Adicionar novas tarefas via dialog.

Listar tarefas em um ListView.builder.

Remover tarefas individualmente com ícone de delete.

Feedback visual ao adicionar tarefas com SnackBar (opcional para adicionar).

Layout estilizado com Container, BoxDecoration, gradiente, sombra e ícones.

Exemplo de Image.network para exibição de imagens externas.

Suporte a StatelessWidget e StatefulWidget para gerenciamento de estado.

Tecnologias e Widgets Utilizados

Flutter & Dart

Scaffold, AppBar, FloatingActionButton

Column, Row, Expanded, ListView.builder

TextField para entrada de dados

ElevatedButton.icon para adicionar tarefas

Container + BoxDecoration para estilo

ClipRRect para bordas arredondadas de imagens

StatefulWidget para gerenciar estado da lista

Como Rodar

Certifique-se de ter o Flutter SDK instalado: Flutter Installation

Clone este repositório:

git clone https://github.com/seu-usuario/flutter-learning-tasks.git


Navegue até a pasta do projeto:

cd flutter-learning-tasks


Rode o app:

flutter run

Estrutura do Código

main.dart → ponto de entrada do app e definição do tema.

HomeScreen → tela principal com lista de tarefas, botão de adicionar e diálogo.

_criarItemTarefa → função que retorna cada item estilizado da lista.

Captura de Tela

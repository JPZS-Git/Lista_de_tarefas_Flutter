# Lista de Tarefas com Flutter

Um aplicativo de lista de tarefas construído em **Flutter**, voltado para aprendizado e prática com widgets fundamentais, layout, gerenciamento de estado e interatividade.

---

## Funcionalidades

- Adicionar novas tarefas via **dialog**.  
- Listar tarefas em um **ListView.builder**.  
- Remover tarefas individualmente com ícone de **delete**.  
- Layout estilizado com **Container**, **BoxDecoration**, **gradiente**, **sombra** e ícones.  
- Exemplo de **Image.network** para exibição de imagens externas.  
- Suporte a **StatelessWidget** e **StatefulWidget** para gerenciamento de estado.  

---

## Tecnologias e Widgets Utilizados

- **Flutter & Dart**  
- **Scaffold**, **AppBar**, **FloatingActionButton**  
- **Column**, **Row**, **Expanded**, **ListView.builder**  
- **TextField** para entrada de dados  
- **ElevatedButton.icon** para adicionar tarefas  
- **Container** + **BoxDecoration** para estilo  
- **ClipRRect** para bordas arredondadas de imagens  
- **StatefulWidget** para gerenciar estado  

---

## Como Rodar

1. Certifique-se de ter o **Flutter SDK** instalado: [Flutter Installation](https://flutter.dev/docs/get-started/install)  
2. Clone este repositório:  
```bash
git clone https://github.com/seu-usuario/flutter-learning-tasks.git
Navegue até a pasta do projeto:

bash
Copiar código
cd flutter-learning-tasks
Rode o app:

bash
Copiar código
flutter run
Estrutura do Código
main.dart → ponto de entrada do app e definição do tema.

HomeScreen → tela principal com lista de tarefas, botão de adicionar e diálogo.

_criarItemTarefa → função que retorna cada item estilizado da lista.

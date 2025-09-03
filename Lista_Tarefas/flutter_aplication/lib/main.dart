import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black87),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tarefas = ['Aprender Dart', 'Estudar Flutter', 'Fazer exercícios'];
  final TextEditingController _controller = TextEditingController();

  void _adicionarTarefa(String tarefa) {
    if (tarefa.isEmpty) return;
    setState(() {
      tarefas.add(tarefa);
    });
    _controller.clear();
  }

  void _removerTarefa(int index) {
    setState(() {
      tarefas.removeAt(index);
    });
  }

  void _mostrarDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text('Nova Tarefa', style: TextStyle(fontWeight: FontWeight.bold)),
        content: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Digite a tarefa',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              _adicionarTarefa(_controller.text);
              Navigator.of(context).pop();
            },
            child: const Text('Adicionar'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }

  Widget _criarItemTarefa(String tarefa, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade100, Colors.indigo.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.indigo.shade100.withOpacity(0.4),
              blurRadius: 6,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(6),
            child: const Icon(Icons.check, color: Colors.white, size: 20),
          ),
          title: Row(
            children: [
              const Icon(Icons.task_alt, color: Colors.indigo),
              const SizedBox(width: 8),
              Text(
                tarefa,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.indigo),
              ),
            ],
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.redAccent),
            onPressed: () => _removerTarefa(index),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas de Aprendizado'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 🔹 Exemplo explícito de Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/3176/3176366.png',
                height: 120,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                elevation: 4,
              ),
              onPressed: _mostrarDialog,
              icon: const Icon(Icons.add, size: 22),
              label: const Text('Adicionar Tarefa', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: tarefas.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.inbox, size: 50, color: Colors.grey),
                          SizedBox(height: 10),
                          Text(
                            'Nenhuma tarefa ainda!',
                            style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: tarefas.length,
                      itemBuilder: (context, index) => _criarItemTarefa(tarefas[index], index),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}






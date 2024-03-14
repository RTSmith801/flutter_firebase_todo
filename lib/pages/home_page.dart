import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/services/database_service.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseService _databaseService = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .primary,
      title: const Text(
        "Todo",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildUI() {
    return SafeArea(
        child: Column(
          children: [
            _messagesListView(),
          ],
        ));
  }

  Widget _messagesListView() {
    return SizedBox(
        height: MediaQuery
            .sizeOf(context)
            .height * 0.80,
        width: MediaQuery
            .sizeOf(context)
            .width,
        child: StreamBuilder(
          stream: _databaseService.getTodos(),
          builder: (context, snapshot) {
            List todos = snapshot.data?.docs ?? [];
            if (todos.isEmpty) {
              return const Center(
                child: Text("Add a todo!"),
              );
            }
            print(todos);
            return ListView();
          },
        ),
    );
  }
}
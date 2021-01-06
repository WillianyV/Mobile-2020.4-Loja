import 'package:flutter/material.dart';
import 'package:loja/app/user/user_provider.dart';
import 'package:loja/app/user/user_title.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuarios'),
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTitle(users.byIndex(i)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
        },
      ),
    );
  }
}

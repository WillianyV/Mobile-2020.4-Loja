import 'package:flutter/material.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';

class DrawerLoja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture:
                (Icon(Icons.account_circle, size: 30, color: whiteColor)),
            accountName: Text(loja.name), //loja.name
            accountEmail: Text(loja.email), //loja.email
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Início'),
            subtitle: Text('Tela de início'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.ECOMMECER_HOME),
          ),
          ListTile(
            leading: Icon(Icons.business_outlined),
            title: Text('Loja'),
            subtitle: Text('Minha conta'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            subtitle: Text('Sair'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.LOGIN),
          ),
        ],
      ),
    );
  }
}

import 'package:disenos2/src/widgets/avatar_active.dart';
import 'package:disenos2/src/widgets/campo_texto.dart';
import 'package:disenos2/src/widgets/float_buttom_back.dart';
import 'package:flutter/material.dart';

class HomeMessenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          _RowInfo(),
          Expanded(child: Container()),
          _iconBtnCamara(),
          _iconBtnEdit(),
        ],
      ),
      body: ListView(
        children: [_textBuscar(), _pageViewUser(), _columnUser()],
      ),
      floatingActionButton: FloatButtomBack(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble, size: 30.0), label: 'Chats'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.group,
            size: 30.0,
          ),
          label: 'Personas',
        ),
      ]),
    );
  }

  Widget _pageViewUser() {
    return Container(
      height: 100.0,
      child: PageView(
        controller: PageController(initialPage: 1, viewportFraction: 0.2),
        children: [
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
          _user(),
        ],
      ),
    );
  }

  Widget _user() {
    return Column(
      children: [
        AvatarActive(),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Ana Gonzales',
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  Widget _textBuscar() {
    return Column(
      children: [
        CampoTexto(
          hintText: 'Buscar',
          prefixIcon: Icon(Icons.search),
          radius: 30.0,
          height: 45.0,
        ),
      ],
    );
  }

  Widget _iconBtnCamara() {
    return Container(
      child: IconButton(
          icon: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          onPressed: () {}),
    );
  }

  Widget _iconBtnEdit() {
    return Container(
      child: IconButton(
          icon: Icon(
            Icons.edit,
            color: Colors.black,
          ),
          onPressed: () {}),
    );
  }

  Widget _columnUser() {
    return Container(
      child: Column(
        children: [
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
          _listTileUser(),
        ],
      ),
    );
  }

  Widget _listTileUser() {
    return ListTile(
      title: Text('Ana gonzales'),
      subtitle: Text('tu: Hola como estas'),
      leading: AvatarActive(),
      trailing: Icon(Icons.check_circle),
    );
  }
}

class _RowInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 33.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbmFzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
          ),
          Text(
            'Chats',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

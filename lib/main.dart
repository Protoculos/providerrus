import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_rus/models/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(context.watch<Data>().getData),
        ),
      ),
      body: Center(
        child: Widget1(),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget2(),
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyTextFiled(),
          Widget3(),
        ],
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(context.watch<Data>().getData),
    );
  }
}

class MyTextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      //Здесь значение Listener флаг должен стоять в значении false,
      //чтобы мы здесь получили доступ только к нужному методу в нашем классе,
      //который наследуется от ChangeNotifire
      //Здесь мы считываем те значения, которые потом необходимо над данными сделать
      //Этот метод будет менять наши данные, а потом будет вызывать, а потом вызывать
      //метод NotifyListeners и все наши виджеты, которые от него зависят, обновятся
      // onChanged: (newData) =>
      //     Provider.of<Data>(context, listen: false).changeString(newData),
      onChanged: (newData) => context.read<Data>().changeString(newData),
    );
  }
}

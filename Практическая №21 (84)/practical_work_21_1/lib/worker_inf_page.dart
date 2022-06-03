import 'package:flutter/material.dart';
import 'package:flutter_application/worker.dart';

class WorkerInfoPage extends StatelessWidget {

  Worker workerInfo;
  WorkerInfoPage ({required this.workerInfo});

  String getAnimals() {
    String an = "";
    if(workerInfo.ab[0]==true)
      an+="Зеброй, ";
    if(workerInfo.ab[1]==true)
      an+="Кошаком, ";
    if(workerInfo.ab[2]==true)
      an+="Анакондой, ";
    if(workerInfo.ab[3]==true)
      an+="Человеком, ";
    if(workerInfo.ab[4]==true)
      an+="Слоном, ";
    if(workerInfo.ab[5]==true)
      an+="Антилопой, ";
    if(workerInfo.ab[6]==true)
      an+="Голубем, ";
    if(workerInfo.ab[7]==true)
      an+="Крабом, ";
    an+="Собой";
    return an;
  }
  
  String getZarplata() {
    int zp = int.parse(workerInfo.age) * 3000;
    if(workerInfo.gender=='Женский') {
      zp += (zp*0.35) as int;
    }
    return zp.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добро пожаловать'),
      ),
      body: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Имя: ${workerInfo.name}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text('Телефон: ${workerInfo.phone ==''? 'Отсутствует':workerInfo.phone}'),
              trailing: Text('EMail: ${workerInfo.email}'),
            ),
            Text('На вашу почту направлено письмо с приглашением на работу. Вы будете ухаживать за ${getAnimals()}. Оплата вашего труда составит ${getZarplata()} руб.'),
          ],
        ),
      ),
    );
  }
}

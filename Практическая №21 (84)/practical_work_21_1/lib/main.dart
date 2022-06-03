import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'worker_inf_page.dart';
import 'worker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();
  final _personalQualitiesController = TextEditingController();
  final List<String> _listMetro = [
    'Парнас',
    'Пр. Просвещения',
    'Озерки',
    'Удельная',
    'Пионерская',
    'Черная речка',
    'Петроградская',
    'Горьковская',
    'Невский проспект',
    'Сенная площадь'
  ];
  String? _selectedMetro;
  final String dataRadio = "";
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  bool _isChecked6 = false;
  bool _isChecked7 = false;
  bool _isChecked8 = false;
  Gender _selectedGender = Gender.men;

  Worker newWorker = Worker();

  final _FormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _ageController.dispose();
    _personalQualitiesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Зоопарк'),
        centerTitle: true,
      ),
      body: Form(
        key: _FormKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              onSaved: (value)=> newWorker.name = value!,
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Имя *',
              ),
              validator: (value) => _validateName(value),
            ),
            TextFormField(
              onSaved: (value)=>newWorker.phone = value!,
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Телефон',
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter(RegExp(r'^[()\d-+]{1,17}$'),
                    allow: true)
              ],
              validator: (value) => _validatePhoneNumber(value)
                  ? null
                  : 'Формат номера должен быть +7(ХХХ)-ХХХ-ХХ-ХХ',
            ),
            TextFormField(
              onSaved: (value) => newWorker.email = value!,
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'EMail *',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: _validateEmail,
            ),
            TextFormField(
              onSaved: (value) => newWorker.age = value!,
              controller: _ageController,
              decoration: const InputDecoration(
                labelText: 'Возраст*',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) => _validateAge(value),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: ListTile(
                    title: const Text('Мужской'),
                    leading: Radio<Gender>(
                      value: Gender.men,
                      groupValue: _selectedGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _selectedGender = value!;
                          newWorker.gender = 'Мужской';
                        });
                      },
                    ),
                  ),
                ),
                Container(
                    color: Colors.black12,
                    width: 200,
                    child: ListTile(
                      title: const Text('Женский'),
                      leading: Radio<Gender>(
                        value: Gender.women,
                        groupValue: _selectedGender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _selectedGender = value!;
                          newWorker.gender = 'Женский';
                          });
                        },
                      ),
                    ))
              ],
            ),
            DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ближайшее метро',
                ),
                items: _listMetro.map(
                  (metro) {
                    return DropdownMenuItem(
                      child: Text(metro),
                      value: metro,
                    );
                  },
                ).toList(),
                onChanged: (data) {
                  setState(() {
                    _selectedMetro = data.toString();
                    newWorker.metro = data.toString();
                  });
                }),
            TextFormField(
              onSaved: (value)=> newWorker.persQua = value!,
              controller: _personalQualitiesController,
              decoration: const InputDecoration(
                labelText: 'Перечислите\nличные\nкачества',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              inputFormatters: [LengthLimitingTextInputFormatter(100)],
            ),
            Row(
              children: [
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Зебра'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked1 = value!;
                        newWorker.ab[0] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Кошак'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked2 = value!;
                        newWorker.ab[1] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Анаконда'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked3 = value!;
                        newWorker.ab[2] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Человек'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked4,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked4 = value!;
                        newWorker.ab[3] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Слон'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked5,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked5 = value!;
                        newWorker.ab[4] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Антилопа'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked6,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked6 = value!;
                        newWorker.ab[5] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Голубь'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked7,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked7 = value!;
                        newWorker.ab[6] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Краб'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isChecked8,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked8 = value!;
                        newWorker.ab[7] = value;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
                Container(
                  color: Colors.black12,
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text('Все'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: (_isChecked1 &&
                        _isChecked2 &&
                        _isChecked3 &&
                        _isChecked4 &&
                        _isChecked5 &&
                        _isChecked6 &&
                        _isChecked7 &&
                        _isChecked8),
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked1 = true;
                        _isChecked2 = true;
                        _isChecked3 = true;
                        _isChecked4 = true;
                        _isChecked5 = true;
                        _isChecked6 = true;
                        _isChecked7 = true;
                        _isChecked8 = true;
                        newWorker.ab[0] = true;
                        newWorker.ab[1] = true;
                        newWorker.ab[2] = true;
                        newWorker.ab[3] = true;
                        newWorker.ab[4] = true;
                        newWorker.ab[5] = true;
                        newWorker.ab[6] = true;
                        newWorker.ab[7] = true;
                      });
                    },
                    activeColor: Colors.yellow,
                    checkColor: Colors.black,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _SubmitForm,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.indigo,
                ),
              ),
              child: const Text('Отправить информацию'),
            ),
          ],
        ),
      ),
    );
  }

  void _SubmitForm() {
      _FormKey.currentState!.save();
    if (_FormKey.currentState!.validate()) {
      _showDialog(name: _nameController.text);
      print('${newWorker.name}');
      print('${newWorker.metro}');
      print('${newWorker.age}');
      print('${newWorker.ab}');
    } else {
      _showMessage();
    }
  }

  String? _validateName(String? value) {
    final _nameExp = RegExp(r'^[А-Яа-я]+$');
    if (value!.isEmpty) {
      return 'У вас должно быть имя';
    } else if (!_nameExp.hasMatch(value)) {
      return 'Настояшее имя';
    } else {
      return null;
    }
  }

  bool _validatePhoneNumber(String? input) {
    final _phoneExp = RegExp(r'^\+7\(\d\d\d\)\-\d\d\d-\d\d\-\d\d');
    if (input == "") {
      return true;
    } else {
      return _phoneExp.hasMatch(input!);
    }
  }

  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Заполните поле почты';
    } else if (!_emailController.text.contains('@')) {
      return 'Это не почта';
    } else {
      return null;
    }
  }

  String? _validateAge(String? value) {
    if (value!.isEmpty) {
      return 'Заполните Возраст';
    } else if (int.parse(value) < 0) {
      return 'Приходите после рождения';
    } else if (int.parse(value) < 18) {
      return 'Вам рано еще работать';
    } else {
      return null;
    }
  }

  void _showDialog({required String name}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Подтверждение отправки'),
            titleTextStyle: TextStyle(
              color: Colors.green,
            ),
            content: Text('$name, подтвердите отправку формы'),
            actions: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context)=> WorkerInfoPage( workerInfo: newWorker ),),);
                  },
                  child: Text(
                    'Подтверждаю',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ))
            ],
          );
        });
  }

  void _showMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Ошибка заполнения'),
            titleTextStyle: TextStyle(
              color: Colors.red,
            ),
            content: Text('Проверьте правильность заполнение формы'),
            actions: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Ок',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ))
            ],
          );
        });
  }
}

enum Gender { men, women }

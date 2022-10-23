import 'package:flutter/material.dart';
// min 35:00 last video
class Practice19 extends StatefulWidget {
  Practice19({super.key});

  @override
  Practice19State createState() {
    return Practice19State();
  }

}

enum Gender {Male, Female}

class Practice19State extends State<Practice19> {

  Gender? _personGender;

  @override
  Widget build(BuildContext context) {

    TextEditingController _nameCtrl = TextEditingController();
    TextEditingController _mailCtrl = TextEditingController();
    TextEditingController _cellphoneCtrl = TextEditingController();
    TextEditingController _passwordCtrl = TextEditingController();
    bool isChecked = false;
    var _formKey = GlobalKey<FormState>();

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.menu, color: Colors.teal,),
        title: const Text('Forms', style: TextStyle(color: Colors.teal),),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.teal),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.teal),
            onPressed: () {},
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: TextFormField(
                controller: _nameCtrl,
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'This is required';
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.account_box, color: Colors.white,)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextFormField(
                controller: _mailCtrl,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'eMail',
                    prefixIcon: Icon(Icons.email, color: Colors.white,)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextFormField(
                controller: _cellphoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cellphone',
                    prefixIcon: Icon(Icons.phone, color: Colors.white,)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextFormField(
                controller: _passwordCtrl,
                obscureText: true,
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'This is required';
                  }
                  if (value.length < 10) {
                    return 'Password need to more than 9 char';
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password, color: Colors.white,)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: const Text(
                  'Gender:',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18)
              ),
            ),
            ListTile(
              title: const Text('Male'),
              leading: Radio<Gender>(
                value: Gender.Male,
                groupValue: _personGender,
                onChanged: (Gender? value) {
                  setState(() {
                    _personGender = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Female'),
              leading: Radio<Gender>(
                value: Gender.Female,
                groupValue: _personGender,
                onChanged: (Gender? value) {
                  setState(() {
                    _personGender = value;
                  });
                },
              ),
            ),
            const Expanded(child: SizedBox()),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                    }),
                const Text('By signing up, I accept terms and conditions')
              ],
            ),
            Container(
              width: 400,
              height: 50,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: ElevatedButton(
                child: const Text('Submit', style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20),
                ),
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    print(_nameCtrl.text);
                    print(_mailCtrl.text);
                    print(_cellphoneCtrl.text);
                    print(_passwordCtrl.text);
                  }

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_ltdd_chk/screens/thongtinnhanvat.dart';
import 'package:flutter/material.dart';

import 'models/quiz_user.dart';

class Edit extends StatefulWidget{
  const Edit({super.key});
  
  @override
  State<Edit> createState() => _Edit();

}
class _Edit extends State<Edit>{
  final CollectionReference _users = FirebaseFirestore.instance.collection('users');
  TextEditingController _email = TextEditingController();
  TextEditingController _username = TextEditingController(); 

  /*Future<void> _update([DocumentSnapshot? documentSnapshot]) async{
    if(DocumentSnapshot != null){
      _email.text= documentSnapshot? ['email'];
      _username.text = documentSnapshot?['name'];
    }
    await showModalBottomSheet(context: context, builder: (BuildContext bui){
      return Padding(padding: EdgeInsets.all(8),
      )
    })
  }*/
  @override
  void iniState() {
   /* _email=TextEditingController(text: widget.user.email);
    _username= TextEditingController(text: widget.user.name);
    super.initState();*/
  }
  @override
  void dispose() {
    _email!.dispose();
    _username!.dispose();
    super.dispose();
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xff152B42),
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            Text(
              'Chỉnh sửa thông tin',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage('assets/h16.png'),
                          )
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape:  BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white
                            ),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                      ))
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Username:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 247, 244, 244),
                            fontWeight: FontWeight.normal),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: _username,
                          style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'Username',
                              hintStyle:
                                  TextStyle(color: Color.fromARGB(255, 19, 19, 19))),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Email:',
                        style:
                            TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(55, 20, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: TextField(
                          controller: _email,
                          style: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
              ),
              /*StreamBuilder(
                stream: _users.snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot){
                  if(streamSnapshot.hasData){
                    final DocumentSnapshot documentSnapshot= streamSnapshot.data!.docs().;
                  }
                  return Center(child: CircularProgressIndicator(),);
                  
                }),*/
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>infor()));
                      }, 
                      child: Text("HỦY",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      ),
                      ElevatedButton(onPressed: () async{
                      /*final String name = _username.text;
                      final String email = _email.text;
                      
                      if(name != null){
                        await _users.doc(DocumentSnapshot!.)
                        .update({"name": name,"email": email});
                        _username.text='';
                        _email.text='';
                      }*/
                    }, child: Text("LƯU",
                     style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                      )
                  ],
                )
            ],
          ),

        ),
      ),
    );
  }
  
}
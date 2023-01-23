

import 'package:flutter/material.dart';

class ContactCategory extends StatefulWidget {
  const ContactCategory({super.key});

  @override
  State<ContactCategory> createState() => _ContactCategoryState();
}

class _ContactCategoryState extends State<ContactCategory> {
   TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: [
         Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'CONTACT US',
                      style: TextStyle(
                          color: Color.fromARGB(255, 47, 14, 233),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  )
                  ),
                    Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
             Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                
              ),
              
              
            ),
             
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Subject',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextFormField(
                                maxLines: 5,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  hintText: ' Massgese ',hintStyle: TextStyle(color: Color.fromARGB(255, 235, 40, 40),
                                  ),
                                  fillColor: Color.fromARGB(255, 15, 230, 86),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)
                                  
                                  )
                                  
                                ),
                              ),
                             

                            ],
                          ),
                          
                        ),
            ),
            
           
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Submit '),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )
              ),
            ),


        ]
      ),
      
    );
  }
}
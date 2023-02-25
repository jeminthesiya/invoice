import 'package:flutter/material.dart';
import 'package:invoice_1/ModalData.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  TextEditingController price = TextEditingController();
  TextEditingController pqu = TextEditingController();
  TextEditingController pname = TextEditingController();
  TextEditingController p = TextEditingController();
  TextEditingController n = TextEditingController();
  TextEditingController q = TextEditingController();
  List<Modal> AllData = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ENTER DATA"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: pqu,
                decoration: InputDecoration(
                  label: Text("Product Quantity."),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: pname,
                decoration: InputDecoration(
                  label: Text("Product Name."),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: price,
                decoration: InputDecoration(
                  label: Text("Product Price."),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Modal m2 = Modal(
                      productquantity: pqu.text,
                      productname: pname.text,
                      productprice: price.text,
                    );
                    AllData.add(m2);
                  });
                },
                child: Text("Add"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Modal m2 = Modal(
                    productquantity: pqu.text,
                    productname: pname.text,
                    productprice: price.text,
                  );

                  Navigator.pushNamed(context, 'ShowDetail',
                      arguments: AllData);
                },
                child: Text("Next"),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: AllData.length,
                  itemBuilder: (context, index) {
                    return listUI(
                      index,
                      AllData[index].productquantity!,
                      AllData[index].productprice!,
                      AllData[index].productname!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listUI(int index, String name, String quantity, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: ListTile(
          title: Text("$quantity"),
          subtitle: Text("$name"),
          leading: Text("$price"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            title: Column(
                          children: [
                            TextField(
                              controller: q,
                              decoration: InputDecoration(
                                label: Text("Product Quantity."),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: n,
                              decoration: InputDecoration(
                                label: Text("Product Name."),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: p,
                              decoration: InputDecoration(
                                label: Text("Product Price."),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  AllData[index].productname = n.text;
                                  AllData[index].productquantity = q.text;
                                  AllData[index].productprice = p.text;
                                });
                                Navigator.pop(context);
                              },
                              child: Text("Add"),
                            ),
                          ],
                        )),
                      );
                    });
                  },
                  icon: Icon(Icons.edit)),
              SizedBox(
                width: 15,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      AllData.removeAt(index);
                    });
                  },
                  child: Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}

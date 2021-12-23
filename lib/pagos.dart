import 'dart:html';

import 'package:cuentas/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagos extends StatefulWidget {
  const Pagos({Key? key}) : super(key: key);

  @override
  State<Pagos> createState() => _PagosState();
}

class _PagosState extends State<Pagos> {
  late bool _visibility;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _visibility = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: 222,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: bgLightColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: Column(
                  children: [
                    Text("Número", style: textStyleH2Blue),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text("1/3", style: textStyleH2Black),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: Column(
                  children: [
                    Text("Empresa", style: textStyleH2Blue),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "AUTOTRANSPORTES MISIONEROS DE LA BAJA, S.A. DE C.V.",
                      style: textStyleH2Black,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: Column(
                  children: [
                    Text("Cantidad Disponible", style: textStyleH2Blue),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "\$ 2,233,112.04 ",
                      style: textStyleH2Black,
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: Column(
                  children: [
                    Text("Deuda Total Seleccionada", style: textStyleH2Blue),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "\$ 256,311.00",
                      style: textStyleH2Black,
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                child: Column(
                  children: [
                    Text("Cantidad a Pagar", style: textStyleH2Blue),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "\$ 256,311.00",
                      style: textStyleH2Black,
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _visibility = !_visibility;
                    });
                  },
                  icon: Icon(
                    Icons.miscellaneous_services,
                    size: 42,
                    color: secondaryColor,
                  ))
            ],
          ),
        ),
        Container(
          child: Offstage(
            child: const TablaT(),
            offstage: _visibility,
          ),
        ),
      ],
    );
  }
}

class TablaT extends StatefulWidget {
  const TablaT({Key? key}) : super(key: key);

  @override
  State<TablaT> createState() => _TablaTState();
}

class _TablaTState extends State<TablaT> {
  late bool isChecked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isChecked = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width * 0.46,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child:
                      const Text("Cuentas por Pagar", style: textStyleH2Black),
                ),
                Table(
                  // border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child:
                            Text('Proveedor/Cliente', style: textStyleH4Grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Concepto', style: textStyleH4Grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Cantidad por Pagar',
                            style: textStyleH4Grey, textAlign: TextAlign.end),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Parcial',
                            style: textStyleH4Grey,
                            textAlign: TextAlign.center),
                      ),
                      Container(),
                    ]),
                    TableRow(children: [
                      Text("DIESEL TIJUANA", style: textStyleH3Black),
                      Text('Gasolina para camiones', style: textStyleH3Black),
                      Text('\$ 256,311.00',
                          style: textStyleH2Black, textAlign: TextAlign.end),
                      Checkbox(
                        checkColor: primaryColor,
                        activeColor: secondaryColor,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      CupertinoTextField(
                        padding: EdgeInsets.all(2.0),
                        onChanged: (value) => print(value),
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(color: greyLightColor),
                        ),
                      ),
                    ])
                  ],
                ),
                SizedBox(height: 133.0),
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width * 0.44,
                  color: textColor,
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 6.0),
                      child: Text('TOTAL', style: textStyleH4Grey),
                    ),
                    Container(
                      width: 188.0,
                      child: CupertinoTextField(
                        padding: EdgeInsets.all(8.0),
                        onChanged: (value) => print(value),
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(color: greyLightColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 0.8,
            color: secondaryColor,
            padding: EdgeInsets.symmetric(vertical: 12.0),
            height: 256,
          ),
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width * 0.46,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: const Text("Cuentas Origen", style: textStyleH2Black),
                ),
                Table(
                  // border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Container(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Banco', style: textStyleH4Grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Número de cuenta',
                            style: textStyleH4Grey,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Cantidad Disponible',
                            style: textStyleH4Grey, textAlign: TextAlign.end),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text('Cantidad a Pagar',
                            style: textStyleH4Grey, textAlign: TextAlign.end),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 28.0,
                        child: Checkbox(
                          checkColor: primaryColor,
                          activeColor: secondaryColor,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text("BANORTE", style: textStyleH3Black),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text('**** **** **** 2534',
                                style: textStyleH3Black),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: primaryColor,
                                activeColor: secondaryColor,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text('Pago con cheque', style: textStyleH4Grey),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text('\$ 985,624.12',
                                style: textStyleH2Black,
                                textAlign: TextAlign.end),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(8.0),
                              onChanged: (value) => print(value),
                              keyboardType: TextInputType.number,
                              cursorColor: primaryColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: greyLightColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(8.0),
                              onChanged: (value) => print(value),
                              keyboardType: TextInputType.number,
                              cursorColor: primaryColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: greyLightColor),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, top: 6.0),
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(8.0),
                              onChanged: (value) => print(value),
                              keyboardType: TextInputType.number,
                              cursorColor: primaryColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: greyLightColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        width: 28.0,
                        child: Checkbox(
                          checkColor: primaryColor,
                          activeColor: secondaryColor,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text("BBVA", style: textStyleH3Black),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text('**** **** **** 1223',
                                style: textStyleH3Black),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: primaryColor,
                                activeColor: secondaryColor,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text('Pago con cheque', style: textStyleH4Grey),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text('\$ 1,247,487.92',
                                style: textStyleH2Black,
                                textAlign: TextAlign.end),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(8.0),
                              onChanged: (value) => print(value),
                              keyboardType: TextInputType.number,
                              cursorColor: primaryColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: greyLightColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, top: 4.0, bottom: 4.0),
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(8.0),
                              onChanged: (value) => print(value),
                              keyboardType: TextInputType.number,
                              cursorColor: primaryColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: greyLightColor),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, top: 0.0),
                            child: CupertinoTextField(
                              padding: EdgeInsets.all(8.0),
                              onChanged: (value) => print(value),
                              keyboardType: TextInputType.number,
                              cursorColor: primaryColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: greyLightColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ])
                  ],
                ),
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width * 0.44,
                  color: textColor,
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 6.0),
                      child: Text('TOTAL', style: textStyleH4Grey),
                    ),
                    Container(
                      width: 188.0,
                      child: CupertinoTextField(
                        padding: EdgeInsets.all(8.0),
                        onChanged: (value) => print(value),
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(color: greyLightColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

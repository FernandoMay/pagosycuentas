import 'package:cuentas/constants.dart';
import 'package:cuentas/pagos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class Cuentas extends StatelessWidget {
  const Cuentas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightS = MediaQuery.of(context).size.height;
    var widthS = MediaQuery.of(context).size.width;
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.all(4.0),
          middle: Text(
            "Selección de Pagos y Cuentas Origen",
            style: textStyleH1Black,
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.2),
        child: SafeArea(
          child: Container(
            width: widthS * 0.97,
            height: heightS * 0.93,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  height: heightS * 0.9,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Pagos(),
                        SizedBox(
                          height: 22.0,
                        ),
                        Pagos(),
                        SizedBox(
                          height: 22.0,
                        ),
                        Pagos(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: heightS * 0.08,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        RedButton(title: "Cancelar"),
                        Button(title: "Pagar"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;

  const Button({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
      child: Container(
        width: 204,
        //height: 35,
        child: CupertinoButton(
          color: greyLightColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          // padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
          child: Text(
            title,
            style: textStyleH3Grey,
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Recomendaciones(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}

class RedButton extends StatelessWidget {
  final String title;
  const RedButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
      child: Container(
        width: 204,
        //height: 51,
        child: CupertinoButton(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),

          color: Colors.white,

          // padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
          child: Text(
            title,
            style: textStyleH3Red,
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Recomendaciones(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}

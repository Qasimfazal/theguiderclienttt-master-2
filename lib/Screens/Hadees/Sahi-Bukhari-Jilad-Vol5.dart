import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class Vol5 extends StatefulWidget {
  const Vol5({Key key}) : super(key: key);

  @override
  _Vol5State createState() => _Vol5State();
}

class _Vol5State extends State<Vol5> {
  @override
  bool _isLoading = true;
  PDFDocument document;
  @override
  void initState() {
    super.initState();
    loadDocument();
  }
  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/Sahi-Bukhari-Jilad-5.pdf');

    setState(() => _isLoading = false);
  }
  Widget build(BuildContext context) {
    return _isLoading ? Center(child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          //   color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10))
            ]),
        child: CircularProgressIndicator())) :Scaffold(
      appBar: AppBar(
        title: Text('Sahi-Bukhari-Jilad-Vol5'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromRGBO(143, 148, 251, 1),Color.fromRGBO(143, 148, 251, .6)]),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(child: Expanded(child: PDFViewer(document: document))),
          ],
        ),
      ),
    );
  }
}

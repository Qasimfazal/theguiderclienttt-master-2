import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class Val2 extends StatefulWidget {
  const Val2({Key key}) : super(key: key);

  @override
  _Val2State createState() => _Val2State();
}

class _Val2State extends State<Val2> {
  @override
  bool _isLoading = true;
  PDFDocument document;
  @override
  void initState() {
    super.initState();
    loadDocument();
  }
  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/Sahi-Bukhari-Jilad-2.pdf');

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
        title: Text('Sahi-Bukhari-Jilad-Vol2'),
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

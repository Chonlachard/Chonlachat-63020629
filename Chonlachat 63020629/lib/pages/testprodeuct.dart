import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginshopkit/pages/PaySuccect.dart';

class ProductMyManCity extends StatefulWidget {
  const ProductMyManCity({super.key});

  @override
  State<ProductMyManCity> createState() => _ProductMyState();
}

class _ProductMyState extends State<ProductMyManCity> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List listNames = ['1', '2', '3', '4', '5'];
    List ListNumber = ['1', '2', '3', '4', '5'];
    return Scaffold(
      key: ScaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF57636C),
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://www.phanpha.com/sites/default/files/imagecache/product_full/images01/9786162991127.JPG',
                          width: double.infinity,
                          height: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Reborn เล่มที่ 42',
                            style: GoogleFonts.getFont(
                              'Outfit',
                              color: Color(0xFF0F1113),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '50 THB',
                            style: GoogleFonts.getFont(
                              'Outfit',
                              color: Color(0xFF57636C),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                      indent: 16,
                      endIndent: 16,
                      color: Color(0xFFE0E3E7),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Desciption',
                            style: GoogleFonts.getFont(
                              'Outfit',
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'ลิขสิทธิ์ : Shueisha Inc.  โดย : Akira Amano',
                              style: GoogleFonts.getFont(
                                'Outfit',
                                color: Color(0xFF0F1113),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 9),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: AlignmentDirectional(-0.9, 0),
                              child: Text(
                                'จำนวนเล่ม',
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: DropdownButtonFormField(
                              items: listNames.map((name) {
                                return DropdownMenuItem(
                                  child: Text(name),
                                  value: name,
                                );
                              }).toList(),
                              onChanged: (Object? value) {},
                            )),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: AlignmentDirectional(-0.9, 0),
                              child: Text(
                                '',
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: DropdownButtonFormField(
                              items: ListNumber.map((name) {
                                return DropdownMenuItem(
                                  child: Text(name),
                                  value: name,
                                );
                              }).toList(),
                              onChanged: (Object? value) {},
                            )),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue)),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KitPage()),
                            );
                          },
                          child: Text('Pay'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

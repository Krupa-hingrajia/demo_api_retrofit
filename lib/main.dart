import 'package:demo_api_retrofit/models/post_method.dart';
import 'package:demo_api_retrofit/razorpay.dart';
import 'package:demo_api_retrofit/repository/api_repository.dart';
import 'package:flutter/material.dart';

import 'models/list_models.dart';

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
      home: const MyHomePage(title: 'Retrofit api calling'),
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
  SelectPlanResponse? selectPlanResponse;
  APIRepository apiRepository = APIRepository();
  ClassesOfDateResponse? classesOfDateResponse;

  @override
  initState() {
    // TODO: implement initState
    _response();
    _postResponse();
    super.initState();
  }

  _response() async {
    selectPlanResponse = await apiRepository.selectPlan(
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5NDJhMjljMS0zNGMyLTQxNzEtODU4Ny1mMWQxODg3MTcwYWYiLCJqdGkiOiJiYWRiNzA2MzQxZjhmYjQ4NjE0ZjhhOWUxZmQ5NjNmNzkzMTYzNmQ3ZThmMDM1OGIxOWU0NTNiN2E3N2RhOTZhNmU3OGVkNmRkODNkMGMyMCIsImlhdCI6MTY1ODM4Mzc1Mi40Mjk2ODgsIm5iZiI6MTY1ODM4Mzc1Mi40Mjk2OSwiZXhwIjoxNjg5OTE5NzUyLjQyNDM0Mywic3ViIjoiNjQ2Iiwic2NvcGVzIjpbXX0.aLwOzGYj8w0scpjhuhlKNGrbfZlDm7EkH4xSctrceaUOyBSykVHnCoRTsUIXFf3lj2i3itUY3av6jTH1tMnSLVXmjs44HDLkHKEKaT6otwHUMVZunCqw7T52a-mLiS8yemKFELyFbRmxrXVfUxnnZW-ncCz6jhDR3HP7UtBnGC0e9X4eO2_AElfLa3IoVYEmu8yZqcyBogT_ymzEAJ0A_HdaaWM6Cv2ciIqkqgUWbsUifZChUSaB42_SQNGmvlRfkxJGDCR__2YvkwoMbiQ4yfzp1Gh5svomElcySDMNRRi_HJu_kAP-uxPGqhA6Bn95R0FFq7toa2fC0Rcctpdpt1jyRinKgf88TuCXT5J0kR-Gmjpxmo1uCjAMCo78iTdnupZ7SbPV4vJoaSxR7BdKFk7Jhcghv9rXQ8nF96oqyze0rnbBPZVehC7fK6PXSfPumFT73s23APVdtDPXz810fFyGX_cHIFvUBvvqgHsKhfFIoiCFQA4u7ot51vTyBDowuWv8wToxGBPAjldu4x-ONVfevDZzJY1tZlZVWAZdvY4GE8uDWUK4TFxMES5u0Hrb3iVl9cn8QVoxrwhrL3a-rFRif6U8ANi1pZjoSD2CxdAIiXUe6YqjWkDAOJ8ylzCADB5SzkcToYQ1FwExjX0cUupAM14YHqVb8GFEV9DFrB8');
    //print("*************${selectPlanResponse!.toJson()}");
  }

  _postResponse() async {
    ClassesOfDate classesOfDate = ClassesOfDate(date: '2022-07-26', page: '0');
    classesOfDateResponse = await apiRepository.postMethods(
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5NDJhMjljMS0zNGMyLTQxNzEtODU4Ny1mMWQxODg3MTcwYWYiLCJqdGkiOiJiYWRiNzA2MzQxZjhmYjQ4NjE0ZjhhOWUxZmQ5NjNmNzkzMTYzNmQ3ZThmMDM1OGIxOWU0NTNiN2E3N2RhOTZhNmU3OGVkNmRkODNkMGMyMCIsImlhdCI6MTY1ODM4Mzc1Mi40Mjk2ODgsIm5iZiI6MTY1ODM4Mzc1Mi40Mjk2OSwiZXhwIjoxNjg5OTE5NzUyLjQyNDM0Mywic3ViIjoiNjQ2Iiwic2NvcGVzIjpbXX0.aLwOzGYj8w0scpjhuhlKNGrbfZlDm7EkH4xSctrceaUOyBSykVHnCoRTsUIXFf3lj2i3itUY3av6jTH1tMnSLVXmjs44HDLkHKEKaT6otwHUMVZunCqw7T52a-mLiS8yemKFELyFbRmxrXVfUxnnZW-ncCz6jhDR3HP7UtBnGC0e9X4eO2_AElfLa3IoVYEmu8yZqcyBogT_ymzEAJ0A_HdaaWM6Cv2ciIqkqgUWbsUifZChUSaB42_SQNGmvlRfkxJGDCR__2YvkwoMbiQ4yfzp1Gh5svomElcySDMNRRi_HJu_kAP-uxPGqhA6Bn95R0FFq7toa2fC0Rcctpdpt1jyRinKgf88TuCXT5J0kR-Gmjpxmo1uCjAMCo78iTdnupZ7SbPV4vJoaSxR7BdKFk7Jhcghv9rXQ8nF96oqyze0rnbBPZVehC7fK6PXSfPumFT73s23APVdtDPXz810fFyGX_cHIFvUBvvqgHsKhfFIoiCFQA4u7ot51vTyBDowuWv8wToxGBPAjldu4x-ONVfevDZzJY1tZlZVWAZdvY4GE8uDWUK4TFxMES5u0Hrb3iVl9cn8QVoxrwhrL3a-rFRif6U8ANi1pZjoSD2CxdAIiXUe6YqjWkDAOJ8ylzCADB5SzkcToYQ1FwExjX0cUupAM14YHqVb8GFEV9DFrB8',
        classesOfDate);
    setState(() {});
  //  print("**************${classesOfDateResponse!.toJson()}");
  }

  @override
  Widget build(BuildContext context) {
    //print("________________${classesOfDateResponse!.data ?? '++++++++'}");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* selectPlanResponse == null
                ? const CircularProgressIndicator()
                : ListView.builder(
                shrinkWrap: true,
                itemCount: selectPlanResponse!.data!.length,
                itemBuilder: (context, index) {
                  return Text(selectPlanResponse!.data![index].type ?? "blank");
                }),*/

            /*     classesOfDateResponse == null ? const CircularProgressIndicator() :
            Text("${classesOfDateResponse!.data!.map((e) => e.toJson()).toList()}"),*/

            classesOfDateResponse == null
                ? const CircularProgressIndicator()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: classesOfDateResponse!.data!.length,
                    itemBuilder: (context, index) {
                      //  print("&&&&&&&&&&&&&&&&&${classesOfDateResponse!.data![index].name}");
                      return Text(classesOfDateResponse!
                          .data![index].categoryName
                          .toString());
                    },
                  ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext buildContext) => const RazorPayData()));
              },
              child: const Chip(label: Text("Next Page")),
            ),
          ],
        ),
      ),
    );
  }
}

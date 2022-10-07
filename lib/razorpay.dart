import 'package:demo_api_retrofit/repository/api_repository.dart';
import 'package:flutter/material.dart';

import 'models/razorpay_models.dart';

class RazorPayData extends StatefulWidget {
  const RazorPayData({Key? key}) : super(key: key);

  @override
  State<RazorPayData> createState() => _RazorPayDataState();
}

class _RazorPayDataState extends State<RazorPayData> {
  RazorPayModel? razorPayModel;
  CustomerDataRequest? customerDataRequest;
  CustomerDataResponse? customerDataResponse;
  APIRepository apiRepository = APIRepository();

  @override
  void initState() {
    super.initState();
    _getRezorPay();
    _postData();
  }

  _getRezorPay() async {
    razorPayModel =
        await apiRepository.razorData('Basic cnpwX3Rlc3RfUWlaWlZpNkNMNWVHTjE6S1oyelVWRzFBQ0xKOThwekp5V0tKb3dl');

    setState(() {});
    print(razorPayModel!.toJson());
  }

  _postData() async {
    CustomerData customerData = CustomerData(contact: '+78478657864', name: 'Krupa', email: 'krupa@gmail.com');
    Notify notify = Notify(email: false, sms: false);
    CustomerDataRequest customerDataRequest = CustomerDataRequest(
      amount: 100,
      currency: 'INR',
      notify: notify,
      customer: customerData,

      description: 'descriptionValue',
      callback_method: 'get',
    );

    customerDataResponse = await apiRepository.razorDataPost(
        'Basic cnpwX3Rlc3RfUWlaWlZpNkNMNWVHTjE6S1oyelVWRzFBQ0xKOThwekp5V0tKb3dl', customerDataRequest);

    setState(() {});
    print("++++++++++++++++++++++++++++${customerDataResponse!.toJson()}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RazorPay'),
        ),
        body: Column(
          children: [
            razorPayModel == null
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: razorPayModel!.paymentLinks!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(
                        razorPayModel!.paymentLinks![index].customer!.name ?? '000000',
                        style: TextStyle(color: Colors.red),
                      );
                    }),
            const SizedBox(height: 20),
            customerDataResponse == null
                ? const Center(child: CircularProgressIndicator())
                : Text(customerDataResponse!.customer!.name.toString())
          ],
        ));
  }
}

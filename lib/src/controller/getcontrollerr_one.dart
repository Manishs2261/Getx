import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt count = 1.obs;
  RxBool notification = false.obs;

  incrementCounter(){
    count.value++;
  }


  setNotification(bool value){

    notification.value = value;

  }

}
import 'package:get/get.dart';
import 'home_container_item_model.dart';
import 'package:eduz/core/app_export.dart';
class HomeContainer1Model {
  Rx<List<HomeContainerItemModel>> homeContainerItemList =
      Rx(
          [ HomeContainerItemModel(id: null, image: Rx(ImageConstant.imgRectangle4163130x130), kindergartensTxt: Rx("KINDERGARTENs")),
      HomeContainerItemModel(id: null, image: Rx(ImageConstant.imgRectangle41632 ), kindergartensTxt: Rx("UNIVERSITIES")),
  HomeContainerItemModel(id: null, image: Rx(ImageConstant.imgRectangle41631), kindergartensTxt: Rx("TEACHERS")),
  HomeContainerItemModel(id: null, image: Rx(ImageConstant.imgRectangle4163), kindergartensTxt: Rx("SCHOOLS")),
  HomeContainerItemModel(id: null, image: Rx(ImageConstant.specialNeed), kindergartensTxt: Rx("SPECIAL NEEDS")),
  HomeContainerItemModel(id: null, image: Rx(ImageConstant.imgRectangle4163), kindergartensTxt: Rx("EDU CENTERS")),
          ]
  );
}

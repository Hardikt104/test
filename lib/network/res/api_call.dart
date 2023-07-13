part of base_network;

class ApiCall {
  static final _apiNet = Get.find<ApiNet>();

  static Future<List<Adventures>> getList(int offset) async {
    final query = {
      "limit": "10",
      "offset": "$offset",
    };

    final result = await _apiNet.generalGet(ApiConst.adventures, query: query);
    if (result != null) {
      Map<String, dynamic> map = result;
      '${map[ApiConst.count]}'.toHttpLog;
      '${map[ApiConst.next]}'.toHttpLog;
      final data = map[ApiConst.data] as List?;
      if (data?.isNotEmpty == true) {
        return data!.map<Adventures>((e) => Adventures.fromJson(e)).where((element) {
          return element.contents?.isNotEmpty == true;
        }).toList();
      } else {
        return <Adventures>[];
      }
    } else {
      return <Adventures>[];
    }
  }
}

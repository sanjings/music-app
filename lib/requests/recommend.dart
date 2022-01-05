import '../utils/http.dart';

/*
 * 获取banner图列表
 **/
httpGetBanner() async {
  return await Http().get('/banner', data: {'type': 2});
}

# JSONResponseSerializer
主要是解决了AFNetworking请求接口后，后台将一些日志输出到返回的数据，导致工作台看不到错误信息的问题。

使用步骤：
1、将JSONResponseSerializerWithData解析类放入文件中
2、在使用的时候
  AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
  manager.responseSerializer = [JSONResponseSerializerWithData serializer];


import 'package:charge_point_app/share_preference/user_data.dart';
import 'package:grpc/grpc.dart';

class AuthenticationInterceptor extends ClientInterceptor {

  
  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request, CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    
    
    if (UserData.token != null){
      var newOptions = options.mergedWith(
       CallOptions(
        metadata: <String, String>{
          'token': UserData.token!,
        }
       )
      );
      return invoker(method, request, newOptions);
    }
    
    return invoker(method, request, options);
  }
  
}
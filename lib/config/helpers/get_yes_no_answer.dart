

import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infraestructere/models/yes_no_model.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async{
    
    final response = await _dio.get('https://yesno.wtf/api');
    
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    // final respuesta = Message(
    //   text: yesNoModel.answer, 
    //   fromWho: FromWho.other,
    //   imageUrl: yesNoModel.image);

      return yesNoModel.toMessageEntity();
  }
}
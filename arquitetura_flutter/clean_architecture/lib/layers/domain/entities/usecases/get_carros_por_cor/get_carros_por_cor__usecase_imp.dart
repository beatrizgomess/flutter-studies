import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/entities/usecases/get_carros_por_cor/get_carros_por_cor_usescases.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'AUE394', qtdPortas: 4, valor: 50000.00);
    } else {
      return CarroEntity(placa: 'FAS455', qtdPortas: 2, valor: 20000.00);
    }
  }
}

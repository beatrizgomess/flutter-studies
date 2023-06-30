import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/entities/usecases/get_carros_por_cor/get_carros_por_cor__usecase_imp.dart';
import 'package:clean_architecture/layers/domain/entities/usecases/get_carros_por_cor/get_carros_por_cor_usescases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instância de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('azul');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando passado a cor vermelha', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('vermelho');
    expect(result.qtdPortas, 4);
  });

  test('Deve retornar um carro qualquer cor exceto vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('verde');
    expect(result.qtdPortas, 2);
  });
}

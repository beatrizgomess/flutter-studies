import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/entities/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_architecture/layers/domain/entities/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carroEntity = CarroEntity(placa: 'HFS321', qtdPortas: 4, valor: 1);

    var result = await useCase(carroEntity);

    expect(result, true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a zero',
      () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carroEntity = CarroEntity(placa: 'HFS321', qtdPortas: 4, valor: 0);

    var result = await useCase(carroEntity);

    expect(result, false);
  });
}

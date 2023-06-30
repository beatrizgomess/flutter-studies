import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entitidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'HJF532', qtdPortas: 4, valor: 50000.00);
    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'HJF532', qtdPortas: 2, valor: 50000.00);
    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor seja 2000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'HJF532', qtdPortas: 2, valor: 1000.00);
    var resultadoEsperado = 2000.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor seja 0.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'HJF532', qtdPortas: 0, valor: 50000.00);
    var resultadoEsperado = 0.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });
}

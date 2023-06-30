//OCP nos informa que devemos ser capazes de extender um comportamento de classe, sem modificá-lo.

class Pagamento{
  void pagarBoleto() => print('pagando boleto');
  void pagarImposto()=> print('pagando imposto');
}

/*
E se precisar um novo tipo de pagamento? Desta forma estamos sujeitos a modificar nosso codigo já em produção.
Esta alteração ira gerar um novo binário para lugares onde não necessita deste novo pagamento.

Solução:
Como solução devemos ser capazes de extender o funcionamento da nossa classe de pagamento ou seja "Pagar", porem sem modificar a classe existente.

*/


//Solução: Contrato de pagamento - Separou as classes de formas de pagamento e fechou todas elas
//Estas classes só seram alterados se a lógica de pagamento mudar
abstract class Pagamento2{
  int valor = 20;
  void pagar();
}

//Na extensão reutilizamos o valor
class PagamentoBoleto extends Pagamento2{
  @override
  void pagar() => print('Pagando boleto $valor');
}

//Na herança re-implementamos o valor
class PagamentoImposto implements Pagamento2{
  @override
  int valor = 10;

  @override
  void pagar() => print('Pagando imposto $valor');

}

class PagamentoCartao extends Pagamento2{
  @override
  void pagar() => print('Pagando cartao');

}
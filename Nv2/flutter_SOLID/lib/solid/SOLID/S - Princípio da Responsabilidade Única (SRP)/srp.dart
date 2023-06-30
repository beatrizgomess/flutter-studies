//Uma classe deve ter apenas um motivo para mudar
//Sua responsabilidade é sempre em cima de um e apenas um ator

class ContaCorrente{ 
  valiarContaExiste(){
    //logica crucial de negocio
  }

  salvaModificacoes(){
    print('salvando no db...');
  }
}
  /*
    O método salvar modificações não é para estar dentro da classe 
    conta corrente, pois a sua função se relaciona com db, o que não tem nada
    a ver com a classe ContaCorrente()

    Solução: Devemos separar cada responsabilidade para sua regra de negocio crucial,
    um objeto não pode e deve fazer mais do que é o domínio dele.

    Lembre-se: Sua funcionalidade, não importa a granularidade (pacote/modulo/classe/metodo/função)
    não deve fazer o que não é proposto, normalmente um Funcionario não deve ser capaz de adicionar
    um produto em seu domínio, um Produto não deve ser capaz de exercer controle sobre o banco de dados, um pacote que diz que faz A não deve fazer B.
  */

  //Funções de DATABASE não devem estar nesta classe
  //Essas funções podem estar em uma classe Repository

  class ContaCorrenteRepository{
    void save() => print('salvando no db...');
  }

  class ContaCorrente2{
    ContaCorrenteRepository _repository = new ContaCorrenteRepository();
  
    validarContaExiste(){
      //logica
    }

    void salvarModificacoes(){
      _repository.save();
    }
  }




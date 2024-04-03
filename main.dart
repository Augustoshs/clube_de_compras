class Usuario {
  int id;
  String username;
  String email;
  String _senha;
  String telefone;

  Usuario(this.id, this.username, this.email, this._senha, this.telefone);

  Usuario.criarConta(String username, String email, String senha, String telefone)
      : this(0, username, email, senha, telefone);

  void listarUsuario() {
    print('Usuário:');
    print('ID: $id');
    print('Nome de Usuário: $username');
    print('Email: $email');
    print('Telefone: $telefone');
  }

  void trocarSenha(String novaSenha) {
    _senha = novaSenha;
    print('Senha alterada com sucesso!');
  }

  void fazerLogin(String senha) {
    if (_senha == senha) {
      print('Login efetuado com sucesso!');
    } else {
      print('Senha incorreta!');
    }
  }

  void excluirConta() { print('Conta excluída com sucesso!'); }
}

class Admin {
  int idAdmin;
  String setor;

  Admin(this.idAdmin, this.setor);

  void listarAdmin() {
    print('Admin:');
    print('ID: $idAdmin');
    print('Setor: $setor');
  }
}

void main() {
  print("--------------------");

  var usuario = Usuario();

  usuario.criarConta("Augusto", "augusto@gmail.com", "123456", "999999999");
  usuario.listarUsuarios();

  usuario.trocarSenha("Augusto", "123456");

  usuario.fazerLogin("Augusto", "123456");

  usuario.excluirConta("Augusto");

  print("--------------------");

  var admin = Admin();
  admin.alterarInfo(1, "TI");
  admin.listarAdmins();

  print("--------------------");

  var cartao = Cartao();
  cartao.criarCartao("Cartão de Crédito");
  cartao.listarCartoes();
  cartao.alterarImagem();
  cartao.deletarCartao(1);
  cartao.editarCartao(1, "Cartão de Débito");
  cartao.gerarQRCode();

  print("--------------------");

  var empresa = Empresa();
  empresa.criarConta("Empresa X", "9999999");
  empresa.listarEmpresas();
  empresa.alterarInfoEmpresa("Empresa Y", "999998");
  empresa.listarEmpresas();
}

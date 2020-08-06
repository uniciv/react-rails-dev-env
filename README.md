# 1 - Configurando o ambiente para o stack React + Rails 

Esse é um arquivo de configuração do Vagrant para automação do ambiente de desenvolvimento de aplicações baseadas no Stack React + Ruby on Rails

Antes de executar a configuração do ambiente, você deve seguir os passos abaixo, de acordo com o seu sistema operacional(Windows, OSX, Linux):


* 1 - Baixe e instale o  [VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds_5_2)

* 2 - Baixe e instale o  [Vagrant](https://www.vagrantup.com/downloads.html)

* 3 - Caso ainda não tenha [Git](https://git-scm.com/downloads) instalado. Se o Git já estiver instalado no seu computador, então você não precisa instalar novamente.

# 2 - Clone esse repositorio no seu computador:

In order to setup the development virtual machine, you'll need to clone this repository in your local machine by running the command:
Para configurar o ambiente de desenvolvimento virtual, você precisará clonar esse repositório em seu computador local, executando o seguinte comando no terminal:

```console
$ git clone https://github.com/uniciv/react-rails-dev-env
```

# 3 - Execute o script de configuração:

Após clonar o repositório, você precisará navegar para a pasta onde o repositório foi clonado, onde está localizado o arquivo **Vagrantfile** e executar o seguinte comando no terminal:

```console
$ vagrant up --provision
```

NOTA: Esse processo pode levar até uma hora dependendo da velocidade da sua Internet. Porém esse processo é executado apenas uma vez por computador;

# 4 - Finalizando a configuração e fazendo login:
Após o download e configuração da máquina, você precisará entrar na máquina virtual via protocolo **SSH** . O openSSH já deve estar instalado no seu computador quando você fez o download do Vagrant. Sendo assim, basta executar o comando abaixo. OBS: Não é necessário senha para fazer login, visto que , durante o processo de provisionamento da máquina virtual, uma chave publica é disponibilizada para fazer login automaticamente.

```console
$ vagrant ssh
```
## Para Usuários Windows APENAS!!!!
Caso o comando acima não funcione, basta fazero download do OpenSSH de acordo com a arquitetura do seu computador. Clique [AQUI](https://github.com/PowerShell/Win32-OpenSSH/releases) para fazer download do OpenSSH.


# 5 - Navegando:
Após fazer login, você precisa navegar para o diretoróio **/vagrant_data/code**, pois esse diretório dentro da máquina virtual está compartilhado com a raiz da pasta que você clonou no Github. Logo, qualquer arquivo que estiver na pasta da máquina virtual, você pode acessar com o seu editor de texto ou IDE, apenas abrindo a raiz da pasta que você clonou. 

```console
$ cd /vagrant_data/code
```

Em caso de dúvidas, envie um email para **pfpmessias@gmail.com**


# 1 - Configurando o ambiente para o stack React + Rails 

Esse é um arquivo de configuração do Vagrant para automação do ambiente de desenvolvimento de aplicações baseadas no Stack React + Ruby on Rails

Antes de executar a configuração do ambiente, você deve seguir os passos abaixo, de acordo com o seu sistema operacional(Windows, OSX, Linux):


* 1 - Baixe e instale o  [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

* 2 - Baixe e instale o  [Vagrant](https://www.vagrantup.com/downloads.html)

* 3 - Caso ainda não tenha [Git](https://git-scm.com/downloads) instalado. Se o Git já estiver instalado no seu computador, então você não precisa instalar novamente.

# 2 - Clone esse repositorio no seu computador:

In order to setup the development virtual machine, you'll need to clone this repository in your local machine by running the command:

```console
$ git clone https://github.com/uniciv/react-rails-dev-env
```

# 3 - Run the setup script:

After cloning the repository, you need to navigate inside the folder where the repository has been cloned and run the setup with the following command:

```console
$ vagrant up --provision
```

# 4 - Finishing setup and logging in:
After the downloading process of the box and setting up (something about 30 minutes depending on your Internet connection) you can SSH into the machine with the command:

```console
$ vagrant ssh
```

After logging in, you can navigate to the "cd /vagrant_data/code" which is your default shared folder: Everything inside /code will be present in the root directory where the Vagrantifle is. Then  you can use any text editor or IDE you like to create your Chef Cookbooks

In case of inquiries, you can email me at [pfpmessias@gmail.com] or open an issue.

# 5 - Generating Cookbooks
In order to start developing your own Cookbooks, you must first scaffold a cookbook with the command:

```console
$ chef generate cookbook YOUR-COOKBOOK-NAME-GOES-HERE-WITHOUT-SINGLE-OR-DOUBLE-QUOTES
```

After running the generator, you can navigate into the folder with your cookbook name and list the content with the command below:


```console
$ ls -lh
```

In order to develop Chef cookbooks you must follow the [documentation in this link](https://docs.chef.io/cookbooks.html)



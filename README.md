# Netflix Clone - Flutter

## Descrição do Projeto

Este projeto é um **clone da interface da Netflix** desenvolvido em **Flutter**. Ele utiliza **Device Preview** para simular a aparência em diferentes dispositivos, incluindo smartphones e tablets. O aplicativo exibe um banner de destaque e listas horizontais de filmes e séries, permitindo organizar o conteúdo por categorias como "Populares na Netflix", "Minha Lista" e "Séries Recomendadas".

O objetivo é praticar o desenvolvimento de interfaces responsivas, manipulação de imagens locais (assets) e listas horizontais em Flutter.

---

## Funcionalidades

- Banner principal com **imagem em destaque**.
- **Listas horizontais** de filmes e séries organizadas por categorias.
- Suporte a **imagens locais** armazenadas na pasta `assets/images/`.
- **Device Preview** para visualização em múltiplos dispositivos.
- Tema escuro inspirado na interface da Netflix.
- Layout responsivo e moderno com **bordas arredondadas** e **gradientes** sobre os banners.

---

## Tecnologias Utilizadas

- [Flutter](https://flutter.dev/) - Framework para desenvolvimento mobile.
- [Dart](https://dart.dev/) - Linguagem de programação do Flutter.
- [Device Preview](https://pub.dev/packages/device_preview) - Plugin para pré-visualização em dispositivos diferentes.
- Assets locais para imagens (`assets/images/`).

---

## Estrutura do Projeto
atividade1_tela_aplicativo/
├─ android/                  # Configurações e arquivos do build Android
├─ ios/                      # Configurações e arquivos do build iOS
├─ lib/                      # Código fonte principal do Flutter
│   └─ main.dart             # Arquivo principal com toda a lógica de UI
├─ assets/
│   └─ images/               # Imagens utilizadas no aplicativo
│       ├─ destaque.webp
│       ├─ O1.webp
│       ├─ O2.webp
│       ├─ O3.webp
│       ├─ O4.webp
│       ├─ O5.webp
│       ├─ O6.webp
│       ├─ O7.webp
│       ├─ O8.webp
│       ├─ O9.webp
│       ├─ O10.webp
│       ├─ O12.jpg
│       ├─ O13.jpg
│       ├─ O14.webp
│       └─ O16.jpg
├─ test/                     # Testes unitários e de widget
│   └─ widget_test.dart
├─ pubspec.yaml              # Dependências e assets do projeto
├─ pubspec.lock              # Controle de versões das dependências
├─ README.md                 # Descrição do projeto
├─ .gitignore                # Arquivos/pastas ignorados pelo Git
├─ .metadata                 # Metadata do Flutter
├─ .packages                 # Referências de pacotes do Flutter
└─ flutter_export_environment.sh # Ambiente de exportação do Flutter (gerado automaticamente)
---

## Como Executar

1. Clone o repositório:
git clone https://github.com/seu-usuario/atividade1_tela_aplicativo.git
2. Navegue até a pasta do projeto:
cd atividade1_tela_aplicativo
3.Instale as dependências:
flutter pub get
4.Execute o projeto:
flutter run

5. Para usar o Device Preview, basta manter o aplicativo em modo debug.
Observações
- Todas as imagens estão armazenadas localmente na pasta assets/images/.
- É importante manter o caminho correto no pubspec.yaml para que os assets sejam carregados corretamente.
- O projeto utiliza tema escuro e listas horizontais, mas não possui funcionalidades de reprodução de vídeos ou autenticação de usuários.

  
Licença
Este projeto está sob a licença MIT. Consulte o arquivo LICENSE para mais informações.
Se você quiser, eu posso **adaptar o README com imagens de exemplo** mostrando o banner de destaque e as listas horizontais para deixar o GitHub mais visual e profissional.  




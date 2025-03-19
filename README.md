# ReadFileFromBundle

Este é um projeto simples para iOS que demonstra como ler e exibir o conteúdo de um arquivo de texto que está localizado dentro do pacote do aplicativo (bundle). O arquivo de texto é lido quando a aplicação é carregada e seu conteúdo é exibido em uma `UILabel`.

## Funcionalidades

- Carrega um arquivo de texto do bundle do aplicativo.
- Exibe o conteúdo do arquivo em uma `UILabel` na interface do usuário.
- Demonstra o uso das APIs `Bundle.main` e `String(contentsOfFile:)` para ler arquivos no iOS.

## Requisitos

- **Xcode 14.0** ou superior
- **iOS 16.0** ou superior

## Instruções para Executar

1. Clone este repositório no seu computador:

    ```bash
    git clone https://github.com/seu-usuario/ReadFileFromBundle.git
    ```

2. Abra o projeto no **Xcode**.

3. Certifique-se de que o **Deployment Target** está configurado para **iOS 16.0** (isso pode ser feito na aba "General" do seu target no Xcode).

4. O arquivo de texto chamado **"json-placeholder.txt"** deve estar dentro do seu projeto (no **Bundle**). Este arquivo será lido quando o aplicativo for carregado.

5. **Compile e execute** o aplicativo em um simulador ou dispositivo com iOS 16.0 ou superior.

6. Quando o aplicativo for iniciado, o conteúdo do arquivo de texto será exibido na tela, dentro de uma `UILabel`.

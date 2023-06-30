# Imagem base com Flutter SDK
FROM cirrusci/flutter AS builder

# Definir um usuário não root
ARG USER=myuser
ARG UID=1000
ARG GID=1000
RUN addgroup --gid $GID $USER && \
    adduser --disabled-password --gecos '' --uid $UID --gid $GID $USER

# Definir o diretório de trabalho
WORKDIR /project_flutter_nv1

# Copiar arquivos de definição de dependências
COPY pubspec.* ./

# Alternar para o usuário não root
USER $USER

# Definir a propriedade correta do diretório /sdks/flutter
RUN chown -R $USER:$USER /sdks/flutter

# Adicionar exceção para o diretório /sdks/flutter
RUN git config --global --add safe.directory /sdks/flutter

# Baixar as dependências do Flutter
RUN flutter pub get

# Copiar o restante do código
COPY . .

# Compilar o aplicativo Flutter
RUN flutter build apk --release

# Etapa final da imagem
FROM ubuntu:latest

# Instalar o OpenJDK 11 e o ADB
RUN apt-get update && apt-get install -y openjdk-11-jre-headless android-tools-adb

# Copiar o APK do estágio de compilação anterior
COPY --from=builder /project_flutter_nv1/build/app/outputs/apk/release/app-release.apk /app/app-release.apk

# Definir o usuário não root como proprietário do diretório
RUN chown -R $USER:$USER /app

# Definir o usuário não root como usuário padrão
USER $USER

# Definir o comando de execução padrão para instalar e executar o APK do aplicativo Flutter
CMD adb install -r /app/app-release.apk && adb shell am start -n <app-nv1>/<basic-app-nv1>

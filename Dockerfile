FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app
COPY . .

# Kiểm tra phiên bản Flutter
RUN flutter --version

# Chạy pub get
RUN flutter pub get

# Build Android APK và AAB
RUN flutter build apk --release
RUN flutter build appbundle --release

CMD ["flutter", "doctor"]

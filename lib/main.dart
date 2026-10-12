// ==========================================
// ARCHIVO: analysis_options.yaml[span_0](start_span)[span_0](end_span)[span_1](start_span)[span_1](end_span)[span_2](start_span)[span_2](end_span)[span_3](start_span)[span_3](end_span)[span_4](start_span)[span_4](end_span)
// ==========================================
include: package:flutter_lints/flutter.yaml
linter:
  rules:
    # avoid_print: false
    # prefer_single_quotes: true

// ==========================================
// ARCHIVO: Info.plist[span_5](start_span)[span_5](end_span)
// ==========================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>IDEDidComputeMac32BitWarning</key>
    <true/>
</dict>
</plist>

// ==========================================
// ARCHIVO: Warnings.xcconfig[span_6](start_span)[span_6](end_span)[span_7](start_span)[span_7](end_span)[span_8](start_span)[span_8](end_span)
// ==========================================
WARNING_CFLAGS = -Wall -Wconditional-uninitialized -Wnullable-to-nonnull-conversion -Wmissing-method-return-type -Woverlength-strings
GCC_WARN_UNDECLARED_SELECTOR = YES
CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY = YES
CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE
CLANG_WARN_DUPLICATE_METHOD_MATCH = YES
CLANG_WARN_PRAGMA_PACK = YES
CLANG_WARN_STRICT_PROTOTYPES = YES
CLANG_WARN_COMMA = YES
GCC_WARN_STRICT_SELECTOR_MATCH = YES
CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK = YES
CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES
GCC_WARN_SHADOW = YES
CLANG_WARN_UNREACHABLE_CODE = YES

// ==========================================
// ARCHIVO: gradle-wrapper.properties[span_9](start_span)[span_9](end_span)
// ==========================================
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
distributionUrl=https://services.gradle.org/distributions/gradle-9.1.0-all.zip

// ==========================================
// ARCHIVO: Generated Environment[span_10](start_span)[span_10](end_span)[span_11](start_span)[span_11](end_span)
// ==========================================
FLUTTER_ROOT=/opt/flutter
FLUTTER_APPLICATION_PATH=/usr/projects/1bee0229-139a-4eaa-8322-c19a66f5252f/eleven
FLUTTER_FRAMEWORK_SWIFT_PACKAGE_PATH=/usr/projects/1bee0229-139a-4eaa-8322-c19a66f5252f/eleven/macos/Flutter/ephemeral/Packages/.packages/FlutterFramework
COCOAPODS_PARALLEL_CODE_SIGN=true
FLUTTER_BUILD_DIR=build
FLUTTER_BUILD_NAME=1.0.0
FLUTTER_BUILD_NUMBER=1
DART_OBFUSCATION=false
TRACK_WIDGET_CREATION=true
TREE_SHAKE_ICONS=false
PACKAGE_CONFIG=.dart_tool/package_config.json

// ==========================================
// ARCHIVO: CMakeLists.txt (Runner)[span_12](start_span)[span_12](end_span)[span_13](start_span)[span_13](end_span)[span_14](start_span)[span_14](end_span)[span_15](start_span)[span_15](end_span)
// ==========================================
cmake_minimum_required(VERSION 3.13)
project(runner LANGUAGES CXX)
add_executable(${BINARY_NAME} "main.cc"
  "flutter_window.cc"
  "run_loop.cc"
  "utils.cc"
  "${FLUTTER_MANAGED_DIR}/generated_plugin_registrant.cc"
)
apply_standard_settings(${BINARY_NAME})
add_definitions(-DAPPLICATION_ID="${APPLICATION_ID}")
target_link_libraries(${BINARY_NAME} PRIVATE PkgConfig::GTK)
target_include_directories(${BINARY_NAME} PRIVATE "${CMAKE_SOURCE_DIR}")

// ==========================================
// ARCHIVO: widget_test.dart[span_16](start_span)[span_16](end_span)[span_17](start_span)[span_17](end_span)
// ==========================================
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:eleven/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

// ==========================================
// ARCHIVO: AppInfo.xcconfig[span_18](start_span)[span_18](end_span)[span_19](start_span)[span_19](end_span)
// ==========================================
PRODUCT_NAME = eleven
PRODUCT_BUNDLE_IDENTIFIER = com.example.eleven
PRODUCT_COPYRIGHT = Copyright © 2026 com.example. All rights reserved.

// ==========================================
// ARCHIVO: settings.gradle[span_20](start_span)[span_20](end_span)[span_21](start_span)[span_21](end_span)
// ==========================================
pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val flutterSdkPath = properties.getProperty("flutter.sdk")
        require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
        flutterSdkPath
    }
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.11.1" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
}
include(":app")

// ==========================================
// DESCRIPCIÓN: Marketplace App[span_22](start_span)[span_22](end_span)[span_23](start_span)[span_23](end_span)[span_24](start_span)[span_24](end_span)
// ==========================================
/*
Marketplace App: Una aplicación de compra y venta moderna y ágil que reimagina la experiencia de Facebook Marketplace.
- Enfoque: Marketplace multirubro general (ropa, tecnología, hogar, vehículos y servicios).
- Registro de perfil: Flujo guiado con pantalla dedicada para foto de perfil, nombre, edad y ubicación.
- Contacto y compra: Modal emergente rápido con mensaje predeterminado ('¿Sigue disponible?') y oferta personalizada hacia el chat.
- Publicación: Botón 'Vender' para fotos, nombre, precio, categoría y ubicación.
- Estilo visual: Fondo claro (#F8FAFC), acentos verde esmeralda (#059669), esquinas suaves (14-16px) y tipografía Plus Jakarta Sans.
*/

// ==========================================
// ARCHIVO: gradle.properties[span_25](start_span)[span_25](end_span)[span_26](start_span)[span_26](end_span)
// ==========================================
org.gradle.jvmargs=-Xmx8G -XX:MaxMetaspaceSize=4G -XX:ReservedCodeCacheSize=512m -XX:+HeapDumpOnOutOfMemoryError
android.useAndroidX=true
android.newDsl=false
android.builtInKotlin=false

// ==========================================
// ARCHIVO: build.gradle (Root)[span_27](start_span)[span_27](end_span)[span_28](start_span)[span_28](end_span)
// ==========================================
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)
subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}


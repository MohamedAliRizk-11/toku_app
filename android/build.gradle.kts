allprojects {
repositories {
google()
mavenCentral()
}
}

val newBuildDir: Directory =
rootProject.layout.buildDirectory
.dir("../../build")
.get()

rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
project.layout.buildDirectory.value(newSubprojectBuildDir)


project.plugins.withId("com.android.application") {
    project.extensions.configure<com.android.build.gradle.AppExtension> {
        compileOptions {
            sourceCompatibility = JavaVersion.VERSION_21
            targetCompatibility = JavaVersion.VERSION_21
        }
    }
}

project.plugins.withId("com.android.library") {
    project.extensions.configure<com.android.build.gradle.LibraryExtension> {
        compileOptions {
            sourceCompatibility = JavaVersion.VERSION_21
            targetCompatibility = JavaVersion.VERSION_21
        }
    }
}

project.plugins.withId("org.jetbrains.kotlin.android") {
    project.tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
        compilerOptions {
            jvmTarget.set(
                org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_21
            )
        }
    }
}
}

subprojects {
project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
delete(rootProject.layout.buildDirectory)
}

plugins {
    id 'java'
    id 'net.neoforged.gradle.userdev' version '[6.0.32,6.2)'
}

version = '1.0.0'
group = 'com.example'

java.toolchain.languageVersion = JavaLanguageVersion.of(21)

repositories {
    mavenCentral()
    maven { url = 'https://maven.neoforged.net/releases' }
    maven { url = 'https://maven.neoforged.net/snapshots' }
}

dependencies {
    implementation 'net.neoforged:neoforge:21.1.+'

    // Opcional: Agregar MCA Reborn como dependency si quieres compilar contra su API
    // compileOnly fg.deobf('com.github.path:mca-reborn:version:universal')
}

tasks.named('jar', Jar).configure {
    archiveBaseName = 'mca-concubines'
    manifest {
        attributes([
                'Specification-Title'      : 'MCA Concubines',
                'Specification-Vendor'     : 'YourName',
                'Specification-Version'    : '1',
                'Implementation-Title'     : project.name,
                'Implementation-Version'   : project.jar.archiveVersion,
                'Implementation-Vendor'    : 'YourName'
        ])
    }
}

sourceSets.main.resources {
    srcDir 'src/main/resources'
}

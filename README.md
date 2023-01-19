API TEST OTOMASYONU PROJESİ

Bu proje API otomasyon projesidir.

#Tool stack
* Karate Framework
* Maven
* Java/Javascript
* Cucumber reporting
* Jenkins pipeline
* IntelliJ IDEA Community Edition(or Ultimate)

# Links

* <a href="">Project Git Repository</a>
* <a href="https://github.com/karatelabs/karate">Karate Github Page</a>
* <a href="https://cucumber.io/docs/gherkin/reference/">Gherkin Syntax Reference</a>
* <a href="https://seffaflik.epias.com.tr/transparency/technical/tr/">API Dökümantasyon</>
* <a herf="https://seffaflik.epias.com.tr/transparency/technical/swagger.json">Swagger</>


# Projenin Localde kurulması
* Command line ya da IDE terminalinden proje git url'i ile proje locale alınır.

  ``git clone ``

# Testlerin çalıştırılması
1. IDE üzerinden yeşil RUN butonuna basılarak senaryo ya da feature bazlı çalıştırılır.
2. JUnit runner üzerinden belirlenen senaryolar yine yeşil RUN butonuna basılarak çalıştırılır.
3. Command line üzerinden

   `mvn clean test -Dtest=RunnerName "-Dkarate.options=--tags @tagName"`

komutuyla istenilen runner class ve tagname yazılarak çalıştırılır.

4. API testini performans testi olarak çalıştırmak istersek

   ``mvn test-compile gatling:test -Dgatling.simulationClass=performanceRunners.APISimulation -D userCount=5 -D duration=10 -D constantDuration= 10 -D constantUser= 5``

komutu çalıştırılmalıdır. Class name yerine hangi class koşacak ise o class name yazılmalıdır.




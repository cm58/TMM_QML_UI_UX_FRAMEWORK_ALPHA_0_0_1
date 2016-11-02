#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QProcess>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/_files_qml/instantiationTest.qml")));

    QProcess process1;
    QProcess process2;

    process1.start("cd ./_files_3rdParty/");
    process2.start("bash run.sh");
    return app.exec();
}

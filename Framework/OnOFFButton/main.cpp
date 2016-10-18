#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/1.qml")));
    //engine.load(QUrl(QStringLiteral("qrc:/2.qml")));
    //engine.load(QUrl(QStringLiteral("qrc:/3.qml")));

    return app.exec();
}

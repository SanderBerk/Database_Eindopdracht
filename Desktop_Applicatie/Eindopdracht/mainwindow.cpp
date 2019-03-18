#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow)
{
    {
        db = QSqlDatabase::addDatabase("QMYSQL");
        db.setHostName("Localhost");
        db.setPort(3306);
        db.setUserName("QT");
        db.setPassword("password");
        db.setDatabaseName("dab2-formule1");
        if(db.open()){
            qDebug() << "DB connected";
        }else{
            QSqlError err = db.lastError();
            qDebug() << "Database:  " << err.databaseText();
            qDebug() << "Driver:  " << err.driverText();
            qDebug() << "Text:  " << err.text();

        }
    }
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
    db.close();
}

void MainWindow::on_Views_currentIndexChanged(const QString &arg1)
{
    if(arg1 != "-- Niks --"){
        QSqlQuery query(db);
        if(!query.exec("select * from " + arg1 + ";")){
           qDebug() << "Error";
        }else{
            QSqlQueryModel* model = new QSqlQueryModel();
            model->setQuery(query);
            model->removeColumn(2);
            ui->tableView->setModel(model);
            ui->tableView->show();
            ui->tableView->verticalHeader()->setVisible(false);
        }
    }
}

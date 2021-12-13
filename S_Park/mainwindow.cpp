#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->mot_de_passe_confirm->setEchoMode(QLineEdit::Password);
    ui->mot_de_passe->setEchoMode(QLineEdit::Password);
    ui->mot_de_passe_2->setEchoMode(QLineEdit::Password);
    ui->lineEdit_cin->setValidator(new QIntValidator(0,9999999,this));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_employe_login_clicked()
{
 l.setAdmin(false);
}

void MainWindow::on_admin_login_clicked()
{
  l.setAdmin(true);
}


void MainWindow::on_pushButton_2_clicked()
{
    QString username = ui->nom_utilateur->text();
    QString password = ui->mot_de_passe->text();

    if(l.getAdmin()==false)
    {
        login l(username,password);


        if (l.connecter())
            {

              hide();
              s.setModal(true);
              s.setAdmin_active(false);
              s.exec();
            }
        else
            QMessageBox::critical(nullptr, QObject::tr("Failure"),
                        QObject::tr("Connection echoue! Le mot de passe et le nom d'utilsateur sont incorrects.\n"
                                    "Click Cancel to exit."), QMessageBox::Cancel);
    }
    else
    {
        login l(username,password);

        if((username=="admin")&&(password=="admin"))
        {
            hide();
            s.setModal(true);
            s.setAdmin_active(true);
            s.exec();
        }
        else if(l.connecter())
        {
            hide();
            s.setModal(true);
            s.setAdmin_active(true);
            s.exec();
        }
        else
           QMessageBox::critical(nullptr, QObject::tr("Failure"),
                    QObject::tr("Connection echoue! Le mot de passe et le nom d'utilsateur est incorrect pour l'administateur.\n"
                                "Click Cancel to exit."), QMessageBox::Cancel);
    }

    ui->nom_utilateur->clear();
    ui->mot_de_passe->clear();
}

//bouton creer
void MainWindow::on_pushButton_4_clicked()
{
    l.setUsername(ui->nom_utilateur_2->text());
    l.setPassword(ui->mot_de_passe_2->text());
    QString con_password = ui->mot_de_passe_confirm->text();
    Personnel P;
    P.setCin(ui->lineEdit_cin->text().toInt());
       if(l.getPassword() == con_password )
       {
           if(l.creer_utilsateur(P.getCin()))
           {
               QMessageBox::information(nullptr, QObject::tr("Success"),
                           QObject::tr("Compte créer.\n"
                                       "Click Cancel to exit."), QMessageBox::Cancel);
           }
           else
            QMessageBox::critical(nullptr, QObject::tr("Failure"),
                        QObject::tr("Echec de la creation L'identifaint est incorrect.\n"
                                    "Click Cancel to exit."), QMessageBox::Cancel);

       }


       ui->nom_utilateur_2->clear();
       ui->mot_de_passe_2->clear();
       ui->mot_de_passe_confirm->clear();
       ui->lineEdit_cin->clear();
}

// bouton creer un compte
void MainWindow::on_pushButton_3_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);
}


//bouton retour
void MainWindow::on_pushButton_5_clicked()
{
    ui->stackedWidget->setCurrentIndex(0);
}



void MainWindow::on_pushButton_clicked()
{
    QString message;
    QSqlQuery q;
    QString username = ui->nom_utilateur_3->text();
    q.prepare("select password from gs_personnels where username =: username");
    q.bindValue(":username",username);
      if(q.exec())
      {
          while(q.next())
              message ="votre mot de passe est:" + q.value(0).toString();
      }

       QString subject = "S-park:Recuperation du mot de passe!";

    Smtp* smtp = new Smtp("gilleskouebou@gmail.com","26082409Madm", "smtp.gmail.com");
        connect(smtp, SIGNAL(status(QString)), this, SLOT(Mail_Envoyer(QString)));

            smtp->sendMail("gilleskouebou@gmail.com",ui->e_mail_2->text(),subject,message);


            ui->stackedWidget->setCurrentIndex(0);

}


void MainWindow::Mail_Envoyer(QString status)
{
    if(status == "Message sent")
        QMessageBox::information(nullptr, tr( "Qt Simple SMTP client" ), tr( "Message sent!\n\n" ) );
    ui->e_mail_2->clear();


}

void MainWindow::on_pushButton_6_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}

void MainWindow::on_pushButton_8_clicked()
{
     ui->stackedWidget->setCurrentIndex(0);
}
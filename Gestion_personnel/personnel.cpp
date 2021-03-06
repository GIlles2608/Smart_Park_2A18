#include "personnel.h"


Personnel::Personnel()
{
    this->nom = " ";
    this->prenom = " ";
    this->cin = 0;
    this->date_naissance = QDate();
    this->ville = " ";
    this->adresse = " ";
    this->age = 0;
    this->tel = 0;
}

Personnel::Personnel(QString n,QString p,int c,QDate d,QString v,QString ad,int ag,int t)
{
    this->nom = n;
    this->prenom = p;
    this->cin = c;
    this->date_naissance = d;
    this->ville = v;
    this->adresse = ad;
    this->age = ag;
    this->tel = t;
}


bool Personnel::ajouter()
{
 QSqlQuery query;
 QString res = QString::number(cin);
 QString ag_res = QString::number(age);
 QString t_res = QString::number(tel);
 //prepare() prend la requete en parametre pour la preparer a l'execution;

   query.prepare("insert into gs_personnels(nom,prenom,cin,date_naissance,age,ville,adresse,telephone)""values(:nom,:prenom,:cin,:date_naissance,:age,:ville,:adresse,:tel)");
 //creation des variable liees;
   query.bindValue(":cin",res);
   query.bindValue(":nom",nom);
   query.bindValue(":prenom",prenom);
   query.bindValue(":date_naissance",date_naissance);
   query.bindValue(":age",ag_res);
   query.bindValue(":ville",ville);
   query.bindValue(":adresse",adresse);
   query.bindValue(":tel",t_res);

   return query.exec(); //envoi la requete pour l'executer
}

QSqlQueryModel *Personnel::afficher()
{
  QSqlQueryModel * model = new QSqlQueryModel();
   model->setQuery("select * from gs_personnels");
   model->setHeaderData(0,Qt::Horizontal,QObject::tr("CIN"));
   model->setHeaderData(1,Qt::Horizontal,QObject::tr("Nom"));
   model->setHeaderData(2,Qt::Horizontal,QObject::tr("Prenom"));
   model->setHeaderData(3,Qt::Horizontal,QObject::tr("DateNaissance"));
   model->setHeaderData(4,Qt::Horizontal,QObject::tr("Age"));
   model->setHeaderData(5,Qt::Horizontal,QObject::tr("Telephone"));
   model->setHeaderData(6,Qt::Horizontal,QObject::tr("Adresse"));
   model->setHeaderData(7,Qt::Horizontal,QObject::tr("Ville"));

   return model;
}

//QString nom,QString prenom,int cin,QDate date_naissance,int age,QString ville,QString adresse,int tel)
bool Personnel::modifier(int cin)
{
  QSqlQuery query;
  QString res = QString::number(cin);
  QString ag_res = QString::number(age);
  QString t_res = QString::number(tel);
  query.prepare("Update gs_personnels set nom=:nom,prenom=:prenom,date_naissance=:date_naissance,age=:age,ville=:ville,adresse=:adresse,telephone=:tel where cin=:cin");
  query.bindValue(":cin",res);
  query.bindValue(":nom",nom);
  query.bindValue(":prenom",prenom);
  query.bindValue(":date_naissance",date_naissance);
  query.bindValue(":age",ag_res);
  query.bindValue(":ville",ville);
  query.bindValue(":adresse",adresse);
  query.bindValue(":tel",t_res);

  return query.exec();
}

bool Personnel::supprimer(int)
{
    QSqlQuery query;
    QString res = QString::number(cin);
    query.prepare("Delete from gs_personnels where cin = :cin");
    query.bindValue(":cin",res);

    return  query.exec();
}


QSqlQueryModel *Personnel::rechercher(QString q)
{
    QString res= QString::number(cin);
    QSqlQueryModel *model=new QSqlQueryModel();
     model->setQuery("SELECT * FROM gs_personnels  WHERE nom like '%"+q+"%'" );
   /*model->setHeaderData(0,Qt::Horizontal,QObject::tr("NUMFACTURE"));
     model->setHeaderData(1,Qt::Horizontal,QObject::tr("DATEFACTURE"));
     model->setHeaderData(2,Qt::Horizontal,QObject::tr("PRIXACHAT"));
     model->setHeaderData(3,Qt::Horizontal,QObject::tr("PRIXVENTE"));
     model->setHeaderData(4,Qt::Horizontal,QObject::tr("GAIN_PERTE"));*/

     return model;
}


QSqlQueryModel *Personnel::Trie_Nom_A()
{
    QSqlQueryModel * model = new QSqlQueryModel();
     model->setQuery("select * from gs_personnels order by nom,prenom ASC");

     return model;
}

QSqlQueryModel *Personnel::Trie_age_A()
{
    QSqlQueryModel * model = new QSqlQueryModel();
     model->setQuery("select * from gs_personnels order by age,date_naissance ASC");

     return model;
}

QSqlQueryModel *Personnel::Trie_Nom_D()
{
    QSqlQueryModel * model = new QSqlQueryModel();
     model->setQuery("select * from gs_personnels order by nom,prenom DESC");

     return model;
}

QSqlQueryModel *Personnel::Trie_age_D()
{
    QSqlQueryModel * model = new QSqlQueryModel();
     model->setQuery("select * from gs_personnels order by age,date_naissance DESC");

     return model;
}

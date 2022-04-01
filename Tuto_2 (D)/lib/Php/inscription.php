<?php
function insertion(){

    include "connexion.php";

    $name = filter_var($_POST['nom'], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
    $idd = filter_var($_POST['identifiant'], FILTER_SANITIZE_STRING);
    $prénom = filter_var($_POST['prenom'], FILTER_SANITIZE_STRING);
    $pass = filter_var($_POST['mdp'], FILTER_SANITIZE_STRING);

    try {
       if(isset($name, $email, $pass)){
           $req = $db->prepare("SELECT * FROM authentification WHERE mail=?");
           $req->execute(array($email));
           $exist = $req->rowCount();
           if($exist == 0){ // Si le nombre de lignes dans la bdd trouvé par le fruit de la requête $req est égal à 0
            // autrement dit, si l'email que l'utilisateur souhaite utiliser n'est pas déjà pris
            // le but de cette fonction est de déterminer si un mail, mdp ou nom est déja existant dans la bdd
               $req = $db->prepare("INSERT INTO authentification VALUES(null,?,?,?,?,?)");
                $req->execute(array($idd, $pass, $name, $prénom, $email));
                if($req){
                    $succes = true; // variable censée etre booleen signifiant succes =1 et succes = 0 en fonction de l'opération
                    $msg = "inscription réussit";
                }else{
                    $succes = false;
                    $msg = "erreur d'inscription";
                }
           }else{
               $msg = "ce mail est déjà existant";
               $succes = false;
           }
       }else{
          $succes = false;
          $msg = "veuillez remplir tous les champs"; 
       }
    } catch (\Throwable $th) {
       $succes = 0;
       $msg = "Error: ".$th->getMesage();
    }
    echo json_encode([
        "data"=>[
            'msgCome' => $msg,
            'success' => $succes
        ]
    ]);

}
?>
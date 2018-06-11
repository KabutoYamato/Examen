<?php 
    class examen_model extends CI_Model{
        public function __construct(){
            $this->load->database();
        }
        public function terminar_examen(){
            for($i = 1;$i <= 48;$i++){
                if($_SESSION['pregunta'.$i]['contestada']){

                }
            }
        }

        public function insert_pregunta($i){
            $data=array(
                "postulante" => $_SESSION['id'],
                "pregunta" => $i,
                "respuesta_1" => $_SESSION['pregunta'.$i]['respuestas']['respuesta_1'],
                "respuesta_2" => $_SESSION['pregunta'.$i]['respuestas']['respuesta_2']
            );
            $this->db->insert('examen',$data);
        }

    }
?>
<?php 
    class postulantes_model extends CI_Model{
        public function __construct(){
            $this->load->database();
        }

        public function set_postulante(){

            $data = array(
                'nombre' => $this->input->post('nombre'),
                'correo' => $this->input->post('correo'),
                'edad' => $this->input->post('edad'),
                'telefono' => $this->input->post('telefono')
            );

            return $this->db->insert('postulantes',$data);
        }
        
    }
?>
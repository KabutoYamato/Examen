<?php
    class preguntas_model extends CI_Model{
        public function _construct(){
            $this->load->database();
        }
        public function get_pregunta($id){
            $query = $this -> db ->get_where('preguntas', array('id' => $id));
            return $query->row_array();
        }
    }
?>
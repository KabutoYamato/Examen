<?php
    class preguntas_models extends CI_Model{
        public function _construct(){
            $this->load->database();
        }
        public function get_preguntas($id = FALSE){
            if($id === FALSE ){
                $this->db->get('preguntas');
                return $query->result_array();
            }
            $query = $this -> db ->get_where('preguntas', array('id' => $id));
            return $query->row_array();

        }
    }
?>
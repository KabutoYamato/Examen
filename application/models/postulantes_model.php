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
        
        public function get_id($correo){
            $query = $this->db->select('id')->order_by('id',"desc")->limit(1)->get_where('postulantes', array('correo' => $correo));
            $id = $query->row();
            return json_decode(json_encode($id), true)['id'];
        }
    }
?>
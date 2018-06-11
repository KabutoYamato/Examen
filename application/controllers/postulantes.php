<?php
    class postulantes extends CI_Controller {

        public function __construct(){
            parent::__construct();
            $this->load->library('session');
            $this->load->model('postulantes_model');
            $this->load->model('preguntas_model');
            $this->load->helper('url');
            $this->load->helper('url_helper');
        }

        public function inicio(){
            
            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('nombre','Nombre','required', array('required' =>'Debe introducir su %s.'));
            $this->form_validation->set_rules('correo','Correo','required', array('required'=>'Debe introducir su %s.'));
            $this->form_validation->set_rules('telefono','Telefono','required|regex_match[/^[0-9]*$/]', array('required'=>'Debe introducir su %s.','regex_match'=>'El formato del %s es incorrecto.'));
            
            if($this->form_validation->run() === FALSE){
                $this->load->view('templates/header');
                $this->load->view('postulantes/inicio');
                $this->load->view('templates/footer');
            }
            else{
                
                $_SESSION['correo'] = $this->input->post('correo');
                $row = $this->postulantes_model->set_postulante();
                $_SESSION['id'] = $this->postulantes_model->get_id($this->session->correo);
                redirect('postulantes/inicio_examen');
            }
        }
        public function inicio_examen(){
            if(!isset($_SESSION['id'])){
                redirect('postulantes/inicio');
            }
            $this->load->view('templates/header');
            $this->load->view('postulantes/inicio_examen');
            $this->load->view('templates/footer');
            for($i=1;$i<49;$i++){
                $aux = array(
                    'id'=> 0,
                    'respuestas' => array('respuesta_1' => 0,'respuesta_2' => 0),
                    'contestada' => false
                );
                $_SESSION['pregunta'.$i] = $aux;
            }
        }

        public function examen($id){
            if(!isset($_SESSION['id'])){
                redirect('postulantes/inicio');
            }
            $this->load->helper('form');
           
            if(!empty($this->input->post('res1'))&&!empty($this->input->post('res2'))){
                $_SESSION['pregunta'.$this->input->post('id')]['contestada'] = true;
                $_SESSION['pregunta'.$this->input->post('id')]['respuestas']['respuesta_1'] = $this->input->post('res1');
                $_SESSION['pregunta'.$this->input->post('id')]['respuestas']['respuesta_2'] = $this->input->post('res2');
            }
            $data['pregunta'] = $this->preguntas_model->get_pregunta($id);
            if(empty($data['pregunta'])){
                redirect('postulantes/examen/1');
            }
            $this->load->view('templates/header');
            $this->load->view('postulantes/examen',$data);
            $this->load->view('templates/footer');
        }

        public function terminar(){
            if(isset($_SESSION['id'])){
                $this->load->model('examen_model');
                for($i = 1; $i <=48; $i++){
                    if($_SESSION['pregunta'.$i]['contestada']){
                        $this->examen_model->insert_pregunta($i);
                    }
                }
                $this->session->sess_destroy();
                redirect('postulantes/inicio');
            }
        }
    }
?>

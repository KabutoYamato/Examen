<?php
    class postulantes extends CI_Controller {

        public function __construct(){
            parent::__construct();
            $this->load->model('postulantes_model');
        }

        public function inicio(){
            $this->load->helper('url');
            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('nombre','Nombre','required', array('required' =>'Debe introducir su %s.'));
            $this->form_validation->set_rules('correo','Correo','required', array('required'=>'Debe introducir su %s.'));
            $this->form_validation->set_rules('telefono','Telefono','required', array('required'=>'Debe introducir su %s.'));
            
            if($this->form_validation->run() === FALSE){
                $this->load->view('templates/header');
                $this->load->view('postulantes/inicio');
                $this->load->view('templates/footer');
            }
            else{
                $this->postulantes_model->set_postulante();
                redirect('postulantes/examen_inicio');
            }
        }
        public function inicio_examen(){
            $this->load->view('templates/header');
            $this->load->view('templates/footer');
        }
    }
?>

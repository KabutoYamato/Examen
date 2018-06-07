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
                $this->load->library('session');
                $_SESSION['correo'] = $this->input->post('correo');
                $row = $this->postulantes_model->set_postulante();
                $_SESSION['id'] = $this->postulantes_model->get_id($this->session->correo);
                var_dump($this->input->post());
                var_dump($this->session->userdata());
                $this->load->view('templates/header');
                $this->load->view('templates/header');
                //redirect('postulantes/inicio_examen');
            }
        }
        public function inicio_examen(){
            $this->load->view('templates/header');
            $this->load->view('postulantes/inicio_examen');
            $this->load->view('templates/footer');
        }

        public function examen(){
            $this->load->view('templates/header');
            $this->load->view('postulantes/examen');
            $this->load->view('templates/footer');
        }
    }
?>

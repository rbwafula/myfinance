<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Login extends CI_Controller {
		function index() {
			// Check if user is logged in first
			$session_user = $this->session->userdata('username');
			$session_log = $this->session->userdata('username');
			
			if ($session_user != NULL && $session_log == TRUE) {
				redirect('home');
			} else {
				$this->load->view('includes/header');
				$this->load->view('view_login');
				$this->load->view('includes/footer');
			}
		}

		function process() {
			$this->load->model('model_login');
			$this->load->library('form_validation');

			// Validation rules
			$this->form_validation->set_rules('username','Username/Email Address','trim|required|min_length[4]|max_length[50]');
			$this->form_validation->set_rules('password','Password','trim|required|max_length[32]|callback_check_password_match');

			$query = $this->model_login->validate();

			if ($this->form_validation->run() == false) {
				$this->load->view('includes/header');
				$this->load->view('view_login'); // redirect to index if validation fails
				$this->load->view('includes/footer');
			} else {
				if ($query) {
					$data = array(
							'username' => $this->input->post('username'),
							'is_logged_in' => true
							);
					$this->session->set_userdata($data);
					redirect('home');
					//echo 'logged in';
				} else {
					$this->load->view('includes/header');
					$this->load->view('view_login'); // redirect to index if validation fails
					$this->load->view('includes/footer');
				}
			}
		}

		// callback to check if ID is already registered
		function check_password_match($request) {
			$this->load->library('form_validation');
			$this->load->model('model_login');
			$pass_match = $this->model_login->check_password_match($request);
			$user_activated = $this->form_validation->set_rules('username','Username/Email Address','callback_check_account_active');

			if ($pass_match) {
				if ($user_activated) {
					return TRUE; // User present and activated
				} else {
					return FALSE; // User present but deactivated
				}
			} else {
				return FALSE; // User not present
			}
		}

		function check_account_active($request) {
			$this->load->model('model_login');
			$account_active = $this->model_login->check_account_active($request);

			if ($account_active) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
	}
?>
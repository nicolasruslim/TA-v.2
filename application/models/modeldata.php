<?php
class Modeldata extends CI_Model{
	
	function Modeldata(){
		parent::__construct();
	}

	function get_products($type_id)
	{
		$query = $this->db->query("SELECT * FROM product p, product_type pt WHERE p.product_type_id=pt.id_product_type AND p.product_type_id=$type_id");
		return $query->result();
	}

	function get_recipes()
	{
		$query = $this->db->query("SELECT * FROM recipe r, recipe_composition rc WHERE r.recipe_id = rc.recipe_id");
		return $query->result();
	}

	function cek_finger_rs($finger)
	{
		// $sql = "SELECT * FROM dokter WHERE data_biometrik_dokter = ?";
		// $query = $this->db->query($sql, array('data_biometrik_dokter' => $finger));
		$this->db->select('*');
		$this->db->from('rumah_sakit');
		$this->db->where('data_biometrik_rs',$finger);
		if ($this->db->get()->num_rows() == 1){
			return true;
		}
		else{
			return false;
		}
	}

	function get_credentials($finger)
	{
		$sql = "SELECT * FROM dokter WHERE data_biometrik_dokter = ?";
		return $this->db->query($sql, array($finger));
	}

	

	function tambah_dokter()
	{
		$fingercode = $this->input->post('fingercode');
		$nama = $this->input->post('nama');
		$alamat = $this->input->post('alamat');
		$tanggal_lahir = $this->input->post('tanggal_lahir');
		$no_telepon = $this->input->post('no_telepon');
		$data = array(
			'id_dokter' => '',
			'nama_dokter' => $nama,
			'alamat_dokter' => $alamat,
			'tgl_lahir_dokter' => $tanggal_lahir,
			'data_biometrik_dokter' => $fingercode,
			);
		$this->db->insert('dokter', $data);
		$id = $this->db->insert_id();

		$data2 = array(
			'id_dokter' => $id,
			'no_telp_dokter' => $no_telepon,
			);
		$this->db->insert('no_telp_dokter', $data2);

		$id_rs = $this->session->userdata('id');
		$data3 = array(
			'id_dokter' => $id,
			'id_rs' => $id_rs,
			);
		$this->db->insert('kerja', $data3);
	}

	
}
?>
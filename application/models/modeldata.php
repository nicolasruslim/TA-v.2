<?php
class Modeldata extends CI_Model{
	
	function Modeldata(){
		parent::__construct();
	}

	function cek_finger($finger)
	{
		// $sql = "SELECT * FROM dokter WHERE data_biometrik_dokter = ?";
		// $query = $this->db->query($sql, array('data_biometrik_dokter' => $finger));
		$this->db->select('*');
		$this->db->from('dokter');
		$this->db->where('data_biometrik_dokter',$finger);
		if ($this->db->get()->num_rows() == 1){
			return true;
		}
		else{
			return false;
		}
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

	function cek_finger_apotek($finger)
	{
		// $sql = "SELECT * FROM dokter WHERE data_biometrik_dokter = ?";
		// $query = $this->db->query($sql, array('data_biometrik_dokter' => $finger));
		$this->db->select('*');
		$this->db->from('apotek');
		$this->db->where('data_biometrik_apotek',$finger);
		if ($this->db->get()->num_rows() == 1){
			return true;
		}
		else{
			return false;
		}
	}

	function cek_finger_pasien($finger)
	{
		// $sql = "SELECT * FROM dokter WHERE data_biometrik_dokter = ?";
		// $query = $this->db->query($sql, array('data_biometrik_dokter' => $finger));
		$this->db->select('*');
		$this->db->from('pasien');
		$this->db->where('data_biometrik_pasien',$finger);
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

	function get_credentials_rs($finger)
	{
		$sql = "SELECT * FROM rumah_sakit WHERE data_biometrik_rs = ?";
		return $this->db->query($sql, array($finger));
	}

	function get_credentials_apotek($finger)
	{
		$sql = "SELECT * FROM apotek WHERE data_biometrik_apotek = ?";
		return $this->db->query($sql, array($finger));
	}

	function get_credentials_pasien($finger)
	{
		$sql = "SELECT * FROM pasien WHERE data_biometrik_pasien = ?";
		return $this->db->query($sql, array($finger));
	}

	function get_id_pasien($finger)
	{
		$this->db->select('*');
		$this->db->from('pasien');
		$this->db->where('data_biometrik_pasien',$finger);
		return $this->db->get()->row()->id_pasien;
	}

	function get_doctor($id_dokter)
	{
		$sql = "SELECT * FROM dokter WHERE id_dokter = ?";
		return $this->db->query($sql, array($id_dokter));
	}

	function get_rs($id_rs)
	{
		$sql = "SELECT * FROM rumah_sakit WHERE id_rs = ?";
		return $this->db->query($sql, array($id_rs));
	}

	function get_apotek($id_apotek)
	{
		$sql = "SELECT * FROM apotek WHERE id_apotek = ?";
		return $this->db->query($sql, array($id_apotek));
	}

	function get_kontak_dokter($id_dokter)
	{
		$sql = "SELECT * FROM no_telp_dokter WHERE id_dokter = ?";
		return $this->db->query($sql, array($id_dokter));
	}

	function get_kontak_rs($id_rs)
	{
		$sql = "SELECT * FROM no_telp_rumah_sakit WHERE id_rs = ?";
		return $this->db->query($sql, array($id_rs));
	}

	function get_kontak_apotek($id_apotek)
	{
		$sql = "SELECT * FROM no_telp_apotek WHERE id_apotek = ?";
		return $this->db->query($sql, array($id_apotek));
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

	function get_daftarpasien($id_dokter)
	{
		$sql = "SELECT * FROM memeriksa NATURAL JOIN pasien WHERE id_dokter = ?";
		return $this->db->query($sql, array($id_dokter));
	}

	function get_daftardokter($id_rs)
	{
		$sql = "SELECT * FROM kerja NATURAL JOIN dokter WHERE id_rs = ?";
		return $this->db->query($sql, array($id_rs));
	}

	function get_pasien($id_pasien)
	{
		$sql = "SELECT * FROM pasien WHERE id_pasien = ?";
		return $this->db->query($sql, array($id_pasien));
	}

	function get_kontak_pasien($id_pasien)
	{
		$sql = "SELECT * FROM no_telp_pasien WHERE id_pasien = ?";
		return $this->db->query($sql, array($id_pasien));
	}

	function tambah_pasien()
	{
		$fingercode = $this->input->post('fingercode');
		$nama = $this->input->post('nama');
		$alamat = $this->input->post('alamat');
		$tanggal_lahir = $this->input->post('tanggal_lahir');
		$no_telepon = $this->input->post('no_telepon');
		$data = array(
			'id_pasien' => '',
			'nama_pasien' => $nama,
			'alamat_pasien' => $alamat,
			'tgl_lahir_pasien' => $tanggal_lahir,
			'data_biometrik_pasien' => $fingercode,
			);
		$this->db->insert('pasien', $data);
		$id = $this->db->insert_id();

		$data2 = array(
			'id_pasien' => $id,
			'no_telp_pasien' => $no_telepon,
			);
		$this->db->insert('no_telp_pasien', $data2);
	}

	function tambah_rekam_medis()
	{
		$rekam_medis = $this->input->post('rekam_medis');
		$id_dokter = $this->input->post('id_dokter');
		$id_pasien = $this->input->post('id_pasien');
		$data = array(
			'id_pasien' => $id_pasien,
			'id_dokter' => $id_dokter,
			'diagnosa' => $rekam_medis,
			);
		$this->db->insert('rekam_medis', $data);
	
		if ($this->input->post('resep')) {
			$resep = $this->input->post('resep');
			$data = array(
				'id_pasien' => $id_pasien,
				'isi_resep' => $resep,
				'status_resep' => '0',
				'id_apotek' => '0',
				);
			$this->db->insert('resep', $data);
		}
	}

	function tambah_memeriksa()
	{
		$id_dok = $this->input->post('id_dok');
		$id_pasien = $this->input->post('id_pasien');
		$data = array(
			'id_pasien' => $id_pasien,
			'id_dokter' => $id_dok,
			);
		$this->db->insert('memeriksa', $data);
	}

	function get_rekam_medis($id_pasien)
	{
		$sql = "SELECT * FROM rekam_medis WHERE id_pasien = ?";
		return $this->db->query($sql, array($id_pasien));
	}

	function get_resep($id_pasien)
	{
		$sql = "SELECT * FROM resep WHERE id_pasien = ?";
		return $this->db->query($sql, array($id_pasien));
	}

	function get_memeriksa($id_pasien)
	{
		$sql = "SELECT * FROM memeriksa NATURAL JOIN dokter WHERE id_pasien = ?";
		return $this->db->query($sql, array($id_pasien));
	}

	function ubah_status_resep()
	{
		$id_resep = $this->input->post('id_resep');
		$data = array(
			'status_resep' => '1',
			);
		$this->db->update('resep', $data, array('id_resep' => $id_resep));
	}
}
?>
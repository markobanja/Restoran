package model;

public class MenadzerRestorana {
	protected int idMenRes;
	protected String imeMenRes;
	protected String prezimeMenRes;
	protected String jmbg;
	protected String email;
	protected String password;
	
	public MenadzerRestorana(int idMenRes, String imeMenRes, String prezimeMenRes, String jmbg, String email,
			String password) {
		super();
		this.idMenRes = idMenRes;
		this.imeMenRes = imeMenRes;
		this.prezimeMenRes = prezimeMenRes;
		this.jmbg = jmbg;
		this.email = email;
		this.password = password;
	}
	
	

	public MenadzerRestorana(int idMenRes, String email, String password) {
		super();
		this.idMenRes = idMenRes;
		this.email = email;
		this.password = password;
	}



	public int getIdMenRes() {
		return idMenRes;
	}

	public void setIdMenRes(int idMenRes) {
		this.idMenRes = idMenRes;
	}

	public String getImeMenRes() {
		return imeMenRes;
	}

	public void setImeMenRes(String imeMenRes) {
		this.imeMenRes = imeMenRes;
	}

	public String getPrezimeMenRes() {
		return prezimeMenRes;
	}

	public void setPrezimeMenRes(String prezimeMenRes) {
		this.prezimeMenRes = prezimeMenRes;
	}

	public String getJmbg() {
		return jmbg;
	}

	public void setJmbg(String jmbg) {
		this.jmbg = jmbg;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "MenadzerRestorana [idMenRes=" + idMenRes + ", imeMenRes=" + imeMenRes + ", prezimeMenRes="
				+ prezimeMenRes + ", jmbg=" + jmbg + ", email=" + email + ", password=" + password + "]";
	}
	

}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.MenadzerRestorana;
import model.Ponudjac;
import util.ConnectionManager;


public class MenadzerRestoranaDao {
	
	public MenadzerRestorana getManagerByID(int id){
		MenadzerRestorana menadzeri = null;
		  try{
		   Connection conn = ConnectionManager.getConnection();
		   String query = "select * from menadzerrestorana where idMenadzeraRest=?";
		   PreparedStatement pstmt = conn.prepareStatement(query);
		   pstmt.setInt(1, id);
		   ResultSet rset = pstmt.executeQuery();
		   if(rset.next()){
		    int idMenRes = rset.getInt(1);
		    String imeMenRes = rset.getString(2);
		    String prezimeMenRes = rset.getString(3);
		    String email = rset.getString(4);
		    String jmbg = rset.getString(5);
		    String password = rset.getString(6);
		    menadzeri = new MenadzerRestorana(idMenRes, imeMenRes, prezimeMenRes, email, jmbg, password);
		    
		   }
		  }
		  catch (SQLException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		   
		  }
		  return menadzeri;
		 }

	public MenadzerRestorana getManagerByEmailAndPassword(String email,
			String password) {
		MenadzerRestorana menadzeri = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			String selectSQL = "SELECT idMenadzeraRest FROM menadzerrestorana WHERE email = ? AND lozinka = ?";
			PreparedStatement preparedStatement = conn
					.prepareStatement(selectSQL);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			ResultSet rset = preparedStatement.executeQuery();

			if (rset.next()) {
				int id = rset.getInt(1);
				menadzeri = new MenadzerRestorana(id, email, password);
			}
			rset.close();
			preparedStatement.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return menadzeri;
	}
	public MenadzerRestorana getMenadzerRestByEmail(String email) {
		MenadzerRestorana menadzer = null;
		try{
			Connection conn = ConnectionManager.getConnection();
			String update = "select idMenadzeraRest,ime,prezime,JMBG,email,lozinka from menadzerrestorana where email=?";
			System.out.println(update);
			PreparedStatement pstmt = conn.prepareStatement(update);
			pstmt.setString(1, email);
			ResultSet rset = pstmt.executeQuery();
			if(rset.next()){
				int id1 = rset.getInt(1);
				String ime = rset.getString(2);
				String prezime = rset.getString(3);
				String JMBG = rset.getString(4);
				String email1 = rset.getString(5);
				String password = rset.getString(6);
				
				menadzer=new MenadzerRestorana( id1,  ime,  prezime,  JMBG,  email1,  password);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return menadzer;
	}
}


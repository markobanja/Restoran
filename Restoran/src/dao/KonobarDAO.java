package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Konobar;
import util.ConnectionManager;

public class KonobarDAO {

	
	public boolean insertKonobar(Konobar konobar) {
		boolean retVal = false;
		try {
			String update = "INSERT INTO konobar (ime, prezime, konfekcijskiBroj, datumRodjenja,velicinaObuce,email, password,idRest)" 
							+ " values (?, ?, ?, ?, ?, ?, ?,?)";
			Connection conn = ConnectionManager.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(update);
			pstmt.setString(1, konobar.getImeKonobar());
			pstmt.setString(2, konobar.getPrezimeKonobar());
			pstmt.setInt(3, konobar.getKonfekcijskiBr());
			pstmt.setString(4, konobar.getDatumRodjenja());
			pstmt.setString(5, konobar.getVelicinaObuce());
			pstmt.setString(6, konobar.getEmail());
			pstmt.setString(7, konobar.getPassword());
			pstmt.setInt(8, konobar.getIdRestoran().getIdRest());
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("insert");
				retVal = true;
			}
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retVal;
		
	}
}

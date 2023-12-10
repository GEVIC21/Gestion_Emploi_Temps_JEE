package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entities.Enseignant;

public class EnseignantDAO {

	private String jdbcURL = "jdbc:mysql://localhost:3306/gestion_emploi_temps_jee?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "vealeto";
	private String jdbcDriver = "com.mysql.jdbc.Driver";

	private static final String INSERT_ENSEIGNANT_SQL = "INSERT INTO enseignants"
			+ "(nom,prenom,tel,numero,matricule,email) VALUES" + "(?,?,?,?,?,?);";
	private static final String SELECT_ENSEIGNANT_BY_ID = "SELECT id,nom,prenom,tel,numero,matricule,email FROM enseignants WHERE id =?";
	private static final String SELECT_ALL_ENSEIGNANTS = "SELECT * FROM enseignants";
	private static final String DELETE_USERS_SQL = "DELETE FROM enseignants WHERE id=?;";
	private static final String UPDATE_USERS_SQL = "UPDATE enseignants set nom = ?, prenom=?, tel = ?, numero=?, matricule = ?, email=? WHERE id =?;";

	public EnseignantDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	//INSERT Enseignant
	 public void insertEnseignant(Enseignant enseignant){
		 
		 System.out.println(INSERT_ENSEIGNANT_SQL);
		 try(Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ENSEIGNANT_SQL)){
			 preparedStatement.setString(1, enseignant.getNom());
			 preparedStatement.setString(2, enseignant.getPrenom());
			 preparedStatement.setString(3, enseignant.getTel());
			 preparedStatement.setString(4, enseignant.getNumero());
			 preparedStatement.setString(5, enseignant.getMatricule());
			 preparedStatement.setString(6, enseignant.getEmail());
			 System.out.println(preparedStatement);
			 preparedStatement.executeUpdate();
		 }catch(SQLException e){
			 printSQLException(e);
		 }
	 }

	 
	 //select user by id
	 public Enseignant selectEnseignant(int id){
		 Enseignant enseignant = null;
		 try(Connection connection = getConnection();
		     PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ENSEIGNANT_BY_ID)){
			 preparedStatement.setInt(1, id);
			 System.out.println(preparedStatement);
			 ResultSet rs = preparedStatement.executeQuery();
			 
			 while (rs.next()){
				 String nom = rs.getString("nom");
				 String prenom = rs.getString("prenom");
				 String tel = rs.getString("tel");
				 String numero = rs.getString("numero");
				 String matricule = rs.getString("matricule");
				 String email = rs.getString("email");
				 enseignant = new Enseignant(id, nom, prenom, tel, numero, matricule, email);
			 }
		 } catch(SQLException e){
			 printSQLException(e);
		 }
		 return enseignant;
	 }
	 
	//SELECT  ALL Enseignant 
	 public List<Enseignant> selectAllEnseignants()
	 {
		 List<Enseignant> enseignants = new ArrayList<>();
		 try(Connection connection = getConnection();
				 PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ENSEIGNANTS);){
			 	System.out.println(preparedStatement);
			 	ResultSet rs = preparedStatement.executeQuery();
			 	while(rs.next()){
			 		int id = rs.getInt("id");
			 		String nom = rs.getString("nom");
			 		String prenom = rs.getString("prenom");
			 		String tel = rs.getString("tel");
			 		String numero = rs.getString("numero");
			 		String matricule = rs.getString("matricule");
			 		String email = rs.getString("email");
			 		enseignants.add(new Enseignant(id, nom, prenom, tel, numero, matricule, email));
			 	}
		 }catch(SQLException e){
			 printSQLException(e);
		 }
		 return enseignants;
		 
	 }
	
	//UPDATE Enseignant
	 public boolean updateEnseignant(Enseignant enseignant) throws SQLException{
		  boolean rowUpdated;
		  try(Connection connection = getConnection();
				  PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			  System.out.println("updated Enseignant:"+statement);
			  statement.setString(1, enseignant.getNom());
			  statement.setString(2, enseignant.getPrenom());
			  statement.setString(3, enseignant.getTel());
			  statement.setString(4, enseignant.getNumero());
			  statement.setString(5, enseignant.getMatricule());
			  statement.setString(6, enseignant.getEmail());
			  statement.setInt(4, enseignant.getId());
			  
			  rowUpdated = statement.executeUpdate()>0;
		  }
		  return rowUpdated;
	 }
	
	// DELETE Enseignant
	 public boolean deleteEnseignant(int id) throws SQLException{
		 boolean rowDeleted;
		 try(Connection connection = getConnection();
				 PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);){
			 	 statement.setInt(1, id);
			 	 rowDeleted = statement.executeUpdate() > 0;
		 }
		 return rowDeleted;
	 }
	 
	 private void printSQLException(SQLException ex) {
			for (Throwable e: ex){
				if(e instanceof SQLException){
					e.printStackTrace(System.err);
					System.err.println("SQLState" + ((SQLException) e).getSQLState());
					System.err.println("Error Code" + ((SQLException) e).getErrorCode());
					System.err.println("Message"+ e.getMessage());
					Throwable t = ex.getCause();
					while (t !=null){
						System.out.println("Cause"+ t);
						t = t.getCause();
					}
					
				}
			}
			
		}
		

}

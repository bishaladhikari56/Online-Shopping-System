package Project;
import java.sql.*;

public class ConnectionProviderClass 
{
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshoppingjsp","root","toor");
			return con;
		}
		catch(Exception ex)
		{
			System.out.print(ex);
			return null;
		}
		
	}
}

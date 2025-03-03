package Java_Internship;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCDelete {

	public static void main(String[] args) {
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","security");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("delete from person where person_id=?");
			ps.setInt(1,3);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record deleted  sucessfully");
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}
	}

}
/*
OUTPUT
1 record deleted successfully
+----+---------+-----+
| ID |  Name   | Age |
+----+---------+-----+
| 1  | Raj     | 22  |
| 2  | Shubham | 33  |
| 4  | Priya   | 34  |
| 5  | Komal   | 20  |
+----+---------+-----+
*/
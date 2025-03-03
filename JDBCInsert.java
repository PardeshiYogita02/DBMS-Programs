package Java_Internship;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCInsert {

	public static void main(String[] args) {

		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","security");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("insert into person values(?,?,?)");
			ps.setInt(1,6);
			ps.setString(2, "Viraj");
			ps.setInt(3,24);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record inserted sucessfully");
			
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}

	}

}
/*OUTPUT
1 record inserted successfully
+----+---------+-----+
| ID |  Name   | Age |
+----+---------+-----+
| 1  | Raj     | 22  |
| 2  | Shubham | 33  |
| 3  | Akash   | 21  |
| 4  | Priya   | 34  |
| 5  | Komal   | 20  |
| 6  | Viraj   | 24  |
+----+---------+-----+
*/

package Java_Internship;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCUpdate {

	public static void main(String[] args) {
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","security");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("update person set name=? where  person_id=?");
			ps.setString(1,"Pritee");
			ps.setInt(2, 1);
	
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record update sucessfully");
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}

	}

}
/*
OUTPUT
1 record updated successfully
+----+---------+-----+
| ID |  Name   | Age |
+----+---------+-----+
| 1  | Pritee  | 22  |  <-- Updated name from 'Raj' to 'Pritee'
| 2  | Shubham | 33  |
| 3  | Akash   | 21  |
| 4  | Priya   | 34  |
| 5  | Komal   | 20  |
| 6  | Viraj   | 24  |
+----+---------+-----+*/
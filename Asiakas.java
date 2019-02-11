import java.sql.*;

public class Asiakas {
    public static void main(String[] args) {
        try {
            String myDriver = "org.gjt.mm.mysql.Driver";
            String myUrl = "jdbc:mysql://localhost/testbase";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "Admin");
            Statement st = conn.createStatement();
            st.executeUpdate("INSERT INTO asiakastiedot (AsiakasID, HuoneistoID, Etunimi, Sukunimi, Puh. Nro., S.posti, Pvm) "
            + "VALUES ('001', '1', 'Pekka', 'Pouta', '0402341234', '', '2019-01-01')");
            conn.close();
        }
        catch (Exception e){
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
        }
    }
}
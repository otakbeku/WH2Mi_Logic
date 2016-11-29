/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wh2mi_logic;

import java.sql.*;

/**
 *
 * @author Kotak Hitam
 */
public class ControllerDB {

    Connection conn = null;

    public ControllerDB() {
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:WH2Mi_DB_Dummy.db");
        } catch (Exception e) {
        }
    }

}

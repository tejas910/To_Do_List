/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainController;

import SessionFact.SessionFact;
import bean.Note;
import bean.User;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author tppat
 */
public class UserCon {
    
    private static Session session;
    private static SessionFactory sf;
    
    public static boolean registerUser(String name, String username, String password, String contact, String email) {
        Transaction tx = null;
        sf = SessionFact.getSessionFact();
        session = sf.openSession();
        try {
            tx = session.beginTransaction();
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setName(name);
            user.setContact_no(contact);
            user.setEmail_id(email);
            session.save(user);
            tx.commit();
        } catch (Exception e) {
            tx.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    public static boolean loginUser(String uname, String pword) {
        sf = SessionFact.getSessionFact();              //sessionFactory creation
        session = sf.openSession();
        List li = session.createQuery("from User where username=:uname and password=:pword ").setString("uname", uname).setString("pword", pword).list();
        session.close();
        //sf.close();
        
        if (!li.isEmpty()) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean addNote(String username, String title, String note, String date) {
        sf = SessionFact.getSessionFact();
        session = sf.openSession();
        Transaction tx = session.beginTransaction();
        Note n = new Note();
        n.setUsername(username);
        n.setTitle(title);
        n.setNote(note);
        n.setDate(date);
        session.saveOrUpdate(n);
        tx.commit();
        session.close();
        return true;
    }
    
    public static List<Note> getNote(String uname) {
        sf = SessionFact.getSessionFact();
        session = sf.openSession();
        Transaction tx = session.beginTransaction();
        List<Note> list = session.createQuery("From Note where username='" + uname + "'").list();
        tx.commit();
        session.close();
        return list;
    }
    
    public static List<Note> getNoteById(int id) {
        sf = SessionFact.getSessionFact();
        session = sf.openSession();
        Transaction tx = session.beginTransaction();
        List<Note> list = session.createQuery("From Note where id='" + id + "'").list();
        tx.commit();
        session.close();
        return list;
    }

    public static boolean addNote(String username, String title, String note, String date, int id) {
        sf = SessionFact.getSessionFact();
        session = sf.openSession();
        Transaction tx = session.beginTransaction();
        Note n = new Note();
        n.setUsername(username);
        n.setTitle(title);
        n.setNote(note);
        n.setDate(date);
        n.setId(id);
        session.saveOrUpdate(n);
        tx.commit();
        session.close();
        return true;
    }
    
    public static boolean deleteNote(int id){
        sf = SessionFact.getSessionFact();
        session = sf.openSession();
        Transaction tx = session.beginTransaction();
        Note note = new Note();
        note = (Note) session.get(Note.class, id);
        session.delete(note);
        tx.commit();
        session.close();
        return true;
    }
}

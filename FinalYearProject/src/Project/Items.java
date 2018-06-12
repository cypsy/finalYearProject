/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;

import java.sql.Timestamp;

/**
 *
 * @author BLESSEAD PETER
 */
public class Items {
    
    private int id;
    private String vidName;
    private String vidLink;
    private Timestamp vidDate;
    
    
    public Items(int _id, String _vidName, String _vidLink,Timestamp _vidDate){
    
    this.id=_id;
    this.vidName=_vidName;
    this.vidLink = _vidLink;
    this.vidDate =_vidDate;
    }
    
    public int getId(){ return this.id; }
    
    public String getVidname(){return this.vidName;}
    
    public String getVidLink(){return this.vidLink;}
    
    public Timestamp getViddate(){return this.vidDate;}
    
    
    
    
    
}

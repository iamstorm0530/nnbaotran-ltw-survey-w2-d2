package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dateOfBirth;   
    private String ref;          
    private String otherRef;      
    private String wantOffers;    
    private String wantEmail;    
    private String contact;      
    
    public User() {
        this.firstName = "";
        this.lastName = "";
        this.email = "";
        this.dateOfBirth = "";
        this.ref = "";
        this.otherRef = "";
        this.wantOffers = "";
        this.wantEmail = "";
        this.contact = "";
    }

    public User(String firstName, String lastName, String email, String dateOfBirth,
                String ref, String otherRef, String wantOffers, String wantEmail, String contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.ref = ref;
        this.otherRef = otherRef;
        this.wantOffers = wantOffers;
        this.wantEmail = wantEmail;
        this.contact = contact;
    }

    public String getFirstName() { return firstName; }
    public void setFirstName(String value) { firstName = value; }

    public String getLastName() { return lastName; }
    public void setLastName(String value) { lastName = value; }

    public String getEmail() { return email; }
    public void setEmail(String value) { email = value; }

    public String getDateOfBirth() { return dateOfBirth; }
    public void setDateOfBirth(String value) { dateOfBirth = value; }

    public String getRef() { return ref; }
    public void setRef(String value) { ref = value; }

    public String getOtherRef() { return otherRef; }
    public void setOtherRef(String value) { otherRef = value; }

    public String getWantOffers() { return wantOffers; }
    public void setWantOffers(String value) { wantOffers = value; }

    public String getWantEmail() { return wantEmail; }
    public void setWantEmail(String value) { wantEmail = value; }

    public String getContact() { return contact; }
    public void setContact(String value) { contact = value; }
}

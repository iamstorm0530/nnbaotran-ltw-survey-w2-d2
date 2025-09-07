package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    private String firstName;
    private String lastName;
    private String email;

    private String heardFrom;
    private boolean wantUpdate;
    private String contactVia;

    public User() {}

    public User(String firstName, String lastName, String email,
                String heardFrom, boolean wantUpdate, String contactVia) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.heardFrom = heardFrom;
        this.wantUpdate = wantUpdate;
        this.contactVia = contactVia;
    }

    // getters/setters
    public String getFirstName() { return firstName; }
    public void setFirstName(String v) { firstName = v; }

    public String getLastName() { return lastName; }
    public void setLastName(String v) { lastName = v; }

    public String getEmail() { return email; }
    public void setEmail(String v) { email = v; }

    public String getHeardFrom() { return heardFrom; }
    public void setHeardFrom(String v) { heardFrom = v; }

    public boolean isWantUpdate() { return wantUpdate; }
    public void setWantUpdate(boolean v) { wantUpdate = v; }

    public String getContactVia() { return contactVia; }
    public void setContactVia(String v) { contactVia = v; }
}

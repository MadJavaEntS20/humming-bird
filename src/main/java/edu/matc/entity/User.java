package edu.matc.entity;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * A class to represent a user.
 *
 * @author pwaite
 */
@Entity(name = "Users")
@Table(name = "users")
public class User {

    @Column(name = "user_name")
    private String userName;

    @Column(name = "user_password")
    private String userPassword;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private Set<Sightings> sightings =  new HashSet<>();
    /**
     * Instantiates a new User.
     */
    public User() {
    }

    /**
     * Instantiates a new User.
     *
     * @param userName the user name
     * @param userPassword  the user password
     */
    public User(String userName, String userPassword) {
        this.userName = userName;
        this.userPassword = userPassword;
    }


    /**
     * Gets user name.
     *
     * @return the user name
     */
    public String getUserName() {
        return userName;
    }

    /**
     * Sets user name.
     *
     * @param userName the user name
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * Gets user password.
     *
     * @return the user password
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     * Sets user password.
     *
     * @param userPassword the user password
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }


    /**
     * Gets id.
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Sets id.
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    public Set<Sightings> getSightings() {
        return sightings;
    }

    public void setSightings(Set<Sightings> sightings) {
        this.sightings = sightings;
    }

    public void addSightings(Sightings sighting) {
        sightings.add(sighting);
        sighting.setUser(this);
    }

    public void removeSightings(Sightings sighting) {
        sightings.remove(sighting);
        sighting.setUser(null);
    }


    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                "userPassword='" + userPassword +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (id != user.id) return false;
        if (!userName.equals(user.userName)) return false;
        return userPassword.equals(user.userPassword);
    }

    @Override
    public int hashCode() {
        int result = userName.hashCode();
        result = 31 * result + userPassword.hashCode();
        result = 31 * result + id;
        return result;
    }
}
package edu.matc.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * A class to represent a user.
 *
 * @author emullendore
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

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private Set<Sighting> Sightings =  new HashSet<>();



    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private Set<Role> roles = new HashSet<>();

    /**
     * Instantiates a new User.
     */
    public User() {
    }

    /**
     * Instantiates a new User.
     *
     * @param userName     the user name
     * @param userPassword the user password
     */
    public User(String userName, String userPassword) {
        this.userName = userName;
        this.userPassword = userPassword;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
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

    /**
     * Gets Sighting.
     *
     * @return the Sighting
     */
    public Set<Sighting> getSighting() {
        return Sightings;
    }

    /**
     * Sets Sighting.
     *
     * @param Sighting the Sighting
     */
    public void setSighting(Set<Sighting> Sighting) {
        this.Sightings = Sighting;
    }

    /**
     * Add Sighting.
     *
     * @param sighting the sighting
     */
    public void addSighting(Sighting sighting) {
        Sightings.add(sighting);
        sighting.setUser(this);
    }

    /**
     * Remove Sighting.
     *
     * @param sighting the sighting
     */
    public void removeSighting(Sighting sighting) {
        Sightings.remove(sighting);
        sighting.setUser(null);
    }

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", id=" + id +
                ", Sightings=" + Sightings +
                '}';
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        return id == user.id &&
                userName.equals(user.userName) &&
                userPassword.equals(user.userPassword);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userName, userPassword);
    }
}
package edu.matc.entity;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;


/**
 * A class to represent a user.
 *
 * @author pwaite
 */
@Entity(name = "Roles")
@Table(name = "user_roles")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "user_role")
    private String userRole;

    /*
     * Instantiates a new Role.
     *
     * @param user the user
     * @param userRole  the user role
     */
    public Role(String userName, String userRole) {
        this.userName = userName;
        this.userRole = userRole;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
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

//    /**
//     * Gets user.
//     *
//     * @return the user
//     */
//    public User getUser() {
//        return user;
//    }
//
//    /**
//     * Sets user.
//     *
//     * @param user the user
//     */
//    public void setUser(User user) {
//        this.user = user;
//    }

    @Override
    public String toString() {
        return "Role{" +
                "username=" + userName +
                ", userRole='" + userRole + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Role role = (Role) o;

        if (id != role.id) return false;
        if (userName != null ? !userName.equals(role.userName) : role.userName != null) return false;
        return userRole != null ? userRole.equals(role.userRole) : role.userRole == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (userRole != null ? userRole.hashCode() : 0);
        return result;
    }
}
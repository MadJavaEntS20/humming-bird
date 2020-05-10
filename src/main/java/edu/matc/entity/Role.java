package edu.matc.entity;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Objects;


/**
 * The type Role.
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

   @Column(name = "user_id")
    private int userId;


    @ManyToOne
    @JoinColumn(name = "user_id",
            insertable = false, updatable = false,
            foreignKey = @ForeignKey(name = "user_roles_users_id_fk")
    )
    private User user;

    /**
     * Instantiates a new Role.
     */
    public Role() { }

    /**
     * Instantiates a new Role.
     *
     * @param userName the user name
     * @param userRole the user role
     * @param userId   the user id
     */
    /*
     * Instantiates a new Role.
     *
     * @param user the user
     * @param userRole  the user role
     */
    public Role(String userName, String userRole, int userId) {
        this.userName = userName;
        this.userRole = userRole;
        this.userId = userId;
    }

    /**
     * Gets user.
     *
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * Sets user.
     *
     * @param user the user
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * Gets user id.
     *
     * @return the user id
     */
    public int getUserId() {
        return userId;
    }

    /**
     * Sets user id.
     *
     * @param userId the user id
     */
    public void setUserId(int userId) {
        this.userId = userId;
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
     * Gets user role.
     *
     * @return the user role
     */
    public String getUserRole() {
        return userRole;
    }

    /**
     * Sets user role.
     *
     * @param userRole the user role
     */
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


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Role role = (Role) o;

        if (id != role.id) return false;
        if (!Objects.equals(userName, role.userName)) return false;
        if (!Objects.equals(userRole, role.userRole)) return false;
        return Objects.equals(userId, role.userId);
    }

    @Override
    public int hashCode() {
            return Objects.hash(userName, userRole, userId);
    }

    @Override
    public String toString() {
        return "Role{" +
                "username=" + userName +
                ", userRole='" + userRole + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }
}
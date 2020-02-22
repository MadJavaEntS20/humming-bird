package edu.matc.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * The type Sightings.
 */
@Entity(name = "Sightings")
@Table(name = "sightings")
public class Sightings {

    @Column(name = "longitude")
    private float longitude;

    @Column(name = "latitude")
    private float latitude;

    @Column(name = "species")
    private String species;

    @Column(name = "date_time")
    private Date dateTime;

    @Column(name = "approved")
    private boolean approved;

    @ManyToOne(cascade = CascadeType.ALL)
    private User user;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    /**
     * Instantiates a new User.
     */
    public Sightings() {
    }

    /**
     * Instantiates a new Sightings.
     *
     * @param user      the user
     * @param longitude the longitude
     * @param latitude  the latitude
     * @param species   the species
     * @param dateTime  the date time
     * @param approved  the approved
     */
    public Sightings(User user, float longitude, float latitude, String species, Date dateTime, boolean approved) {
        this.user = user;
        this.longitude = longitude;
        this.latitude = latitude;
        this.species = species;
        this.dateTime = dateTime;
        this.approved = approved;
    }

    /**
     * Gets longitude.
     *
     * @return the longitude
     */
    public float getLongitude() {
        return longitude;
    }

    /**
     * Sets longitude.
     *
     * @param longitude the longitude
     */
    public void setLongitude(float longitude) {
        this.longitude = longitude;
    }

    /**
     * Gets latitude.
     *
     * @return the latitude
     */
    public float getLatitude() {
        return latitude;
    }

    /**
     * Sets latitude.
     *
     * @param latitude the latitude
     */
    public void setLatitude(float latitude) {
        this.latitude = latitude;
    }

    /**
     * Gets species.
     *
     * @return the species
     */
    public String getSpecies() {
        return species;
    }

    /**
     * Sets species.
     *
     * @param species the species
     */
    public void setSpecies(String species) {
        this.species = species;
    }

    /**
     * Gets date time.
     *
     * @return the date time
     */
    public Date getDateTime() {
        return dateTime;
    }

    /**
     * Sets date time.
     *
     * @param dateTime the date time
     */
    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    /**
     * Gets approved.
     *
     * @return the approved
     */
    public boolean getApproved() {
        return approved;
    }

    /**
     * Sets approved.
     *
     * @param approved the approved
     */
    public void setApproved(boolean approved) {
        this.approved = approved;
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


    @Override
    public String toString() {
        return "Sightings{" +
                "longitude=" + longitude +
                ", latitude=" + latitude +
                ", species='" + species + '\'' +
                ", dateTime=" + dateTime +
                ", approved=" + approved +
                ", user=" + user +
                ", id=" + id +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sightings sightings = (Sightings) o;

        if (Float.compare(sightings.longitude, longitude) != 0) return false;
        if (Float.compare(sightings.latitude, latitude) != 0) return false;
        if (approved != sightings.approved) return false;
        if (id != sightings.id) return false;
        if (species != null ? !species.equals(sightings.species) : sightings.species != null) return false;
        if (dateTime != null ? !dateTime.equals(sightings.dateTime) : sightings.dateTime != null) return false;
        return user != null ? user.equals(sightings.user) : sightings.user == null;
    }

    @Override
    public int hashCode() {
        int result = (longitude != +0.0f ? Float.floatToIntBits(longitude) : 0);
        result = 31 * result + (latitude != +0.0f ? Float.floatToIntBits(latitude) : 0);
        result = 31 * result + (species != null ? species.hashCode() : 0);
        result = 31 * result + (dateTime != null ? dateTime.hashCode() : 0);
        result = 31 * result + (approved ? 1 : 0);
        result = 31 * result + (user != null ? user.hashCode() : 0);
        result = 31 * result + id;
        return result;
    }
}
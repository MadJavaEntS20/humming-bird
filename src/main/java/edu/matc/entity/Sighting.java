package edu.matc.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * The type Sightings.
 */
@Entity(name = "Sighting")
@Table(name = "sightings")
public class Sighting {

    @Column(name = "longitude")
    private float longitude;

    @Column(name = "latitude")
    private float latitude;

    @Column(name = "species")
    private String species;

//    @CreationTimestamp
//    @Temporal(TemporalType.DATE)
    @Column(name = "date_time")
    private Date dateTime; // localDate data type?

    @Column(name = "approved")
    private boolean approved;

    @ManyToOne
    @JoinColumn(name = "user_id", insertable=false, updatable=false)
    private User user;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    /**
     * Instantiates a new User.
     */
    public Sighting() {
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
    public Sighting(User user, float longitude, float latitude, String species, Date dateTime, boolean approved) {
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
        return "{" +
                "longitude:" + longitude +
                ", latitude:" + latitude +
                ", species:'" + species + "'" +
                ", dateTime:'" + dateTime + "'" +
                ", approved:" + approved +
                ", id:" + id +
                "}";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sighting sighting = (Sighting) o;
        return id == sighting.id &&
                Objects.equals(longitude, sighting.longitude) &&
                Objects.equals(latitude, sighting.latitude) &&
                Objects.equals(species, sighting.species) &&
                Objects.equals(approved, sighting.approved) &&
                Objects.equals(dateTime, sighting.dateTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(longitude, latitude, species, approved, dateTime);
    }
    }
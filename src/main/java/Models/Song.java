package Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "song")
public class Song {
    @Id
    private String ID;

    @Column(name = "name")
    private String name;

    @Column(name = "year")
    private int year;

    @Column(name = "accousticness")
    private double accousticness;

    @Column(name = "danceability")
    private double danceability;

    @Column(name = "duration")
    private int duration;

    @Column(name = "energy")
    private double energy;

    @Column(name = "instrumentalness")
    private double instrumentalness;

    @Column(name = "explicit")
    private boolean explicit;

    @Column(name = "key")
    private int key;

    @Column(name = "liveness")
    private double liveness;

    @Column(name = "loudness")
    private double loudness;

    @Column(name = "popularity")
    private int popularity;

    @Column(name = "release_date")
    private int releaseDate;

    @Column(name = "speechiness")
    private double speechiness;

    @Column(name = "tempo")
    private double tempo;
}

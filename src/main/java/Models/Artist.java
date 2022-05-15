package Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "artist")
public class Artist {
    @Id
    private String ID;

    @Column(name = "name")
    private String name;

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

    @Column(name = "valence")
    private double valence;
}

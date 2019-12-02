package project.entity;

import javax.persistence.*;

@Entity
@Table(name = "info")
public class Info {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_info")
    private int idInfo;

    @Column(name = "first_name")
    private String name;

    @Column(name = "last_name")
    private String lName;

    @Column(name = "description")
    private String description;

    @Column(name = "age")
    private int age;

    @OneToOne(mappedBy = "info", cascade = {CascadeType.ALL}, orphanRemoval = true, fetch = FetchType.EAGER)
    private User user;

    public int getIdInfo() {
        return idInfo;
    }

    public void setIdInfo(int idInfo) {
        this.idInfo = idInfo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}

package org.acme.renting.car;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Car extends PanacheEntityBase {

    @Id
    public String id;
    public String description;
}

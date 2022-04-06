package org.acme.renting.rent;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class RentedCar extends PanacheEntityBase {
    @Id
    public String id;
    public String carId;
    public LocalDate startDate;
    public LocalDate endDate;
}

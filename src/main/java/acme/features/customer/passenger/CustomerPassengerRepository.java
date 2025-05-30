
package acme.features.customer.passenger;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import acme.client.repositories.AbstractRepository;
import acme.entities.booking.Booking;
import acme.entities.passenger.Passenger;
import acme.realms.Customer;

public interface CustomerPassengerRepository extends AbstractRepository {

	@Query("select br.passenger from BookingRecord br where br.booking.id = :bookingId")
	List<Passenger> findPassengersByBookingId(int bookingId);

	@Query("select p from Passenger p where p.id = :passengerId")
	Passenger findPassengerById(int passengerId);

	@Query("select b from Booking b where b.id = :bookingId")
	Booking findBookingById(int bookingId);

	@Query("select p from Passenger p  where p.customer.id = :customerId")
	List<Passenger> findPassengersByCustomerId(int customerId);

	@Query("select b.booking from BookingRecord b where b.passenger.id = :passengerId")
	List<Booking> findBookingByPassengerId(int passengerId);

	@Query("select c from Customer c where c.id = :customerId")
	Customer findCustomerById(int customerId);

}

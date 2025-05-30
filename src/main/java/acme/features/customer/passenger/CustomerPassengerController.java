
package acme.features.customer.passenger;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;

import acme.client.controllers.AbstractGuiController;
import acme.client.controllers.GuiController;
import acme.entities.passenger.Passenger;
import acme.realms.Customer;

@GuiController
public class CustomerPassengerController extends AbstractGuiController<Customer, Passenger> {

	@Autowired
	private CustomerPassengerFromBookingListService	listFromBooking;

	@Autowired
	private CustomerPassengerListService			listService;

	@Autowired
	private CustomerPassengerShowService			showService;

	@Autowired
	private CustomerPassengerUpdateService			updateService;

	@Autowired
	private CustomerPassengerCreateService			createService;

	@Autowired
	private CustomerPassengerPublishService			publishService;

	@Autowired
	private CustomerPassengerDeleteService			deleteService;


	@PostConstruct
	protected void initialise() {

		super.addBasicCommand("list", this.listService);
		super.addBasicCommand("show", this.showService);
		super.addBasicCommand("update", this.updateService);
		super.addBasicCommand("create", this.createService);
		super.addBasicCommand("delete", this.deleteService);

		super.addCustomCommand("publish", "update", this.publishService);
		super.addCustomCommand("listFromBooking", "list", this.listFromBooking);
	}

}

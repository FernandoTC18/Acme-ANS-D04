
package acme.entities.flightAssignment;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;

import acme.client.components.basis.AbstractEntity;
import acme.client.components.mappings.Automapped;
import acme.client.components.validation.Mandatory;
import acme.client.components.validation.Optional;
import acme.client.components.validation.ValidMoment;
import acme.client.components.validation.ValidString;
import acme.entities.leg.Leg;
import acme.realms.FlightCrew;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class FlightAssignment extends AbstractEntity {

	//Serialisation version --------------------------------------------------
	private static final long	serialVersionUID	= 1L;

	//Attributes -------------------------------------------------------------

	@Mandatory
	@Valid
	@Automapped
	private Duty						duty;

	@Mandatory
	@ValidMoment(past = true)
	@Temporal(TemporalType.TIMESTAMP)
	private Date						lastUpdate;

	@Mandatory
	@Valid
	@Automapped
	private AssignmentStatus			status;

	@Optional
	@ValidString(min = 0, max = 255)
	@Automapped
	private String						remarks;
	
	@Mandatory
	@Valid
	@Automapped
	Boolean 							draftMode;

	//Relationships -------------------------------------------------------------

	@Mandatory
	@Valid
	@ManyToOne(optional = false)
	private Leg							leg;

	@Mandatory
	@Valid
	@ManyToOne(optional = false)
	private FlightCrew					flightCrewMember;

}

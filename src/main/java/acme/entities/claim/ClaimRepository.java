
package acme.entities.claim;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.client.repositories.AbstractRepository;
import acme.entities.trackingLog.TrackingLog;

@Repository
public interface ClaimRepository extends AbstractRepository {

	@Query("select tl from TrackingLog tl where tl.claim.id = :claimId and tl.draftMode = :draftMode")
	Collection<TrackingLog> findPublishedTrackingLogsByClaimId(int claimId, boolean draftMode);

	@Query("select c from Claim c where c.passengerEmail = :email")
	Claim findClaimByExistingEmail(String email);

}

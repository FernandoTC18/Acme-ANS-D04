<%--
- menu.jsp
-
- Copyright (C) 2012-2025 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:menu-bar>
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-fernando" action="https://www.youtube.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-josemgarciar" action="https://www.formula1.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-julrompar" action="https://www.nytimes.com/crosswords"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-petcargon" action="https://sites.google.com/site/populardoodlegames/google-snake"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-samtambal" action="https://x.com/"/>
			
		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRealm('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.list-user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-suboption code="master.menu.administrator.list-aircraft" action="/administrator/aircraft/list"/>
			<acme:menu-suboption code="master.menu.administrator.list-airline" action="/administrator/airline/list"/>
			<acme:menu-suboption code="master.menu.administrator.list-airport" action="/administrator/airport/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.populate-db-initial" action="/administrator/system/populate-initial"/>
			<acme:menu-suboption code="master.menu.administrator.populate-db-sample" action="/administrator/system/populate-sample"/>			
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shut-system-down" action="/administrator/system/shut-down"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.technician" access="hasRealm('Technician')">
			<acme:menu-suboption code="master.menu.technician.list-maintenance-records" action="/technician/maintenance-record/list"/>
			<acme:menu-suboption code="master.menu.technician.list-tasks" action="/technician/task/list"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRealm('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRealm('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>
		

		<acme:menu-option code="master.menu.flight-crew" access="hasRealm('FlightCrew')">
			<acme:menu-suboption code="master.menu.flight-crew.flight-assignment.list-completed" action="/flight-crew/flight-assignment/completed-list"/>
			<acme:menu-suboption code="master.menu.flight-crew.flight-assignment.list-uncompleted" action="/flight-crew/flight-assignment/uncompleted-list"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.customer" access="hasRealm('Customer')">
			<acme:menu-suboption code="master.menu.customer.list-booking" action="/customer/booking/list"/>
			<acme:menu-suboption code="master.menu.customer.list-passenger" action="/customer/passenger/list"/>
		</acme:menu-option>
	    
		<acme:menu-option code="master.menu.manager" access="hasRealm('Manager')">
			<acme:menu-suboption code="master.menu.manager.list-my-flights" action="/manager/flight/list" />
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.assistance-agent" access="hasRealm('AssistanceAgent')">
			<acme:menu-suboption code="master.menu.assistance-agent.list-completed-claims" action="/assistance-agent/claim/completed" />
			<acme:menu-suboption code="master.menu.assistance-agent.list-undergoing-claims" action="/assistance-agent/claim/undergoing" />
		</acme:menu-option>

	</acme:menu-left>

	<acme:menu-right>		
		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-profile" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRealm('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider-profile" action="/authenticated/provider/update" access="hasRealm('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRealm('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer-profile" action="/authenticated/consumer/update" access="hasRealm('Consumer')"/>
		</acme:menu-option>
	</acme:menu-right>
</acme:menu-bar>


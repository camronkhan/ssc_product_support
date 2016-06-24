UserRole.create ([
	{ name: 'Administrator', description: 'Create, read, update, and delete all objects' },
	{ name: 'Subject Matter Expert', description: 'Create, update, and delete products; Read-only for all other objects' },
	{ name: 'Internal User', description: 'Read-only for all objects' },
	{ name: 'External User', description: 'Read-only for non-protected information' }
])

Day.create([
	{ name: 'Sunday' },
	{ name: 'Monday' },
	{ name: 'Tuesday' },
	{ name: 'Wednesday' },
	{ name: 'Thursday' },
	{ name: 'Friday' },
	{ name: 'Saturday' }
])

SupportCenter.create([
	{ name: 'Support Center Information Not Available' },
	{ name: 'Other' },
	{ name: 'North America & Latin America (NALA) Solution Support Center (SSC)' },
	{ name: 'Europe, Middle East, & Africa (EMEA) Solution Support Center (SSC)' },
	{ name: 'Asia & Pacific (AP) Solution Support Center (SSC)' },
	{ name: 'North America (NA) Marketing Call Center (MCC)' }
])

SupportType.create([
	{ name: 'Support Type Information Not Available' },
	{ name: 'Other' },
	{ name: 'Service Desk' },
	{ name: 'Technical Support' }
])
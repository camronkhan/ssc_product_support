UserRole.create ([
	{ name: 'Administrator', description: 'Create, read, update, and delete all objects' },
	{ name: 'Subject Matter Expert', description: 'Create, update, and delete products; Read-only for all other objects' },
	{ name: 'Internal Reader', description: 'Read-only for all objects' },
	{ name: 'External Reader', description: 'Read-only for non-protected information' }
])

User.create ([
	{ core_id: 'administratorTest', first_name: 'Administrator', last_name: 'Test', email: 'admin.test@motorolasolutions.com', password_digest: User.digest('password'), user_role: 1 },
	{ core_id: 'subjectMatterExpertTest', first_name: 'Subject Matter Expert', last_name: 'Test', email: 'sme.test@motorolasolutions.com', password_digest: User.digest('password'), user_role: 2 },
	{ core_id: 'internalReaderTest', first_name: 'Internal Reader', last_name: 'Test', email: 'int-reader.test@motorolasolutions.com', password_digest: User.digest('password'), user_role: 3 },
	{ core_id: 'externalReaderTest', first_name: 'External Reader', last_name: 'Test', email: 'ext-reader.test@motorolasolutions.com', password_digest: User.digest('password'), user_role: 4 }
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

SupportFunction.create([
	{ name: 'Support Function Information Not Available' },
	{ name: 'Other' },
	{ name: 'Service Desk' },
	{ name: 'Technical Support' }
])

SupportType.create([
	{ name: 'Support Type Information Not Available' },
	{ name: 'Other' },
	{ name: 'Presale' },
	{ name: 'Order' },
	{ name: 'Return' },
	{ name: 'Warranty Replacement' },
	{ name: 'Technical Support' },
	{ name: 'Repair' }
])


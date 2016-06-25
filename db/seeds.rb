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
	{ name: 'Not Applicable' },
	{ name: 'Unknown' },
	{ name: 'North America & Latin America (NALA) Solution Support Center (SSC)' },
	{ name: 'Europe, Middle East, & Africa (EMEA) Solution Support Center (SSC)' },
	{ name: 'Asia & Pacific (AP) Solution Support Center (SSC)' },
	{ name: 'North America (NA) Marketing Call Center (MCC)' }
])

SupportFunction.create([
	{ name: 'Not Applicable' },
	{ name: 'Unknown' },
	{ name: 'Other' },
	{ name: 'Service Desk' },
	{ name: 'Technical Support' }
])

SupportType.create([
	{ name: 'Not Applicacble' },
	{ name: 'Unknown' },
	{ name: 'Other' },
	{ name: 'Presale' },
	{ name: 'Order' },
	{ name: 'Return' },
	{ name: 'Warranty Replacement' },
	{ name: 'Technical Support' },
	{ name: 'Repair' }
])

SourceLocation.create([
	{ name: 'Not Applicable' },
	{ name: 'Unknown' },
	{ name: 'Dropship' },
	{ name: 'External' }
])

SourceType.create([
	{ name: 'Not Applicable' },
	{ name: 'Unknown' },
	{ name: 'Internal' },
	{ name: 'External' }
])

Company.create([
	{ name: 'Not Applicable' },
	{ name: 'Unknown' },
	{ name: 'Motorola Solutions', website: 'http://www.motorolasolutions.com/' },
	{ name: 'Vertex Standard', website: 'http://www.vertexstandard.com/' },
	{ name: 'Emergency CallWorks', website: 'https://www.emergencycallworks.com/' },
	{ name: 'Zebra Technologies', website: 'https://www.zebra.com/' },
	{ name: 'Motorola Mobility', website: 'http://www.motorola.com/' },
	{ name: 'Cambium Networks', website: 'http://www.cambiumnetworks.com/' },
	{ name: 'NICE Systems', website: 'http://www.nice.com/' },
	{ name: 'Airbus DS Communications', website: 'http://www.airbus-dscomm.com/' },
	{ name: 'VMware', website: 'http://www.vmware.com/' },
	{ name: 'Futurecom', website: 'http://www.futurecom.com/' }
])

Servicer.create([
	{ name: 'Motorola Solutions Service Center, El Paso' },
	{ name: 'Motorola Solutions Service Center, Elgin - Subscriber' },
	{ name: 'Motorola Solutions Service Center, Elgin - Laptops' },
	{ name: 'Motorola Solutions Service Center, Elgin - Test Equipment' },
	{ name: 'Motorola Solutions Infrastructure Depot Operations (IDO)' },
	{ name: 'Motorola Solutions Federal Technical Center (FTC)' },
	{ name: 'Motorola Solutions Canadian Technical Logistics Center (CTLC)' },
	{ name: 'Motorola Solutions Returned Goods' },
	{ name: 'Motorola Solutions Warranty Department' },
	{ name: 'Vertex Standard Service Center' },
	{ name: 'Futurecom' }
])

Address.create([
	{ addressable_type: 'Servicer', addressable_id: 1, name: 'Motorola Solutions Service Center', line_1: '1220 Don Haskins Drive', line_2: 'Suite A', city: 'El Paso', state_province: 'TX', postal_code: '79936', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 2, name: 'Motorola Solutions Service Center', line_1: '2204 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 3, name: 'Motorola Solutions Service Center', line_1: '2208 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 4, name: 'Motorola Solutions Service Center', line_1: '2216 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 5, name: 'Motorola Solutions IDO Repair', line_1: '2214 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 6, name: 'Motorola Solutions Federal Technical Center', line_1: '10105 Senate Drive', city: 'Lanham', state_province: 'MD', postal_code: '20706', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 7, name: 'Motorola Solutions Canadian Technical Logistics Center', line_1: '181 Whitehall Drive', city: 'Markham', state_province: 'Ontario', postal_code: 'L3R 9T1', country: 'Canada' },
	{ addressable_type: 'Servicer', addressable_id: 8, name: 'Motorola Solutions Returned Goods', line_1: '2222 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 9, name: 'Motorola Solutions Warranty Department', line_1: '2222 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 10, name: 'Vertex Standard Service Center', line_1: '7201-A Intermodal Drive', city: 'Louisville', state_province: 'KY', postal_code: '40258', country: 'United States' },
	{ addressable_type: 'Servicer', addressable_id: 11, name: 'Futurecom Systems Group Inc', line_1: '3277 Langstaff Road', city: 'Concord', state_province: 'Ontario', postal_code: 'L4K 5P8', country: 'Canada' }
])
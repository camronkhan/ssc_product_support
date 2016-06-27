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

JobType.create([
	{ name: 'Not Applicacble' },
	{ name: 'Unknown' },
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
	{ name: 'Motorola Solutions Service Center, El Paso', address_1: '1220 Don Haskins Drive', address_2: 'Suite A', city: 'El Paso', state_province: 'TX', postal_code: '79936', country: 'United States' },
	{ name: 'Motorola Solutions Service Center, Elgin - Subscriber', name: 'Motorola Solutions Service Center', address_1: '2204 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Service Center, Elgin - Laptops', name: 'Motorola Solutions Service Center', address_1: '2208 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Service Center, Elgin - Test Equipment', name: 'Motorola Solutions Service Center', address_1: '2216 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Infrastructure Depot Operations (IDO)', name: 'Motorola Solutions IDO Repair', address_1: '2214 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Federal Technical Center (FTC)', name: 'Motorola Solutions Federal Technical Center', address_1: '10105 Senate Drive', city: 'Lanham', state_province: 'MD', postal_code: '20706', country: 'United States' },
	{ name: 'Motorola Solutions Canadian Technical Logistics Center (CTLC)', name: 'Motorola Solutions Canadian Technical Logistics Center', address_1: '181 Whitehall Drive', city: 'Markham', state_province: 'Ontario', postal_code: 'L3R 9T1', country: 'Canada' },
	{ name: 'Motorola Solutions Returned Goods', name: 'Motorola Solutions Returned Goods', address_1: '2222 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Warranty Department', name: 'Motorola Solutions Warranty Department', address_1: '2222 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Vertex Standard Service Center', name: 'Vertex Standard Service Center', address_1: '7201-A Intermodal Drive', city: 'Louisville', state_province: 'KY', postal_code: '40258', country: 'United States' },
	{ name: 'Futurecom', name: 'Futurecom Systems Group Inc', address_1: '3277 Langstaff Road', city: 'Concord', state_province: 'Ontario', postal_code: 'L4K 5P8', country: 'Canada' }
])



Agent.create([
	{ name: 'Customer Care Services (CCS) - Canada Support, English' },
	{ name: 'Customer Care Services (CCS) - Canada Support, French' },
	{ name: 'Customer Care Services (CCS) - Consumer Radio' },
	{ name: 'Customer Care Services (CCS) - Dealer Support' },
	{ name: 'Customer Care Services (CCS) - Domestic Parts' },
	{ name: 'Customer Care Services (CCS) - Federal Government' },
	{ name: 'Customer Care Services (CCS) - French Translator' },
	{ name: 'Customer Care Services (CCS) - International Support, English' },
	{ name: 'Customer Care Services (CCS) - International Support, Spanish' },
	{ name: 'Customer Care Services (CCS) - Lead Assistance' },
	{ name: 'Customer Care Services (CCS) - Learning Management System (LMS)' },
	{ name: 'Customer Care Services (CCS) - Motorola Online (MOL)' },
	{ name: 'Customer Care Services (CCS) - Parts Identification' },
	{ name: 'Customer Care Services (CCS) - Partner Interaction Center (PIC) and Partner Program' },
	{ name: 'Customer Care Services (CCS) - Portal Support' },
	{ name: 'Customer Care Services (CCS) - Radio Repair' },
	{ name: 'Customer Care Services (CCS) - Business Radio Support' },
	{ name: 'Customer Care Services (CCS) - Rental Support' },
	{ name: 'Customer Care Services (CCS) - Services' },
	{ name: 'Customer Care Services (CCS) - Spanish Translator' },
	{ name: 'iDEN - Dispatch Services' },
	{ name: 'iDEN - Existing Cases' },
	{ name: 'iDEN - iBSC' },
	{ name: 'iDEN - Melody' },
	{ name: 'iDEN - OMC' },
	{ name: 'iDEN - Overall' },
	{ name: 'iDEN - Packet' },
	{ name: 'iDEN - Portal' },
	{ name: 'iDEN - Switching' },
	{ name: 'Presale Marketing' },
	{ name: 'Presale Technical' },
	{ name: 'Smart Public Safety Solutions (SPSS) - CAD' },
	{ name: 'Smart Public Safety Solutions (SPSS) - CommandCentral' },
	{ name: 'Smart Public Safety Solutions (SPSS) - Citizen Service Request (CSR) 311' },
	{ name: 'Smart Public Safety Solutions (SPSS) - Jail Systems Management' },
	{ name: 'Smart Public Safety Solutions (SPSS) - Law Records Management System (LRMS)' },
	{ name: 'Smart Public Safety Solutions (SPSS) - Mobile Applications' },
	{ name: 'Smart Public Safety Solutions (SPSS) - Records Management System (RMS)' },
	{ name: 'Technical Support Operations (TSO) - APX Subscribers' },
	{ name: 'Technical Support Operations (TSO) - ASTRO Legacy Subscribers' },
	{ name: 'Technical Support Operations (TSO) - ASTRO25' },
	{ name: 'Technical Support Operations (TSO) - Capacity MAX' },
	{ name: 'Technical Support Operations (TSO) - MOTOTRBO Connect Plus' },
	{ name: 'Technical Support Operations (TSO) - Consoles' },
	{ name: 'Technical Support Operations (TSO) - ASTRO Consoles' },
	{ name: 'Technical Support Operations (TSO) - CPO' },
	{ name: 'Technical Support Operations (TSO) - Data Infrastructure' },
	{ name: 'Dispatch Services - Dispatch' },
	{ name: 'Technical Support Operations (TSO) - Field Workforce Management (FWM) Support' },
	{ name: 'Technical Support Operations (TSO) - iDEN Support' },
	{ name: 'Technical Support Operations (TSO) - MOTOTRBO IP Site Connect' },
	{ name: 'Technical Support Operations (TSO) - LTE HANDHELD' },
	{ name: 'Technical Support Operations (TSO) - LTE PROV' },
	{ name: 'Technical Support Operations (TSO) - LTE TSO' },
	{ name: 'Technical Support Operations (TSO) - LTE VSM' },
	{ name: 'Technical Support Operations (TSO) - MC Series Desksets & Paging' },
	{ name: 'Dispatch Services - Navy' },
	{ name: 'Technical Support Operations (TSO) - Network Monitoring Operations (NMO)' },
	{ name: 'Technical Support Operations (TSO) - Network Monitoring Operations (NMO), Case Closure' },
	{ name: 'Technical Support Operations (TSO) - Network Monitoring Operations (NMO), Department of Defense (DOD)' },
	{ name: 'Technical Support Operations (TSO) - Professional & Commercial Radio (PCR) Analog Subscribers' },
	{ name: 'Technical Support Operations (TSO) - Premier MDC PSA' },
	{ name: 'Dispatch Services - Return Authorization' },
	{ name: 'Technical Support Operations (TSO) - Real Time Crime Center (RTCC)' },
	{ name: 'Technical Support Operations (TSO) - Smartnet' },
	{ name: 'Technical Support Operations (TSO) - Security Operations Center (SOC)' },
	{ name: 'Technical Support Operations (TSO) - Spanish Translator' },
	{ name: 'Technical Support Operations (TSO) - Technical Support' },
	{ name: 'Technical Support Operations (TSO) - MOTOTRBO Applications' },
	{ name: 'Technical Support Operations (TSO) - MOTOTRBO Digital Conventional' },
	{ name: 'Technical Support Operations (TSO) - TSO MSIP' },
	{ name: 'Technical Support Operations (TSO) - Remote Service' },
	{ name: 'Technical Support Operations (TSO) - XTS & XTL Subscribers' },
	{ queue: 'Vertex Standard - Customer Service' },
	{ queue: 'Vertex Standard - Technical Support' },
	{ queue: 'Vertex Standard - Vertex Standard Online (VSOL)' }
])
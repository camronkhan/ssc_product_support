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

Servicer.create([
	{ name: 'Not Supported' },
	{ name: 'Unknown' },
	{ name: 'Motorola Solutions Service Center - El Paso' },
	{ name: 'Motorola Solutions Service Center - Elgin' },
	{ name: 'Motorola Federal Technical Center', internal_phone: 'XGPS-CCS Fed Govt', external_phone: '800-969-6680', address: '10105 Senate Dr, Lanham, MD 20706' },
	{ name: 'Motorola Canada Radio Repair Depot', internal_phone: 'XGPS-CCS Canada', external_phone: '800-543-3222', address: '8133 Warden Ave, Markham, Ontario, Canada L6G183' },
	{ name: 'Infrastructure Depot Operations (IDO)', internal_phone: 'XGPS-SSC Return Authorization', address: '2214 Galvin Dr, Elgin, IL 60124' },
	{ name: 'CCS Business Radio', internal_phone: 'XGPS-CCS RBR Support' },
	{ name: 'Vertex Standard Repair Center', external_phone: '800-283-7839', address: '7201-A Intermodal Drive, Louisville KY 40258' },
	{ name: 'Zebra Technologies', external_phone: '800-653-5350' },
	{ name: 'Futurecom', internal_phone: 'See Notes', external_phone: '800-701-9180' },
	{ name: 'AdvanceTec Industries', external_phone: '866-881-8211' },
	{ name: 'Astron Corp', external_phone: '949-458-7277' },
	{ name: 'AvtechTyee', external_phone: '425-290-3100 ' },
	{ name: 'Cadex Electronics', external_phone: '800-565-5228' },
	{ name: 'David Clark Co', external_phone: '508-751-5800' },
	{ name: 'Gamber Johnson', external_phone: '800-456-6868 x301' },
	{ name: 'Giant International', external_phone: '800-353-2729' },
	{ name: 'GAI-Tronics', external_phone: '800-492-1212' },
	{ name: 'Global Data Specialists', external_phone: '800-451-3464' },
	{ name: 'International Radio Repair', internal_phone: 'XGPS-CCS INTL' },
	{ name: 'Microwave Data Systems', external_phone: '585-242-9600' },
	{ name: 'Microwave Network', external_phone: '800-545-0334' },
	{ name: 'Newmar', external_phone: '800-854-3906' },
	{ name: 'Business Radio Repair', internal_phone: 'XGPS-CCS RBR Dealer Support' },
	{ name: 'Telex', external_phone: '800-898-6723' },
	{ name: 'TPL Communications', external_phone: '323-256-3000' },
	{ name: 'Zetron', external_phone: '425-820-6363' },
	{ name: 'Lorain Reltec Network', external_phone: '800-752-8733 x116' },
	{ name: 'Cambium Networks', external_phone: '888-863-5250' },
	{ name: 'CCS Consumer Radio', internal_phone: 'XGPS-CCS Consumer' }
])

Servicer.create([
	{ name: 'Motorola Solutions Service Center, El Paso', line_1: '1220 Don Haskins Drive', line_2: 'Suite A', city: 'El Paso', state_province: 'TX', postal_code: '79936', country: 'United States' },
	{ name: 'Motorola Solutions Service Center, Elgin - Subscriber', line_1: '2204 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Service Center, Elgin - Laptops', line_1: '2208 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Service Center, Elgin - Test Equipment', line_1: '2216 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Infrastructure Depot Operations (IDO)', line_1: '2214 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Federal Technical Center (FTC)', line_1: '10105 Senate Drive', city: 'Lanham', state_province: 'MD', postal_code: '20706', country: 'United States' },
	{ name: 'Motorola Solutions Canadian Technical Logistics Center (CTLC)', line_1: '181 Whitehall Drive', city: 'Markham', state_province: 'Ontario', postal_code: 'L3R 9T1', country: 'Canada' },
	{ name: 'Motorola Solutions Returned Goods', line_1: '2222 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Motorola Solutions Warranty Department', line_1: '2222 Galvin Drive', city: 'Elgin', state_province: 'IL', postal_code: '60124', country: 'United States' },
	{ name: 'Vertex Standard Service Center', line_1: '7201-A Intermodal Drive', city: 'Louisville', state_province: 'KY', postal_code: '40258', country: 'United States' }
])
var state_arr = new Array("Andaman & Nicobar Islands", "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chandigarh", "Chhatisgarh", "Dadra & Nagar Haveli", "Daman & Diu", "Delhi", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu and Kashmir", "Jharkhand", "Karnataka", "Kerala", "Lakshadweep", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Puducherry", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttarakhand", "Uttar Pradesh", "West Bengal");
var s_a = new Array();
s_a[0]="";
s_a[1]="Nicobars|North  &amp; Middle Andaman|South Andaman";
s_a[2]="Adilabad|Nizamabad|Karimnagar|Medak|Hyderabad|Rangareddy|Mahbubnagar|Nalgonda|Warangal|Khammam|Srikakulam|Vizianagaram|Visakhapatnam|East Godacase|West Godacase|Krishna|Guntur|Prakasam|Sri Potti Sriramulu Nellore|Y.S.R.|Kurnool|Anantapur|Chittoor";
s_a[3]="Tawang|West Kameng|East Kameng|Papum Pare|Upper Subansiri|West Siang|East Siang|Upper Siang|Changlang|Tirap|Lower Subansiri|Kurung Kumey|Dibang Valley|Lower Dibang Valley|Lohit|Anjaw";
s_a[4]="Kokrajhar|Dhubri|Goalpara|Barpeta|Morigaon|Nagaon|Sonitpur|Lakhimpur|Dhemaji|Tinsukia|Dibrugarh|Sivasagar|Jorhat|Golaghat|Karbi Anglong|Dima Hasao|Cachar|Karimganj|Hailakandi|Bongaigaon|Chirang|Kamrup|Kamrup Metropolitan|Nalbari|Baksa|Darrang|Udalguri";
s_a[5]="Pashchim Champaran|Pashchim Champaran|Purba Champaran|Sheohar|Sitamarhi|Madhubani|Supaul|Araria|Kishanganj|Purnia|Katihar|Madhepura|Saharsa|Darbhanga|Muzaffarpur|Gopalganj|Siwan|Saran|Vaishali|Samastipur|Begusarai|Khagaria|Bhagalpur|Banka|Munger|Lakhisarai|Sheikhpura|Nalanda|Patna|Bhojpur|Buxar|Kaimur (Bhabua)|Rohtas|Aurangabad|Gaya|Nawada|Jamui|Jehanabad|Arwal";
s_a[6]="Chandigarh";
s_a[7]="Koriya|Surguja|Jashpur|Raigarh|Korba|Janjgir - Champa|Bilaspur|Kabeerdham|Rajnandgaon|Durg|Raipur|Mahasamund|Dhamtari|Uttar Bastar Kanker|Bastar|Narayanpur|Dakshin Bastar Dantewada|Bijapur";
s_a[8]="Dadra &amp; Nagar Haveli";
s_a[9]="Diu|Daman";
s_a[10]="North West|North|North East|East|New Delhi|Central|West|South West|South";
s_a[11]="North Goa|South Goa";
s_a[12]="Kachchh|Banas Kantha|Patan|Mahesana|Sabar Kantha|Gandhinagar|Ahmadabad|Surendranagar|Rajkot|Jamnagar|Porbandar|Junagadh|Amreli|Bhavnagar|Anand|Kheda|Panch Mahals|Dohad|Vadodara|Narmada|Bharuch|The Dangs|Navsari|Valsad|Surat|Tapi";
s_a[13]="Panchkula|Ambala|Yamunanagar|Kurukshetra|Kaithal|Karnal|Panipat|Sonipat|Jind|Fatehabad|Sirsa|Hisar|Bhiwani|Rohtak|Jhajjar|Mahendragarh|Rewari|Gurgaon|Mewat |Faridabad|Palwal";
s_a[14]="Chamba|Kangra|Lahul &amp; Spiti|Kullu|Mandi|Hamirpur|Una|Bilaspur|Solan|Sirmaur|Shimla|Kinnaur";
s_a[15]="Kupwara|Badgam|Leh(Ladakh)|Kargil|Punch|Rajouri|Kathua|Baramula|Bandipore|Srinagar|Ganderbal|Pulwama|Shupiyan|Anantnag|Kulgam|Doda|Ramban|Kishtwar|Udhampur|Reasi|Jammu|Samba";
s_a[16]="Garhwa|Chatra|Kodarma|Giridih|Deoghar|Godda|Sahibganj|Pakur|Dhanbad|Bokaro|Lohardaga|Purbi Singhbhum|Palamu|Latehar|Hazaribagh|Ramgarh|Dumka|Jamtara|Ranchi|Khunti|Gumla|Simdega|Pashchimi Singhbhum|Saraikela-Kharsawan";
s_a[17]="Belgaum|Bagalkot|Bijapur|Bidar|Raichur|Koppal|Gadag|Dharwad|Uttara Kannada|Haveri|Bellary|Chitradurga|Davanagere|Shimoga|Udupi|Chikmagalur|Tumkur|Bangalore|Mandya|Hassan|Dakshina Kannada|Kodagu|Mysore|Chamarajanagar|Gulbarga|Yadgir|Kolar|Chikkaballapura|Bangalore Rural|Ramanagara";
s_a[18]="Kasaragod|Kannur|Wayanad|Kozhikode|Malappuram|Palakkad|Thrissur|Ernakulam|Idukki|Kottayam|Alappuzha|Pathanamthitta|Kollam|Thiruvananthapuram";
s_a[19]="Lakshadweep";
s_a[20]="Sheopur|Morena|Bhind|Gwalior|Datia|Shivpuri|Tikamgarh|Chhatarpur|Panna|Sagar|Damoh|Satna|Rewa|Umaria|Neemuch|Mandsaur|Ratlam|Ujjain|Shajapur|Dewas|Dhar|Indore|West Nimar|Barwani|Rajgarh|Vidisha|Bhopal|Sehore|Raisen|Betul|Harda|Hoshangabad|Katni|Jabalpur|Narsimhapur|Dindori|Mandla|Chhindwara|Seoni|Balaghat|Guna|Ashoknagar|Shahdol|Anuppur|Sidhi|Singrauli|Jhabua|Alirajpur|East Nimar|Burhanpur";
s_a[21]="Nandurbar|Dhule|Jalgaon|Buldana|Akola|Washim|Amravati|Wardha|Nagpur|Bhandara|Gondiya|Gadchiroli|Chandrapur|Yavatmal|Nanded|Hingoli|Parbhani|Jalna|Aurangabad|Nashik|Thane|Mumbai Suburban|Mumbai|Raigarh|Pune|Ahmadnagar|Bid|Latur|Osmanabad|Solapur|Satara|Ratnagiri|Sindhudurg|Kolhapur|Sangli";
s_a[22]="Senapati|Tamenglong|Churachandpur|Bishnupur|Thoubal|Imphal West|Imphal East|Ukhrul|Chandel";
s_a[23]="West Garo Hills|East Garo Hills|South Garo Hills|West Khasi Hills|Ribhoi|East Khasi Hills|Jaintia Hills";
s_a[24]="Mamit|Kolasib|Aizawl|Champhai|Serchhip|Lunglei|Lawngtlai|Saiha";
s_a[25]="Mon|Mokokchung|Zunheboto|Wokha|Dimapur |Phek|Tuensang|Longleng|Kiphire|Kohima|Peren";
s_a[26]="Bargarh|Jharsuguda|Sambalpur|Debagarh|Sundargarh|Kendujhar|Mayurbhanj|Baleshwar|Bhadrak|Kendrapara|Jagatsinghapur|Cuttack|Jajapur|Dhenkanal|Anugul|Nayagarh|Khordha|Puri|Ganjam|Gajapati|Kandhamal|Baudh|Subarnapur|Balangir|Nuapada|Kalahandi|Rayagada|Nabarangapur|Koraput|Malkangiri";
s_a[27]="Yanam|Puducherry|Mahe|Karaikal";
s_a[28]="Gurdaspur|Kapurthala |Jalandhar|Hoshiarpur|Shahid Bhagat Singh Nagar |Fatehgarh Sahib|Ludhiana|Moga|Firozpur|Muktsar|Faridkot|Bathinda|Mansa|Patiala|Amritsar |Tarn Taran|Rupnagar|Sahibzada Ajit Singh Nagar|Sangrur|Barnala";
s_a[29]="Ganganagar|Hanumangarh|Bikaner|Churu|Jhunjhunun|Alwar|Bharatpur|Dhaulpur|Karauli|Sawai Madhopur|Dausa|Jaipur|Sikar|Nagaur|Jodhpur|Jaisalmer|Barmer|Jalor|Sirohi|Pali|Ajmer|Tonk|Bundi|Bhilwara|Rajsamand|Dungarpur|Banswara|Chittaurgarh|Kota|Baran|Jhalawar|Udaipur|Pratapgarh";
s_a[30]="North  District|West District|South District|East District";
s_a[31]="Thiruvallur|Chennai|Kancheepuram|Vellore|Tiruvannamalai|Viluppuram|Salem|Namakkal|Erode|The Nilgiris|Dindigul|Karur|Tiruchirappalli|Perambalur|Ariyalur|Cuddalore|Nagapattinam|Thiruvarur|Thanjavur|Pudukkottai|Sivagangai|Madurai|Theni|Virudhunagar|Ramanathapuram|Thoothukkudi|Tirunelveli |Kanniyakumari|Dharmapuri|Krishnagiri|Coimbatore|Tiruppur";
s_a[32]="Adilabad|Hyderabad|Karimnagar|Khammam|Mahboobnagar|Medak|Nalgonda|Nizamabad|Ranga Reddy|Warangal";
s_a[33]="West Tripura|South Tripura |Dhalai|Khammam";
s_a[34]="Uttarkashi|Chamoli|Rudraprayag|Tehri Garhwal|Dehradun|Garhwal|Pithoragarh|Bageshwar|Almora|Champawat|Nainital|Udham Singh Nagar|Hardwar";
s_a[35]="Saharanpur|Muzaffarnagar|Bijnor|Moradabad|Rampur|Jyotiba Phule Nagar|Meerut|Baghpat|Ghaziabad|Gautam Buddha Nagar|Bulandshahr |Aligarh|Mahamaya Nagar|Mathura|Agra|Firozabad|Mainpuri|Budaun|Bareilly|Pilibhit|Shahjahanpur|Kheri|Sitapur|Hardoi|Unnao|Lucknow|Rae Bareli|Farrukhabad|Kannauj|Etawah|Auraiya|Kanpur Dehat|Kanpur Nagar|Jalaun|Jhansi|Lalitpur|Hamirpur|Mahoba|Banda|Chitrakoot|Fatehpur|Pratapgarh|Kaushambi|Allahabad|Bara Banki|Faizabad|Ambedkar Nagar|Sultanpur|Bahraich|Shrawasti|Balrampur|Gonda|Siddharthnagar|Basti|Sant Kabir Nagar|Mahrajganj|Gorakhpur|Kushinagar|Deoria|Azamgarh|Mau|Ballia|Jaunpur|Ghazipur|Chandauli|anasi|Sant Ravidas Nagar (Bhadohi)|Mirzapur|Sonbhadra|Etah|Kanshiram Nagar";
s_a[36]="Darjiling|Jalpaiguri |Koch Bihar |Uttar Dinajpur|Dakshin Dinajpur|Maldah |Murshidabad |Birbhum|Barddhaman |Nadia |North Twenty Four Parganas|Hugli|Bankura|Puruliya|Haora|Kolkata|South Twenty Four Parganas|Paschim Medinipur|Purba Medinipur"; 

function print_state1(cstate_id){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var option_str = document.getElementById(cstate_id);
	option_str.length=0;
	option_str.options[0] = new Option('Select State','');
	option_str.selectedIndex = 0;
	for (var i=0; i<state_arr.length; i++) {
		option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function print_city1(ccity_id, ccity_index){
	var option_str = document.getElementById(ccity_id);
	option_str.length=0;	// Fixed by Julian Woods
	option_str.options[0] = new Option('Select city/district','');
	option_str.selectedIndex = 0;
	var city_arr = s_a[ccity_index].split("|");
	for (var i=0; i<city_arr.length; i++) {
		option_str.options[option_str.length] = new Option(city_arr[i],city_arr[i]);
	}
}

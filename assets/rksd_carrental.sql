SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `rksd_carrental`

-- Table structure for table `admin`

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `admin`

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e2fd0f9419494b51d3b6a89764583dce', '0000-00-00 00:00:00');


-- Table structure for table `tblbooking`

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblbooking`

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'avagreen@yahoo.com', 2, '22/06/2020', '25/06/2020', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2020-06-19 20:15:43'),
(2, 'faithnorth@gmail.com', 3, '30/06/2020', '02/07/2020', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2020-06-26 20:15:43'),
(3, 'scarlettgilbert@yahoo.com', 4, '02/07/2020', '07/07/2020', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2020-06-26 21:10:06');


-- Table structure for table `tblbrands`

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblbrands`

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Chevrolet', '2020-06-18 16:24:34', '2020-06-19 06:42:23'),
(2, 'BMW', '2020-11-30 16:24:50', NULL),
(3, 'Audi', '2020-06-22 16:25:03', NULL),
(4, 'Nissan', '2020-04-01 16:25:13', NULL),
(5, 'Toyota', '2020-12-18 16:25:24', NULL),
(6, 'Benz', '2020-06-19 06:22:13', NULL),
(7, 'Lambo', '2020-06-10 06:28:13', NULL),
(8, 'Ford', '2020-06-13 04:22:19', NULL),
(9, 'Range Rover', '2020-06-09 04:35:07', NULL),
(10, 'Honda', '2020-07-20 07:05:00', NULL),
(11, 'Alfa Romeo', '2020-02-02 21:27:18', NULL);


-- Table structure for table `tblcontactusinfo`

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblcontactusinfo`

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '43 Doherty Dr, Kingston, Jamaica', '317-555-0181', 'RKSD@gmail.com');


-- Table structure for table `tblcontactusquery`

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblcontactusquery`

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Aimee Roberts', 'aimeeroberts@yahoo.com', '202-555-0163', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-06-18 10:03:07', 1);


-- Table structure for table `tblpages`

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblpages`

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to RKSD Car Rental! Jamaica. RKSD Car Rental Web Services Jamaica, \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.rksdcarrental.com/info/terms/\">http://in.docs.rksdcarrental.com/info/terms/</A>. In addition, when using particular RKSD Car Rental services or third party services, you and RKSD Car Rental shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. RKSD Car Rental also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<P align=justify><FONT size=2>At RKSD Car Rental, accessible from rksdcarrental.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by RKSD Car Rental and how we use it.<BR><BR>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.<BR><BR>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in RKSD Car Rental. This policy is not applicable to any information collected offline or via channels other than this website.</FONT></P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) Consent</FONT><BR><BR></STRONG>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(2) Information we collect</FONT><BR><BR></STRONG>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(3) How we use your information</FONT><BR><BR></STRONG>We use the information we collect in various ways, including to:<BR><BR>&bull;&nbsp;&nbsp;Provide, operate, and maintain our webste<BR><BR>&bull;&nbsp;&nbsp;Improve, personalize, and expand our webste<BR><BR>&bull;&nbsp;&nbsp;Understand and analyze how you use our webste<BR><BR>&bull;&nbsp;&nbsp;Develop new products, services, features, and functionality<BR><BR>&bull;&nbsp;&nbsp;Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the webste, and for marketing and promotional purposes<BR><BR>&bull;&nbsp;&nbsp;Send you emails<BR><BR>&bull;&nbsp;&nbsp;Find and prevent fraud<BR><BR></P><P align=justify><FONT size=2><STRONG><FONT color=#990000>(4) Log Files</FONT><BR><BR></STRONG>RKSD Car Rental follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users movement on the website, and gathering demographic information. Our Privacy Policy was created with the help of the Privacy Policy Generator and the Privacy Policy Template.<BR><BR></P><P align=justify><FONT size=2><STRONG><FONT color=#990000>(5) Cookies and Web Beacons</FONT><BR><BR></STRONG>Like any other website, RKSD Car Rental uses "cookies". These cookies are used to store information including visitors preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users experience by customizing our web page content based on visitors browser type and/or other information.<BR><BR>For more general information on cookies, please read <a href="https://www.cookieconsent.com/what-are-cookies">"What Are Cookies"</a>.</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(6) Our Advertising Partners</FONT><BR><BR></STRONG>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.<BR><BR>Googlehttps://policies.google.com/technologies/ads</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(7) Advertising Partners Privacy Policies</FONT><BR><BR></STRONG>You may consult this list to find the Privacy Policy for each of the advertising partners of RKSD Car Rental.<BR><BR>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on RKSD Car Rental, which are sent directly to users browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.<BR><BR>Note that RKSD Car Rental has no access to or control over these cookies that are used by third-party advertisers.</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(8) Third Party Privacy Policies</FONT><BR><BR></STRONG>RKSD Car Rental(s) Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.<BR><BR>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers respective websites. What Are Cookies?</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(9) CCPA Privacy Rights (Do Not Sell My Personal Information)</FONT><BR><BR></STRONG>Under the CCPA, among other rights, California consumers have the right to:<BR><BR>Request that a business that collects a consumer(s) personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.<BR><BR>Request that a business delete any personal data about the consumer that a business has collected.<BR><BR>Request that a business that sells a consumer(s) personal data, not sell the consumer(s) personal data.<BR><BR>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(10) GDPR Data Protection Rights</FONT><BR><BR></STRONG>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:<BR><BR>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.<BR><BR>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.<BR><BR>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.<BR><BR>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.<BR><BR>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.<BR><BR>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.<BR><BR>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</P><BR><BR><P align=justify><FONT size=2><STRONG><FONT color=#990000>(11) Children(s) Information</FONT><BR><BR></STRONG>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.<BR><BR>RKSD Car Rental does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records. </FONT></P>'),
(3, 'About Us', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Welcome to RKSD Car Rental, your number one source for all types of cars, ie: Lambo, Toyota, Nissan etc. We are dedicated to giving you the very best of cars, with a focus on four characteristics, ie: dependability, customer service, quality and uniqueness. Founded in 2020 by Ryan Gordon, Kerone Smith, Shevone Bennett, Demali Forte and Kimanie Taylor, RKSD Car Rental has come a long way from its beginnings on Eastwood Park Road. When Ryan, Kerone, Shevone, Demali and Kimanie first started out, our passion for cars, gave us the impetus to work hard and devise our idea into a booming car rental store. We now have two branches, and are thrilled to be a part of the global, fashionable, immaculate and fair trade wing of the car industry. We hope you enjoy our cars as much as we enjoy offering them to you. If you have any questions or comments, please do not hesitate to contact us. <style>@import url(https://fonts.googleapis.com/css?family=Montserrat);.title {font-family: "Montserrat";text-align: center;color: #FFF;display: flex;flex-direction: column;align-items: center;justify-content: center;height: 100vh;letter-spacing: 1px;}h1 {background-image: url(https://i.giphy.com/media/26BROrSHlmyzzHf3i/giphy.webp);background-size: cover;color: transparent;-moz-background-clip: text;-webkit-background-clip: text;text-transform: uppercase;font-size: 120px;line-height: .75;margin: 10px 0;}/* styling my button */.white-mode {text-decoration: none;padding: 7px 10px;background-color: #122;border-radius: 3px;color: #FFF;transition: .35s ease-in-out;position: absolute;left: 15px;bottom: 15px;font-family: "Montserrat";}.white-mode:hover {background-color: #FFF;color: #122;}</style><div class="title"><h1>#1 in Quality<br/><br>Service</h1></div></span>'),
(11, 'FAQs', 'faqs', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><style>@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,800);

.content {
  width: 100%;
  padding: 20px;
  margin: 0 auto;
  padding: 0 60px 0 0;
  font-size: 16px;
}

.centerplease {
  margin: 0 auto;
  max-width: 270px;
  font-size: 40px;
}

.question {
  position: relative;
  background:  #87ceeb;
  margin: 0;
  padding: 10px 10px 10px 50px;
  display: block;
  width:100%;
  cursor: pointer;
}

.answers {
  background: #FFFFFF;
  padding: 0px 15px;
  margin: 5px 0;
  max-height: 0;
  overflow: hidden;
  z-index: -1;
  position: relative;
  opacity: 0;
  -webkit-transition: .7s ease;
  -moz-transition: .7s ease;
  -o-transition: .7s ease;
  transition: .7s ease;
}

.questions:checked ~ .answers{
  max-height: 500px;
  opacity: 1;
  padding: 15px;
}

.plus {
  position: absolute;
  margin-left: 10px;
  z-index: 5;
  font-size: 2em;
  line-height: 100%;
  -webkit-user-select: none;    
  -moz-user-select: none;
  -ms-user-select: none;
  -o-user-select: none;
  user-select: none;
  -webkit-transition: .3s ease;
  -moz-transition: .3s ease;
  -o-transition: .3s ease;
  transition: .3s ease;
}

.questions:checked ~ .plus {
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
}

.questions {
  display: none;
}</style><div class="centerplease">
</div>
<br>
<div class="content">
<div>
  <input type="checkbox" id="question1" name="q"  class="questions">
  <div class="plus">+</div>
  <label for="question1" class="question">
    Why RKSD Car Rental is the next big thing?
  </label>
  <div class="answers">
    We are simply unbeatable when it comes to cars. Having a perfect fitted car for you is always in our thoughts. Immaculate, dependibility and uniqueness are what we are known for.
  </div>
<div>
  <input type="checkbox" id="question2" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question2" class="question">
    How do I change or cancel my reservation?
  </label>
  <div class="answers">
    Contact us and speak to an administrator.
  </div>
<div>
  <input type="checkbox" id="question3" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question3" class="question">
    Can you rent a car with cash or money orders?
  </label>
  <div class="answers">
    Other branch may accept cash or a money orders using the cash qualification requirements below for customers who do not have a credit card. Find a location and get contact information on our locations page. Cash Qualification Requirements:<BR><BR>

<P align=justify>&bull;&nbsp;&nbsp;Proof of insurance</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Two current utility bills</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Most recent paycheck stub</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Driver(s) license issued from the rental state</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;A minimum deposit plus the entire cost of the rental at the time of pickup (Deposit amount varies by location from $100 to $300)</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Personal references</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Credits owed back to the customer will typically be credited back to their account within 15 business days</P><BR><BR>
  </div>
<div>
  <input type="checkbox" id="question4" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question4" class="question">
    If I am a person with a disability and do not have a driver(s) license, can I rent a car from RKSD Car Rental?
  </label>
  <div class="answers">
  Yes! If due to a disability you do not have a valid driver(s) license, you may still rent a car when accompanied by a surrogate driver who presents a valid driver(s) license. Minimum age restrictions and other normal rental qualifications apply, but there is no additional charge for the surrogate driver and the surrogate driver need not produce a credit card or otherwise be required to meet our financial underwriting requirements.
  </div>
  <div>
  <input type="checkbox" id="question5" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question5" class="question">
    I want to return my car early; is there a penalty to do so?
  </label>
  <div class="answers">
    At RKSD Car Rental, we do not charge customers more for returning a car early, and you will only be charged for the days you had the vehicle (excluding prepaid reservations).
  </div>
<div>
  <input type="checkbox" id="question6" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question6" class="question">
    Does RKSD Car Rental offer discounts or promotion on cars?
  </label>
  <div class="answers">
   In addition to offering some of the most competitive rates in the industry; RKSD Car Rental offers special promotions throughout the year. Some of our most popular promotions are:<BR><BR>

<P align=justify>&bull;&nbsp;&nbsp;Weekend specials</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Drive out programs</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;Special coupons through some of our Corporate Partnerships</P><BR><BR>
<P align=justify>&bull;&nbsp;&nbsp;RKSD Car Rental members receive e-mail specials and customers may also sign up for email extras at any time</P><BR><BR>
These promotions are often available at our "Home City" (non-airport) locations. Note: not all cities and locations participate in specials and typically only one discount/coupon code can be used at a time. In addition certain times of the year are subject to blackout dates and availability.<BR><BR>
</div>
<div>
  <input type="checkbox" id="question7" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question7" class="question">
    I would like to keep my rental vehicle for a few days longer; is that possible?
  </label>
  <div class="answers">
    Yes! At this time, the only way to extend your rental is to call us. When extending a rental, our company will need to place an additional authorization on your credit or debit card. Also Your rates are subject to change based on the length of your rental extension. Usually the longer you keep the vehicle, the better deal you will receive because you can then take advantage of our weekly and monthly rates.
</div>
<div>
  <input type="checkbox" id="question8" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question8" class="question">
    Can you rent an exotic car for a day?
  </label>
  <div class="answers">
    Yes, you can rent an exotic vehicle for a day, subject to vehicle availability. However, vehicles cannot be rented by the hour.
</div>
<div>
  <input type="checkbox" id="question9" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question9" class="question">
    Can you rent an exotic car for an hourly rate?
  </label>
  <div class="answers">
    The Exotic Car Collection by RKSD Car Rental does not allow hourly rentals. Our vehicles can be rented for a day or longer.
</div>
<div>
  <input type="checkbox" id="question10" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question10" class="question">
    Can you rent an exotic car under 25?
  </label>
  <div class="answers">
   To rent an exotic vehicle, a driver must be at least 25 years old.
</div>
<div>
  <input type="checkbox" id="question11" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question11" class="question">
    Can you rent an exotic or luxury car for a wedding?
  </label>
  <div class="answers">
   The Exotic Car Collection by RKSD Car Rental(s) vehicles are available to make your wedding day extraordinary. We offer luxury and performance vehicles, including Lambo, Chevrolet and Benz, to enhance your wedding day style.<BR><BR>
   With our exceptional customer service and delivery options, we make the rental process seamless. Our wide selection of premium vehicles, including luxury cars, high-end SUVs, convertibles and passenger vans, are available to transport you and your guests throughout the day.
</div>
<div>
  <input type="checkbox" id="question12" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question12" class="question">
    Can you rent a 12 or 15 passenger van from RKSD Car Rental?
  </label>
  <div class="answers">
   Yes, you can rent 12 or 15 passenger vans from RKSD Car Rental if you are at least 25 years old.<BR><BR>
   Please be advised that The van does not meet National Transport Policy and may not be used to transport children in the 12th grade or younger, other than family members, for school related functions.
</div>
<div>
  <input type="checkbox" id="question13" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question13" class="question">
    Does RKSD Car Rental allow me to tow with or attach a hitch to the rental car?
  </label>
  <div class="answers">
   RKSD Car Rental do not allow a hitch or towing of any kind with the rental vehicle.
</div>
<div>
  <input type="checkbox" id="question14" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question14" class="question">
    Does RKSD Car Rental rent additional equipment such as child safety seats or GPS?
  </label>
  <div class="answers">
    Yes! At an additional per day charge.
  </div>
  <div>
  <input type="checkbox" id="question15" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question15" class="question">
    How many RKSD Car Rental points does it take to earn a free rental day?
  </label>
  <div class="answers">
    The amount of points required will vary based on the rental details you provide.
  </div>
  <div>
  <input type="checkbox" id="question16" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question16" class="question">
    How do I request missing points if I forget to provide my RKSD Car Rental number?
  </label>
  <div class="answers">
   Good news! You can request missing rental points up to six (6) months after your return date, as long as the return date was on or after your enrollment date.
  </div>
  <div>
  <input type="checkbox" id="question17" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question17" class="question">
    Can I share my RKSD Car Rental points with family or friends?
  </label>
  <div class="answers">
   Yes, you may choose to transfer points to a friend or family member who is also an RKSD Car Rental member. That member can then follow the required steps to redeem the points for free rental days.<BR><BR>
   Members may transfer between 500 and 7,500 points, in 500-point increments, to another RKSD Car Rental Member. A maximum of one transfer per calendar year from an RKSD Care Rental account and a maximum of one transfer per calendar year into an RKSD Car Rental account are allowed. To be eligible to receive a points transfer, the recipient Member(s) account must be activated prior to the transfer. Points transferred will assume the expiration date associated with any points balance in the recipient(s) RKSD Car Rental account or three (3) months from date of transfer, whichever is greater. This date may be extended thirty six (36) months as long as the Member earns one (1) or more points for a Qualifying Rental prior to the expiration date occurring. Once points have been transferred to another Member(s) account, the transfer cannot be reversed.
  </div>
  <div>
  <input type="checkbox" id="question18" name="q" class="questions">
  <div class="plus">+</div>
  <label for="question18" class="question">
    How can I get a copy of my rental car receipt?
  </label>
  <div class="answers">
   Receipts are only available online for six months, beginning 48 hours after you have returned the vehicle. If you cannot locate your receipt, it is always a good idea to:<BR><BR>
	<P align=justify>&bull;&nbsp;&nbsp;Verify that your driver(s) license number is correct</P><BR><BR>
	<P align=justify>&bull;&nbsp;&nbsp;Verify that your name was spelled correctly</P><BR><BR>
	<P align=justify>&bull;&nbsp;&nbsp;Review your rental contract and confirm the license number on the contract and the name on the contract matches your entry</P><BR><BR>
	If you require a receipt for a rental which was more than six months ago, you will need to contact the office that you rented the vehicle from and they can send you a copy of your receipt.<BR><BR>
	If your rental was within the last six (6) months and you are still having difficulty finding your receipt, please call 406-555-0106 to speak to a customer service specialist or contact the renting location directly.
  </div>
</div></span>');


-- Table structure for table `tblsubscribers`

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblsubscribers`

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'marianarodrigues@gmail.com', '2020-02-22 16:35:32'),
(2, 'tegangardner@yahoo.com', '2020-01-31 15:00:00'),
(3, 'lauraparkes@gmail.com', '2020-03-26 22:00:00'),
(4, 'amymiddleton@yahoo.com', '2020-06-06 23:15:18'),
(5, 'yasminbolton@gmail.com', '2020-07-19 17:20:24'),
(6, 'matildalawrence@yahoo.com', '2020-12-28 22:45:10');


-- Table structure for table `tbltestimonial`

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tbltestimonial`

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'libbyparkinson@gmail.com', 'Et harum quidem rerum facilis est et expedita distinctio', '2020-06-18 07:44:31', 1),
(2, 'annakennedy@yahoo.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2020-06-18 07:46:05', 1);


-- Table structure for table `tblusers`

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblusers`

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Madison Samuels', 'maddy_sam@gmail.com', '5e4a20b8af37fd2533fdf8c50343966a', '202-555-0112', '3 June, 1992', '977 Rocksteady Drive, Jacks Hill', 'Kingston', 'Jamaica', '2020-03-22 13:38:20', NULL),
(6, 'Tia Pearson', 'tia_pearson@yahoo.com', '0be08f4ea03658160f38208e9e443e08', '613-555-0152', '30 April, 1995', '886 Lignum Crescent, Los Angeles', 'California', 'USA', '2020-11-23 14:48:01', NULL);


-- Table structure for table `tblvehicles`

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` varchar(100) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserting data into table `tblvehicles`

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(3, 'Note', 4, 'Nissan Note, All new Nissan Note ready to go for a trip with this new ride', '12,780', 'Petrol', 2013, 4, 'red-nissan-note.png', 'brown-nissan-note.png', 'nissan-note3.png', 'nissan-note-pearl-black.png', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2020-06-19 16:18:20', '2020-03-22 13:59:52'),
(5, 'Avanza', 5, 'Toyota Avanza go have a thrilling trip with this Avanza', '345,345', 'Diesel', 2019, 7, 'toyota-avanza.png', 'dark-blue-toyota-avanza.png', 'red-toyota-avanza.png', 'black-toyota-avanza.png', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-06-20 17:57:09', '2020-03-22 14:00:15'),
(7, 'Coupe', 2, 'BMW Coupe love this car great value for the price. It drives beautifully and has UNBELIEVABLE radius. Extremely solid and easy to keep clean', '487,682', 'Petrol', 2014, 4, 'blue-bmw.png', 'red-bmw.png','black-bmw.png', 'yellow-bmw.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-04-05 17:44:09', '2020-02-01 15:30:07'),
(9, 'Mercedes', 6, 'Benz Mercedes is one beautiful vehicle. I own three of them. I just fell in love with this vehicle the very first time I saw one', '498,651', 'Petrol', 2020, 4, 'black-benz.png', 'blue-benz.png', 'red-benz.png', 'white-benz.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-11-08 11:24:10', '2020-06-12 12:50:54'),
(11, 'Mustang', 8, 'This is a beautiful car. Ford did a great job creating this retro styled Mustang convertible','32,170', 'Petrol', 2019, 4, 'mustang-yellow.png','red-mustang.png','silver-mustang.png','dark-blue-mustang.png', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-09-03 18:14:19', '2020-05-10 12:40:44'),
(13, 'Huracán', 7, 'The thrill of the engine roaring. Goosebumps on your arm as you upshift. Accelerating on an open road. The Lamborghini Spyder commands attention from the road and from the drivers seat. It engages the driver and pushes them to that indescribable feeling of driving an exotic and luxury vehicle.', '308,859', 'Petrol', 2016, 2, 'orange-lamborghini.png', 'blue-lamborghini.png', 'white-lamborghini.png', 'black-and-yellow-lamborghini.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-03 18:58:17', '2020-01-09 14:14:00'),
(15, 'Sport', 9, 'The 2020 Land Rover Range Rover Sport offers impressive luxury and off-road credentials in a premium SUV as bold as it is beautiful', '82,950', 'Petrol', 2020, 5, 'red-land-rover.png', 'white-land-rover.png', 'blue-land-rover.png', 'black-land-rover.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-01-01 18:19:00', '2020-02-12 13:55:17'),
(17, 'Camaro', 1, 'The Camaro possesses impressive handling agility and sharp steering. The optional magnetic ride suspension does an impressive job of keeping the Camaro composed over some of the roughest surfaces', '68,000' ,'Petrol', 2020, 4, 'dark-blue-chevrolet.png', 'yellow-chevrolet.png', 'red-chevrolet.png', 'black-chevrolet.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-09-14 16:58:58', '2020-12-12 19:31:25'),
(18, 'Accord', 10, 'Easy to drive and Park. Great gas mileage', '20,535', 'Petrol', 2017, 4, 'brown-honda.png', 'white-honda.png', 'black-honda.png', 'blue-honda.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-11-30 14:50:01', '2020-06-29 9:45:44'),
(19, 'Giulia', 11, 'Excellent driving and looking car. Plenty of complements on how the car looks and rides', '35,900', 'Petrol', 2017, 4, 'black-alfa-romeo.png', 'white-alfa-romeo.png', 'red-alfa-romeo.png', 'blue-alfa-romeo.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-08-14 12:09:11', '2020-10-31 04:16:14');


-- Indexes for inserted tables


-- Indexes for table `admin`

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblbrands`

ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblcontactusinfo`

ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblcontactusquery`

ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblpages`

ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblsubscribers`

ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tbltestimonial`

ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblusers`

ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tblvehicles`

ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for inserted tables


-- AUTO_INCREMENT for table `admin`

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


-- AUTO_INCREMENT for table `tblbooking`

ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


-- AUTO_INCREMENT for table `tblbrands`

ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


-- AUTO_INCREMENT for table `tblcontactusinfo`

ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `tblcontactusquery`

ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `tblpages`

ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


-- AUTO_INCREMENT for table `tblsubscribers`

ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


-- AUTO_INCREMENT for table `tbltestimonial`

ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


-- AUTO_INCREMENT for table `tblusers`

ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `tblvehicles`

ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
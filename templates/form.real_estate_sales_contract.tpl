{include file='header.tpl'}
<style>
.hero-unit {
padding: 0px;
padding-left:40px;
padding-right:40px;
margin-bottom: 30px;
font-size: 16px;
margin-left: 1.5em;
margin-right: 1.5em;
font-weight: 100;
line-height: 25px;
color: inherit;
background-color: #EEE;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
}


input, textarea, .uneditable-input {
width: 150px;
}

.article {
margin-bottom:-15px;
padding-top:1em;

}

button.btn, input[type="submit"].btn{
margin-top:1.5em;
margin-bottom:-1.5em;

}

</style>
<div class = "hero-unit">
<br>
<form method='POST' action='{$base_url}/form/4/user/{$User->Id}'>
</br>

<center><h3>Real Estate Sales Contract </h3></center>
<hr>
<p><b> Date:</b> <u><input type='text' placeholder='{$form_field.119}' name='119'{if $user_field.119}value='{$user_field.119}'{/if} ></u> </p>

<p><b>1.</b> PROPERTY: The undersigned Buyer(s) , hereby agrees to purchase from the 
undersigned Seller (" <u><input type='text' placeholder='{$form_field.120}' name='120'{if $user_field.120}value='{$user_field.120}'{/if} ></u> ") the following real property, <u><input type='text' placeholder='{$form_field.121}' name='121'{if $user_field.121}value='{$user_field.121}'{/if} ></u>
together with all the improvements and the appurtenances, if any, thereunto 
belonging, subject to existing zoning ordinances, restrictions, easements, and 
mineral rights previously reserved, or conveyed of record (collectively "the 
Property") upon the following terms and conditions: </p>

<p><b>2.</b> TERMS: Buyer shall pay for the Property the sum of Dollars ($) payable as 
follows:  </p>

<p><b>(a)</b> The sum of $ <u><input type='text' placeholder='{$form_field.122}' name='122'{if $user_field.122}value='{$user_field.122}'{/if} ></u> as Earnest Money, receipt of which is hereby 
acknowledged, and upon acceptance in writing and delivery of this Contract, 
the Earnest Money shall be assigned to and deposited in the trust account of 
Listing Broker to be applied on the purchase price and/or closing costs, if any, 
at the time of Closing. </p>

<p><b>(b)</b> At Closing, IN CASH OR CERTIFIED FUNDS, the further sum of $ <u><input type='text' placeholder='{$form_field.123}' name='123'{if $user_field.123}value='{$user_field.123}'{/if} ></u> (subject 
to the adjustments set forth in this Contract and the Supplemental Financing 
Agreement attached hereto and made a part hereof); and </p>

<p><b>(c)</b> Loan(s), if any, in the sum of $ set forth in the attached Supplemental 
Financing Agreement. </p>

<p><b>3.</b> CONDITION OF PROPERTY:  </p>

<p><b>(a)</b> Prior to signing this Contract, Buyer acknowledges receipt of a Seller's 
disclosure statement for residential property.  </p>

<p><b>(b)</b> Prior to Closing Buyer, at Buyer's expense (except as a Seller's expense 
in VA transactions), shall receive a termite clearance certificate based on an 
inspection by a licensed termite company of the residential structure on the 
Property and any improvements specified by Lender. If such inspection 
reveals visible infestation by termites or other wood destroying organisms, 
then Seller shall pay for treatment and provide a clearance certificate from a 
licensed termite company of Seller's choice. On or before the day of Closing, 
Buyer shall acknowledge receipt of a termite clearance certificate in writing.  </p>

<p><b>(c)</b> A PROPERTY CONDITION ADDENDUM shall be attached to this Contract if 
Buyer requires any inspection(s) UNLESS BUYER WAIVES ALL INSPECTIONS 
OTHER than inspection in paragraph 3(b) BY INITIALING HERE </p>

<p>Buyer's Initials: <u><input type='text' placeholder='{$form_field.124}' name='124'{if $user_field.124}value='{$user_field.124}'{/if} ></u> </p>

<p><b>(d)</b> Seller shall pay an amount not to exceed $ <u><input type='text' placeholder='{$form_field.125}' name='125'{if $user_field.125}value='{$user_field.125}'{/if} ></u> for (i) Inspection Repair Costs 
in excess of $100 as provided in the Property Condition Addendum (unless waived), and (ii) Lender repair requirements, if any. If the sum of (i) and (ii) 
exceeds the stated amount and if Buyer and Seller do not enter into a written 
agreement in settlement of the excess prior to Closing, then Buyer's Earnest 
money shall be returned subject to appropriate written authorization from all 
parties and this Contract shall be null and void.  </p>

<p><b>(e)</b> If the repairs including Lender requirements are made prior to Closing, 
Seller shall cause any of the following to make them: person(s) who are 
licensed or bonded to make such repairs, manufacturer-approved service 
person(s), person(s) whose primary business is directly related to the type of 
repairs, or Seller, if Seller elects to perform the repairs. Seller shall not be 
reimbursed for Seller's labor.  </p>

<p><b>(f)</b> Utilities shall be left on, in Seller's name, until Closing.  </p>

<p><b>(g)</b> Until Closing or transfer of possession, the risk of loss to the Property by 
fire, casualty or otherwise (ordinary wear and tear excepted) shall be upon 
the Seller. After Closing or transfer of possession, such risk shall be upon the 
Buyer.  </p>

<p><b>(h)</b> Unless otherwise agreed upon in writing, Buyer, by Closing, or taking 
possession of the Property, shall be deemed to have accepted the Property, 
including fixtures and equipment in the condition existing at Closing. Buyer is 
purchasing the Property based on Buyer's own inspection, unless waived, and 
NO WARRANTIES are expressed or implied by the Seller or Listing Broker and 
its affiliated licensees or Selling Broker and its affiliated licensees that shall be 
deemed to survive the Closing in reference to the condition of the Property or 
any fixture or equipment. On or before the day of Closing, Buyer shall sign a 
CLOSING ACKNOWLEDGMENT AND RELEASE.  </p>

<p><b>(i)</b> Except as otherwise provided above or in Property Condition Addendum, 
Seller shall deliver the Property in its condition on the date of acceptance of 
the Contract, ordinary wear and tear excepted. Prior to Closing, Buyer shall 
have the right to a walk through of Property to verify such condition.  </p>

<p><b>(j)</b> Buyer and Seller acknowledge that each has received a copy of the "Buyer 
and Seller Information" pamphlet which explains options and obligations of 
the Buyer and Seller.  </p>

<p><b>(k)</b> Unless otherwise indicated in the Seller's disclosure statement, Seller 
represents that to best of Seller's knowledge the Property has not been 
damaged or affected by flood, storm run-off, or storm sewer backup ("Water 
Problem"). Buyer has 15 days from acceptance of the Contract to make any 
investigation of Water Problem. If Buyer determines that a further Water 
Problem exists beyond the disclosure, then this Contract may be terminated 
by delivering written notice stating such Water Problem to Seller in care of 
Listing Broker within 17 days from acceptance of the Contract. The Earnest 
Money will be refunded to Buyer subject to appropriate written authorization 
from all parties.  </p>

<p><b>4.</b> INSPECTION AGREEMENT: Both Buyer and Seller acknowledge that each of 
them has read the attached PROPERTY CONDITION ADDENDUM and shall 
abide by its terms unless Buyer waived inspections. </p>

<p><b>5.</b> FIXTURES AND EXTRAS: The following items shall remain with the Property 
after the Closing as property of Buyer at no additional cost to Buyer and shall 
be considered a part of the purchase price: all wall-to-wall carpets; all 
bathroom mirrors; direct wired lighting fixtures and ceiling fans; all curtains, 
drapes, curtain rods and other window treatments; automatic garage door 
opener(s) and any remote controls; security system and all components; all 
home control and home automation components. </p>

<p><b>6.</b> TITLE EVIDENCE: Seller shall furnish Buyer title evidence covering the 
Property, which shows marketable title vested in Seller according to the title 
standards.  </p>

<p><b>(a)</b> Such title evidence shall be in the form of Abstract of Title. The Seller, 
at Seller's expense, shall provide an abstract of title certified to a date 
subsequent to the date of this Contract (including a current Uniform 
Commercial Code Certification). Buyer shall, at Buyer's expense, obtain either 
a title opinion or an Owner's Title Insurance Policy, and, if required by the 
Lender(s), a Mortgagee's Title Insurance Policy and survey. 
Commitment for Owner's Title Insurance Policy. The premium for such 
Policy, including the attorney's fees for examination of the abstract, the 
Mortgagee's Title Insurance Policy, if any, and a loan survey (unless otherwise 
specified above), shall be paid by Seller and by Buyer. All abstracting costs in 
excess of the title insurer's average abstracting costs shall be paid by Seller. 
The Owner's Policy shall insure Buyer in an amount equal to the purchase 
price. The Mortgagee's Title Insurance Policy, if any, shall insure Lender(s) to 
the full extent of the loan(s). Such policies shall insure against unfiled 
mechanic's and materialmen's liens. </p>

<p> <u><input type='text' placeholder='{$form_field.126}' name='126'{if $user_field.126}value='{$user_field.126}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.127}' name='127'{if $user_field.127}value='{$user_field.127}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.128}' name='128'{if $user_field.128}value='{$user_field.128}'{/if} ></u> </p>

<p> <u><input type='text' placeholder='{$form_field.129}' name='129'{if $user_field.129}value='{$user_field.129}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.130}' name='130'{if $user_field.130}value='{$user_field.130}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.131}' name='131'{if $user_field.131}value='{$user_field.131}'{/if} ></u> </p>

<p><b>7.</b> SELLER'S ACCEPTANCE: Seller accepts the foregoing offer and shall sell the 
above described Property on the terms and conditions herein stated and shall 
pay the Listing Broker the compensation previously agreed upon in the Listing 
Agreement or other agreement of employment between them, which shall 
survive this Contract, for professional services rendered and to be rendered in 
this transaction. Seller further acknowledges receipt of Seller's estimate of 
expenses in regard to this transaction. </p>

<p>Accepted this <u><input type='text' placeholder='{$form_field.132}' name='132'{if $user_field.132}value='{$user_field.132}'{/if} ></u> day of <u><input type='text' placeholder='{$form_field.133}' name='133'{if $user_field.133}value='{$user_field.133}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.134}' name='134'{if $user_field.134}value='{$user_field.134}'{/if} ></u> . </p>

<p> <u><input type='text' placeholder='{$form_field.135}' name='135'{if $user_field.135}value='{$user_field.135}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.136}' name='136'{if $user_field.136}value='{$user_field.136}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.137}' name='137'{if $user_field.137}value='{$user_field.137}'{/if} ></u> </p>

<p>EARNEST MONEY RECEIPT: Received the sum of $ (Check) as Earnest Money, to 
be held by Listing Broker and applied in accordance with the items and conditions of 
the foregoing offer. </p>

<p>Seller's Initials: <u><input type='text' placeholder='{$form_field.138}' name='138'{if $user_field.138}value='{$user_field.138}'{/if} ></u> </p>

<p>Selling Broker/Sales Associate (Print) (Signature) (Date)
________________________________ ________________________ ___________ _________________ </p>

<p>(Company Name) (Broker's MLS ID) (Assoc. #) (Phone)
________________________________ _______________________ ____________ _________________ </p>

<p>Listing Broker/Sales Associate (Print) (Signature) (Date)
________________________________ _______________________ ____________ _________________ </p>

<p>(Company Name) (Broker's MLS ID) (Assoc. #) (Phone) 
________________________________ _______________________ ____________ _________________</p>

<p>SUPPLEMENTAL FINANCING AGREEMENT </p>

<p>Buyer elects to purchase on CONVENTIONAL LOAN financial terms which 
include the following: </p>

<p><b>1.</b> This sale is contingent upon the ability of Buyer to obtain and qualify for a 
Conventional Loan in the amount of $ for a period of years, with a beginning 
interest rate not to exceed % per annum (unless Buyer elects to pay higher 
interest) plus private mortgage insurance fee, if any. If the Loan described is 
not available to Buyer, or if the appraised value of the Property does not 
equal or exceed the purchase price (unless Buyer and Seller enter into a 
written agreement in settlement of the difference in sales price and appraised 
value), the Earnest Money herewith deposited shall be refunded to Buyer. </p>

<p><b>2.</b> CLOSING COSTS: (a) Loan service, origination, commitment, and/or 
discount fees not to exceed a total of $ shall be paid by Buyer and by Seller; 
(b) Buyer shall pay the first year private mortgage insurance fee, if any; (c) 
Buyer shall pay the credit report fee at time of loan application; (d) Buyer 
shall pay the appraisal fee at time of loan application; and (e) Buyer shall pay 
all other Buyer's loan closing costs. EXCEPT: <u><input type='text' placeholder='{$form_field.139}' name='139'{if $user_field.139}value='{$user_field.139}'{/if} ></u> </p>

<p><b>3.</b> LOAN APPLICATION: Buyer shall make a loan application within five (5) 
business days after acceptance hereof by Seller and shall diligently pursue 
approval thereof in a timely manner. </p>

<p><b>4.</b> BUYER'S EXPENSE: Buyer shall pay at the time of Closing, IN CASH OR 
CERTIFIED FUNDS, prepaid escrow deposits as required by the Lender, 
interest beginning the day of Closing through the end of the month, one half 
of the escrow closing fee, Buyer's recording fees, and all other funds required 
from Buyer set forth in the Contract and this Agreement. </p>

<p><b>5.</b> SELLER'S EXPENSE: Seller shall pay at the time of Closing following 
expenses as applicable: documentary stamps required, one half of escrow 
closing fee, Seller's recording fees, Lender's final inspection fee and all other 
expenses required from Seller set forth in the Contract and this Agreement. 
Seller shall satisfy all Lender's repair requirements to the Property, if any, not 
to exceed the amount specified in Paragraph 3 of the Contract. In the event 
Seller is required to provide funds at Closing, such funds shall be IN CASH OR 
CERTIFIED FUNDS. </p>

<p>Buyer elects to purchase on CASH ONLY financial terms which include 
the following: </p>

<p><b>1.</b> This is a CASH TRANSACTION. Buyer understands that this 
transaction has no financing contingency. </p>

<p><b>2.</b> BUYERS' EXPENSES: Buyer shall pay at the time of Closing, IN CASH 
OR CERTIFIED FUNDS, one half of the escrow closing fee, Buyer's 
recording fees, and all other funds required from Buyer set forth in the 
Contract and this Agreement. </p>

<p><b>3.</b> SELLER'S EXPENSES: Seller shall pay at the time of Closing, 
documentary stamps required, one half of the escrow closing fee, 
Seller's recording fees, if any, and all other expenses required from 
Seller set forth in the Contract and this Agreement. In the event Seller 
is required to provide funds at the Closing, such funds shall be IN 
CASH OR CERTIFIED FUNDS. </p>

<button id="fat-btn" data-loading-text="Saving..." class="btn btn-primary" name='save' >Save File</button>	
</form>


</div>

{include file='footer.tpl'}

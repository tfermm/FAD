{include file='header.tpl'}
<style>
.hero-unit {
padding: 60px;
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
#space {
margin-top:50px;
}
button.btn, input[type="submit"].btn {
margin-top: 1.5em;
margin-bottom: -5em;
}
</style>
<br>
<div class="hero-unit">
<form method='POST' action='{$base_url}/form/1/user/{$User->Id}'>
	<center><h3> LAST WILL AND TESTAMENT OF</h3></center>
	<hr>
	<center><u><input type='text' placeholder='{$form_field.1}' name='1' {if $user_field.1}value='{$user_field.1}'{/if}></u></center>
	<p>I <u><input type='text' placeholder='{$form_field.2}' name='2'{if $user_field.2}value='{$user_field.2}'{/if} ></u>, of <u><input type='text' placeholder='{$form_field.3}' {if $user_field.3}value='{$user_field.3}'{/if} name='3'></u>, do hereby make, publish and declare this to be my Last Will and Testament, hereby expressly revoking all wills and codicils heretofore made by me.</p>	
	
	<div class='article'>
	<center><h4> ARTICLE I </h4></center>
	</div>	

	<p>I direct my <u><input type='text' placeholder='{$form_field.4}' name='4' {if $user_field.4}value='{$user_field.4}'{/if}></u> to pay my judicially enforceable debts, funeral expenses and the administrative expenses of my estate as soon after my death as practicable. Further, I direct that all estate and inheritance taxes and other taxes in the general nature thereof (together with any interest or penalty thereon), which shall become payable upon or by reason of my death with respect to any property passing by or under the terms of this Will or any codicil to it hereafter executed by me, or with respect to the proceeds of any policy or policies of insurance on my life, or with respect to any other property (including property over which I have a taxable power of appointment) included in my gross estate for the purpose of such taxes, shall be paid by my <u><input type='text' placeholder='{$form_field.5}' name='5' {if $user_field.5}value='{$user_field.5}'{/if}></u> out of the principal of my residuary estate, and I direct that no part of any such taxes be charged against (or collected from) the person receiving or in possession of the property taxed, or receiving the benefit thereof, it being my intention that all such persons, legatees, devisees, surviving tenant by the entirety, appointees and beneficiaries receive full benefits without any diminution on account of such taxes.</p>

	<div class='article'>
	<center><h4> ARTICLE II </h4></center>
	</div>

	<p> I do give and bequeath to my <u><input type='text' placeholder='{$form_field.6}' name='6'{if $user_field.6}value='{$user_field.6}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.7}' name='7'{if $user_field.7}value='{$user_field.7}'{/if} ></u> , all my personal effects and all my tangible personal property, including automobiles owned by me and held for my personal use at the time of my death, but excluding cash on hand in bank accounts in my own name, or securities, chosen in action or other intangibles. In the event my <u><input type='text' placeholder='{$form_field.8}' name='8'{if $user_field.8}value='{$user_field.8}'{/if} ></u> shall not survive me, then I give and bequeath all such tangible personal property to my surviving children, to be divided among them as they may agree. If any dispute shall arise among my children regarding the division of such property, my <u><input type='text' placeholder='{$form_field.9}' name='9'{if $user_field.9}value='{$user_field.9}'{/if} ></u> shall have the power to make a final and binding determination as to the distribution of such property.</p>

	<div class='article'>
	<center><h4> ARTICLE III </h4></center>
	</div>

	<p>If my <u><input type='text' placeholder='{$form_field.10}' name='10'{if $user_field.10}value='{$user_field.10}'{/if} ></u> (Spouse),<u><input type='text' placeholder='{$form_field.11}' name='11'{if $user_field.11}value='{$user_field.11}'{/if} ></u> shall survive me, I give, devise and bequeath to my <u><input type='text' placeholder='{$form_field.12}' name='12'{if $user_field.12}value='{$user_field.12}'{/if} ></u> cash, securities or other property of my estate (undiminished by any estate, inheritance, succession, death or similar taxes) having a value equal to the maximum marital deduction as finally determined in my federal estate tax proceedings, less the aggregate amount of marital deductions, if any, allowed for such tax purposes by reason of property or interests in property passing or which have passed to my <u><input type='text' placeholder='{$form_field.13}' name='13'{if $user_field.13}value='{$user_field.13}'{/if} ></u> otherwise than pursuant to the provisions of this Article; provided, however, the amount of this bequest shall be reduced by the amount, if any, needed to increase my taxable estate (for federal estate tax purposes) to the largest amount that, after allowing for the unified credit against the federal estate tax, and the state death tax credit against such tax (but only to the extent that the use of such state death tax credit does not increase the death tax payable to any state),  will not result in a federal estate tax being imposed on my estate.  The term "maximum marital deduction" shall not be construed as a direction by me to exercise any election respecting the deduction of estate administration expenses, the determination of the estate tax valuation date, or any other tax election which may be available under any tax laws, only in such manner as will result in a larger allowable estate tax marital deduction than if the contrary election had been made.  My <u><input type='text' placeholder='{$form_field.14}' name='14'{if $user_field.14}value='{$user_field.14}'{/if} ></u> shall have the sole discretion to select the assets which shall constitute this bequest.  In no event, however, shall there be included in this bequest any asset or the proceeds of any asset which will not qualify for the federal estate tax marital deduction, and this bequest shall be reduced to the extent that it cannot be created with such qualifying assets.  My <u><input type='text' placeholder='{$form_field.15}' name='15'{if $user_field.15}value='{$user_field.15}'{/if} ></u> shall value any assets selected by my <u><input type='text' placeholder='{$form_field.16}' name='16'{if $user_field.16}value='{$user_field.16}'{/if} ></u> for distribution in kind as a part of this bequest at the value of such asset at the date of distribution of such asset. </p>

	 <div class='article'>
        <center><h4> ARTICLE IV </h4></center>
        </div>

	<p>All the rest of the property which I may own at the time of my death, real or personal, tangible and intangible, of whatsoever nature and wheresoever situated, including all property which I may acquire or become entitled to after the execution of this Will, including all lapsed legacies and devises, or other gifts made by this Will which fail for any reason (but excluding any property over or concerning which I may have any power of appointment), I bequeath and devise to my Trustee hereinafter named for the following uses and purposes and upon the following terms and conditions: </p>

	<p><b>1.</b> Commencing with the date of my death, my Trustee shall pay to or apply for the benefit of my <u><input type='text' placeholder='{$form_field.17}' name='17'{if $user_field.17}value='{$user_field.17}'{/if} ></u> during <u><input type='text' placeholder='{$form_field.18}' name='18'{if $user_field.18}value='{$user_field.18}'{/if} ></u> lifetime, all the net income from the trust in convenient installments but no less frequently than quarterly. </p>

	<p><b>2.</b> In addition, my Trustee may pay to or apply for the benefit of my <u><input type='text' placeholder='{$form_field.19}' name='19'{if $user_field.19}value='{$user_field.19}'{/if} ></u> such sums from the principal of the Trust as in <u><input type='text' placeholder='{$form_field.20}' name='20'{if $user_field.20}value='{$user_field.20}'{/if} ></u> sole discretion shall be necessary or advisable from time to time for the medical care, support and maintenance of my <u><input type='text' placeholder='{$form_field.21}' name='21'{if $user_field.21}value='{$user_field.21}'{/if} ></u>_ , taking into consideration to the extent my Trustee deems advisable, any other income or resources of my <u><input type='text' placeholder='{$form_field.22}' name='22'{if $user_field.22}value='{$user_field.22}'{/if} ></u> known to the Trustee. </p>

	<p><b>3.</b> In addition to the income and discretionary payments of principal from this Trust, there shall be paid to my <u><input type='text' placeholder='{$form_field.23}' name='23'{if $user_field.23}value='{$user_field.23}'{/if} ></u> during <u><input type='text' placeholder='{$form_field.24}' name='24'{if $user_field.24}value='{$user_field.24}'{/if} ></u> lifetime from the principal of this Trust upon written request during the last month of each fiscal year of the Trust an amount not to exceed during such fiscal year the amount of Five Thousand Dollars ($5,000.00) or five (5) percent of the aggregate value of the principal of the Trust on the last day of each fiscal year without reduction for the principal payment for such fiscal year, whichever is greater.  This right of withdrawal is noncumulative so that if my <u><input type='text' placeholder='{$form_field.25}' name='25'{if $user_field.25}value='{$user_field.25}'{/if} ></u> does not withdraw, during such fiscal year, the full amount to which (he/she) is entitled under this Article, <u><input type='text' placeholder='{$form_field.26}' name='26'{if $user_field.26}value='{$user_field.26}'{/if} ></u> right to withdraw the amount not withdrawn shall lapse at the end of that fiscal year. </p>

	<p><b>4.</b> The provisions of this Trust in favor of my <u><input type='text' placeholder='{$form_field.27}' name='27'{if $user_field.27}value='{$user_field.27}'{/if} ></u> shall not be subject to attachment or be liable to be taken over for my <u><input type='text' placeholder='{$form_field.28}' name='28'{if $user_field.28}value='{$user_field.28}'{/if} ></u> debts by any legal process whatever; and if my <u><input type='text' placeholder='{$form_field.29}' name='29'{if $user_field.29}value='{$user_field.29}'{/if} ></u> shall attempt to alienate, dispose of, anticipate, encumber, or create a charge upon the income or principal to which <u><input type='text' placeholder='{$form_field.30}' name='30'{if $user_field.30}value='{$user_field.30}'{/if} ></u> is entitled; or if <u><input type='text' placeholder='{$form_field.31}' name='31'{if $user_field.31}value='{$user_field.31}'{/if} ></u> shall become bankrupt or make or attempt to make any assignment for the benefit of creditors; or if the income or principal of this trust shall in any way be attached, diverted, seized or sequestered by any legal process, then the Trustee may immediately cease to pay income or principal to my <u><input type='text' placeholder='{$form_field.32}' name='32'{if $user_field.32}value='{$user_field.32}'{/if} ></u> , and may, thereafter, apply such part of the income or principal or even a whole thereof as the Trustee shall deem wise for my <u><input type='text' placeholder='{$form_field.33}' name='33'{if $user_field.33}value='{$user_field.33}'{/if} ></u>  maintenance and support. </p>

	<p><b>5.</b> Upon the death of my <u><input type='text' placeholder='{$form_field.34}' name='34'{if $user_field.34}value='{$user_field.34}'{/if} ></u> , the entire remaining principal of the Trust shall be distributed in equal shares to my children, <u><input type='text' placeholder='{$form_field.35}' name='35'{if $user_field.35}value='{$user_field.35}'{/if} ></u> . In the event any child of mine is not living at the time of my <u><input type='text' placeholder='{$form_field.36}' name='36'{if $user_field.36}value='{$user_field.36}'{/if} ></u> death, then I give such deceased child's share to the issue of such deceased child of mine, per stirpes. If any child of mine fails to survive me in accordance with the provisions of this Will and has died without issue, then such child's share shall be distributed among my surviving children, per stirpes.  </p>

	<p><b>6.</b> In the event any beneficiary under this Article has not reached the age of twenty-one (21) years, then the share of any such beneficiary shall be retained in trust and held, managed and distributed for the beneficiary's benefit.  So much of the income from this trust and, if net income be at any time insufficient, so much of the principal of this trust as may be deemed necessary in the sole discretion of my Trustee (taking into account all other sources of income or support of the beneficiary of which my Trustee has knowledge) may be either paid to or expended on behalf of the beneficiary (whichever in the Trustee's sole discretion is deemed most appropriate) in order to ensure the support, maintenance, health, and education (including collegiate, vocational, professional, etc.) of the beneficiary. When the beneficiary reaches the age of twenty-one (21) years, the principal, together with any accumulations of income, shall be paid over and distributed to the beneficiary. In the event that the beneficiary should fail to attain the age of twenty-one (21) years, the property being held for the beneficiary shall be paid over and distributed (i) to the beneficiary's issue, per stirpes, or in default of such, (ii) to the beneficiary's brothers and sisters and descendants of deceased brothers and sisters, per stirpes, or, in default of such, (iii) to my heirs, determined as if I had died at the time of such beneficiary's death, pursuant to the General Statutes of <u><input type='text' placeholder='{$form_field.37}' name='37'{if $user_field.37}value='{$user_field.37}'{/if} ></u> as written on the date of this Will. </p>

	<p>If, at any time, the property held in trust for any beneficiary under this Article is an amount so small that, in the sole discretion of my Trustee, the continuation of the trust is not in the overall best interest of the beneficiary, then my trustee may (i) pay over and deliver such property to the beneficiary, or (ii) convert the trust assets into qualifying property and pay over and deliver such property to a suitable person as Custodian for the beneficiary and so terminate the trust. </p>

	 <div class='article'>
        <center><h4> ARTICLE V </h4></center>
        </div>

	<p>My <u><input type='text' placeholder='{$form_field.38}' name='38'{if $user_field.38}value='{$user_field.38}'{/if} ></u> or <u><input type='text' placeholder='{$form_field.39}' name='39'{if $user_field.39}value='{$user_field.39}'{/if} ></u> personal representative may disclaim or renounce in whole or in part any gift, benefit, provision, or power in <u><input type='text' placeholder='{$form_field.40}' name='40'{if $user_field.40}value='{$user_field.40}'{/if} ></u> favor, including, without limiting the generality of the foregoing, any benefit payable to <u><input type='text' placeholder='{$form_field.41}' name='41'{if $user_field.41}value='{$user_field.41}'{/if} ></u> as my surviving beneficiary under any retirement plan, IRA, annuity, or insurance policy.  Unless otherwise specifically provided elsewhere in my Will or any Declaration of Trust in existence at the time of my death, the gift, benefit, provision, or power, to the extent of the disclaimer or renunciation, shall become part of the residue of my estate and be disposed of as provided in Article <u><input type='text' placeholder='{$form_field.42}' name='42'{if $user_field.42}value='{$user_field.42}'{/if} ></u> of my Will. </p>

	 <div class='article'>
        <center><h4> ARTICLE VI </h4></center>
        </div>

	<p>I appoint <u><input type='text' placeholder='{$form_field.43}' {if $user_field.43}value='{$user_field.43}'{/if} name='43'></u> as my <u><input type='text' placeholder='{$form_field.44}' name='44'{if $user_field.44}value='{$user_field.44}'{/if} ></u> .
  If <u><input type='text' placeholder='{$form_field.45}' name='45'{if $user_field.45}value='{$user_field.45}'{/if} ></u> should not survive me, or is unwilling or unable to complete the administration of my estate, I appoint <u><input type='text' placeholder='{$form_field.46}' name='46'{if $user_field.46}value='{$user_field.46}'{/if} ></u> as my <u><input type='text' placeholder='{$form_field.47}' name='47'{if $user_field.47}value='{$user_field.47}'{/if} ></u> . I direct that my <u><input type='text' placeholder='{$form_field.48}' name='48'{if $user_field.48}value='{$user_field.48}'{/if} ></u> or Contingent <u><input type='text' placeholder='{$form_field.49}' name='49'{if $user_field.49}value='{$user_field.49}'{/if} ></u> , whichever shall serve, shall not be required to post bond. </p>

	 <div class='article'>
        <center><h4> ARTICLE VII </h4></center>
        </div>

	<p>I appoint <u><input type='text' placeholder='{$form_field.50}' name='50'{if $user_field.50}value='{$user_field.50}'{/if} ></u> , as Trustee of any trust created herein. If <u><input type='text' placeholder='{$form_field.51}' name='51'{if $user_field.51}value='{$user_field.51}'{/if} ></u> should not survive me, or is unwilling or unable to serve, I appoint <u><input type='text' placeholder='{$form_field.52}' name='52'{if $user_field.52}value='{$user_field.52}'{/if} ></u> , as Trustee of any trust created herein.  I direct that my Trustee shall not be required to post bond. </p>

	 <div class='article'>
        <center><h4> ARTICLE VIII </h4></center>
        </div>

	<p>I hereby grant to my <u><input type='text' placeholder='{$form_field.53}' name='53'{if $user_field.53}value='{$user_field.53}'{/if} ></u> and also to the Trustee of any trust established hereunder, the continuing absolute, discretionary power to deal with any property, real or personal, held in my estate or in any trust, as freely as I might in the handling of my own affairs.  Such power may be exercised independently and without the prior or subsequent approval of any court or judicial authority, and no person dealing with the <u><input type='text' placeholder='{$form_field.54}' name='54'{if $user_field.54}value='{$user_field.54}'{/if} ></u> or Trustee shall be required to inquire into the propriety of any of their actions.  Without limiting any of the powers that my Trustee or <u><input type='text' placeholder='{$form_field.55}' name='55'{if $user_field.55}value='{$user_field.55}'{/if} ></u> may have under the laws of <u><input type='text' placeholder='{$form_field.56}' name='56'{if $user_field.56}value='{$user_field.56}'{/if} ></u> or of any state wherein the trust fund or assets of my estate may be situated, I hereby grant to my Trustee and <u><input type='text' placeholder='{$form_field.57}' name='57'{if $user_field.57}value='{$user_field.57}'{/if} ></u> the following specific powers and authority in addition to and not in substitution of powers conferred by law: </p>

	<p>A  To make distributions in cash or in specific property, real or personal, or an undivided interest in such property, or partly in cash and partly in such property, and to do so without regard to the income tax basis for federal tax purposes of specific property allocated to any beneficiary. </p>

	<p>B.  To sell, transfer or convey, at public or private sale and at such price or such terms and in such manner as said Trustee or <u><input type='text' placeholder='{$form_field.58}' name='58'{if $user_field.58}value='{$user_field.58}'{/if} ></u> shall deem best, any property, real or personal, tangible or intangible, constituting a part or all of my estate or the trust, and to execute deeds or other instruments necessary to effect such sale, transfer or conveyance. </p>

	<p>C.  To compromise and settle claims in favor of or against my estate or the trust estates. </p>

	<p>D.  To hold and exercise any and all powers set forth in <u><input type='text' placeholder='{$form_field.59}' name='59'{if $user_field.59}value='{$user_field.59}'{/if} ></u> General Statutes Sections <u><input type='text' placeholder='{$form_field.60}' name='60'{if $user_field.60}value='{$user_field.60}'{/if} ></u> as written on the date of my death, and these powers are hereby incorporated by reference and made a part of this instrument and such powers are intended to be in addition to and not in substitution of the powers conferred by law. </p>	

	 <div class='article'>
        <center><h4> ARTICLE IX </h4></center>
        </div>

	<p>Any person who fails to survive me by <u><input type='text' placeholder='{$form_field.61}' name='61'{if $user_field.61}value='{$user_field.61}'{/if} ></u> days shall be deemed to have predeceased me for purposes of succession to property under this Will. </p>

	 <div class='article'>
        <center><h4> ARTICLE X </h4></center>
        </div>

	<p><p>If my <u><input type='text' placeholder='{$form_field.62}' name='62'{if $user_field.62}value='{$user_field.62}'{/if} ></u> and I shall die under such circumstances as to render it doubtful as to which of us died first, it shall be conclusively presumed that my <u><input type='text' placeholder='{$form_field.63}' name='63'{if $user_field.63}value='{$user_field.63}'{/if} ></u>  <u><input type='text' placeholder='{$form_field.64}' name='64'{if $user_field.64}value='{$user_field.64}'{/if} ></u> me.</p>
 
<p>IN WITNESS WHEREOF, I sign, seal, publish and declare this instrument to be my Last Will and Testament, this the <u><input type='text' placeholder='{$form_field.65}' name='65'{if $user_field.65}value='{$user_field.65}'{/if} ></u> day of <u><input type='text' placeholder='{$form_field.66}' name='66'{if $user_field.66}value='{$user_field.66}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.67}' name='67'{if $user_field.67}value='{$user_field.67}'{/if} ></u> .</p> </p>

	<p> <u><input type='text' placeholder='{$form_field.68}' name='68'{if $user_field.68}value='{$user_field.68}'{/if} ></u> </p>

	<p>I, <u><input type='text' placeholder='{$form_field.69}' name='69'{if $user_field.69}value='{$user_field.69}'{/if} ></u> , the <u><input type='text' placeholder='{$form_field.70}' name='70'{if $user_field.70}value='{$user_field.70}'{/if} ></u> sign my name to this instrument this the <u><input type='text' placeholder='{$form_field.71}' name='71'{if $user_field.71}value='{$user_field.71}'{/if} ></u> day of <u><input type='text' placeholder='{$form_field.72}' name='72'{if $user_field.72}value='{$user_field.72}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.73}' name='73'{if $user_field.73}value='{$user_field.73}'{/if} ></u> and being first duly sworn, do hereby declare to the undersigned authority that I sign and execute this instrument as my free and voluntary act for the purposes therein expressed, and that I am eighteen (18) years of age or older, of sound mind, and under no constraint or undue influence. </p>

	<p> <u><input type='text' placeholder='{$form_field.74}' name='74'{if $user_field.74}value='{$user_field.74}'{/if} ></u> </p>

	<p>We, <u><input type='text' placeholder='{$form_field.75}' name='75'{if $user_field.75}value='{$user_field.75}'{/if} ></u> and <u><input type='text' placeholder='{$form_field.76}' name='76'{if $user_field.76}value='{$user_field.76}'{/if} ></u> , the witnesses, sign our names to this instrument, being first duly sworn, and do hereby declare to the undersigned authority that the <u><input type='text' placeholder='{$form_field.77}' name='77'{if $user_field.77}value='{$user_field.77}'{/if} ></u> signs and executes this instrument as <u><input type='text' placeholder='{$form_field.78}' name='78'{if $user_field.78}value='{$user_field.78}'{/if} ></u> Last Will and Testament and <u><input type='text' placeholder='{$form_field.79}' name='79'{if $user_field.79}value='{$user_field.79}'{/if} ></u> signs it willingly, and that each of us, in the presence and hearing of the <u><input type='text' placeholder='{$form_field.80}' name='80'{if $user_field.80}value='{$user_field.80}'{/if} ></u> , hereby signs this Will as witness to the <u><input type='text' placeholder='{$form_field.81}' name='81'{if $user_field.81}value='{$user_field.81}'{/if} ></u> signing, and that to the best of our knowledge the <u><input type='text' placeholder='{$form_field.82}' name='82'{if $user_field.82}value='{$user_field.82}'{/if} ></u> is eighteen (18) years of age or older, of sound mind, and under no constraint or undue influence. </p>

	<p>STATE OF <u><input type='text' placeholder='{$form_field.83}' name='83'{if $user_field.83}value='{$user_field.83}'{/if} ></u>
 
	<p>COUNTY OF <u><input type='text' placeholder='{$form_field.84}' name='84'{if $user_field.84}value='{$user_field.84}'{/if} ></u> </p>
 
	<p>Subscribed, sworn to and acknowledged before me by <u><input type='text' placeholder='{$form_field.85}' name='85'{if $user_field.85}value='{$user_field.85}'{/if} ></u> , the <u><input type='text' placeholder='{$form_field.86}' name='86'{if $user_field.86}value='{$user_field.86}'{/if} ></u> , and subscribed and sworn to before me by <u><input type='text' placeholder='{$form_field.87}' name='87'{if $user_field.87}value='{$user_field.87}'{/if} ></u> and <u><input type='text' placeholder='{$form_field.88}' name='88'{if $user_field.88}value='{$user_field.88}'{/if} ></u> , witnesses, this the <u><input type='text' placeholder='{$form_field.89}' name='89'{if $user_field.89}value='{$user_field.89}'{/if} ></u> day of <u><input type='text' placeholder='{$form_field.90}' name='90'{if $user_field.90}value='{$user_field.90}'{/if} ></u> , <u><input type='text' placeholder='{$form_field.91}' name='91'{if $user_field.91}value='{$user_field.91}'{/if} ></u> .</p>
 
	<p> <u><input type='text' placeholder='{$form_field.92}' name='92'{if $user_field.92}value='{$user_field.92}'{/if} ></u> Notary Public</p>
 
	<p>My Commission Expires : <u><input type='text' placeholder='{$form_field.93}' name='93'{if $user_field.93}value='{$user_field.93}'{/if} ></u> </p> </p>


<button id="fat-btn" data-loading-text="Saving..." class="btn btn-primary" name='save' >Save File</button>	
</form>

	
</div>
{include file='footer.tpl'}


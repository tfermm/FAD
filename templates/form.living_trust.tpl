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
margin-top:75px;
}
form {
margin: 0 0 20px;
Margin-left: 2em;
margin-right: 2em;
}
button.btn, input[type="submit"].btn {
margin-top: 1.5em;
margin-bottom: -5em;
}

</style>

<div class="hero-unit">
<form method='POST' action='{$base_url}/form/2/user/{$User->Id}'>
<center><h3>LIVING TRUST</h3></center>
<hr>
<p>TRUST AGREEMENT made between the "Settlor", and the "Trustee" do
enter into a LIVING REVOCABLE TRUST under the following terms: </p>

<p><b>1.</b>  TRUST PROPERTY.  Settlor, for good and valuable consideration,
    exchanges, assigns, and transfers to the Trust attached Schedule
    A, and additional items at any time, for the beneficiaries as set
    out in attached Schedule B. </p>

<p><b>2.</b>  TRUSTEE POWERS.  The Trustee shall have the following powers: </p>

<p><b>(a)</b>  To buy, sell, hold, convey, encumber, rent, hypothecate,
         repair, destroy, improve, deduct, retain, expend, pay out,
         incur expenses, invest, lease any property, money, or value
         of the Trust, or any additional property which may be
         received by the Trustee, whether or not income producing,
         as is deemed appropriate by the Trustee. </p>

<p><b> (b)</b>  To compromise, settle, arbitrate, sign, agree, negotiate,
         or defend any agreement, contract, claim or demand in favor
         of or against the Trust or act through any agent or
         attorney-in-fact. </p>

<p><b>(c)</b>  To borrow or lend money for any purpose, and/or to secure
         the repayment by note, mortgage, trust deed, contract,
         interest in, security, pledge, or encumbering the Trust. </p>

<p><b>(d)</b>  The Trustee may freely act under all or any of the powers
         of this Agreement in all matters concerning the Trust, 
         without the necessity of obtaining the consent or permission
         of any interested person or of any court.  The powers
         granted to the Trustee may be exercised in whole or in part,
         and shall be supplementary to and not exclusive of the
         general powers of a trustee pursuant to law, and shall
         include all powers necessary to carry them into effect. </p>

<p><b>(e)</b>  Each Trustee acknowledges and enters into this contract and
         position as Trustee by any positive action regarding this
         Trust such as signing any bank document, or other written
         document as a Trustee of this Trust.  Trustee may open bank
         accounts requiring only one signature.  Trustee has the
         power to appoint signers of bank accounts. </p>

<p><b>3.</b>  CORPUS AND INCOME.  The Trustee shall determine the allocation
    between corpus and income and as to beneficiaries. </p>

<p><b>4.</b>  TRUSTEES.
    Any Trustee shall have the power to appoint Successor or 
    additional Trustees.  Each Trustee shall have the same power and 
    authority as any other Trustee.  </p>

<p><b>5.</b>  BENEFICIARIES.  No title to any of the Trust assets shall vest in
    any Beneficiary until the actual termination of this Trust, and
    no asset shall be liable for any debts of any Beneficiary. </p>

<p><b>6.</b>  COMPENSATION OF TRUSTEE.  The Trust shall pay all expenses and
    shall pay the Trustee nine hundred and fifty dollars
    annually as reimbursement for undocumented expenses. </p>


<p><b>7.</b>  BOND.  No Trustee shall give any bond or other security.  </p>

<p><b>8.</b>  REVOCABILITY.  This Trust is revocable, and the Settlor does
    not waive all rights and powers, whether individually or in
    conjunction with others, and regardless of when or from what
    source he may have acquired such rights or powers, to alter, 
    amend, revoke, or terminate the Trust, in whole or in part.
    The Trustee may further define or amend this Trust to conform
    to insurance, banks, or for the benefit of the beneficiaries. </p>

<p><b>9.</b>  TERM.  The term of this Trust is twenty-one years.  This Trust
    shall automatically expire unless renewed.  Renewal shall only
    take place upon the express written notice by any party to this
    Trust prior to expiration with the same terms and conditions. </p>

<p><b>10.</b> COPIES.  An exact reproduction of this document, such as a
    photocopy or fax shall be relied upon as an original document.
    This trust replaces and supercedes all previous trust agreements,
    if any existed; and has been executed under the Laws of Contract
    of the United States and situs shall be wherein assets domicile. </p>

<p><b>Dated:</b><u><input type='text' placeholder='{$form_field.94}' name='94'{if $user_field.94}value='{$user_field.94}'{/if} ></u> </p>

<p><b>Settlor:</b><u><input type='text' placeholder='{$form_field.95}' name='95'{if $user_field.95}value='{$user_field.95}'{/if} ></u> </p>

<p><b>Trustee:</b><u><input type='text' placeholder='{$form_field.96}' name='96'{if $user_field.96}value='{$user_field.96}'{/if} ></u> </p>

<p>Each of us declares under penalty of perjury under the laws of the
United States of America that the above signatories signed this
document in our presence, all of us being present at the same time,
and we now sign below as witnesses, declaring that the signatories
appear to be of sane mind and under no duress, fraud or undue
influence. </p>


<p><b>Witness:</b><u><input type='text' placeholder='{$form_field.97}' name='97'{if $user_field.97}value='{$user_field.97}'{/if} ></u> </p>

<p><b>Witness:</b><u><input type='text' placeholder='{$form_field.98}' name='98'{if $user_field.98}value='{$user_field.98}'{/if} ></u> </p>

<p><b>Witness:</b><u><input type='text' placeholder='{$form_field.99}' name='99'{if $user_field.99}value='{$user_field.99}'{/if} ></u> </p>


<p>SCHEDULE A - LIST OF ASSETS AND PROPERTY </p>

<p> In accordance with the Trust Indenture of this trust and now
entered into this date by and between the SETTLOR hereto and the
TRUSTEE, the following described property is hereby conveyed to the
Trust, and accepted by the Trustee by and on behalf of the Trust.
This list of property is comprehensive, and is the description of
those certain properties which were agreed upon and known to all
parties of the Trust at the time of the execution of the Trust
Indenture, and includes all properties transferred and accepted, as
follows: </p>


<p>VALUABLE CONSIDERATION, and other items as accepted from
time-to-time and noted by title change, banking assets, stock, Bill
of Sale, or additional Schedules to this Trust. </p>

<p>Various assets as may be added or replaced from time-to-time. </p>

<p><b>Dated:</b><u><input type='text' placeholder='{$form_field.100}' name='100'{if $user_field.100}value='{$user_field.100}'{/if} ></u> </p>

<button id="fat-btn" data-loading-text="Saving..." class="btn btn-primary" name='save' >Save File</button>

</form>
</div>
{include file='footer.tpl'}

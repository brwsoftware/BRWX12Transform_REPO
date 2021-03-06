<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CLM">

    <xsl:if test="normalize-space(CLM01)">
      <tr>
        <td class="label">Patient Control Number: </td>
        <td class="data1">
          <xsl:value-of select="CLM01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM02)">
      <tr>
        <td class="label">Total Claim Charge Amount: </td>
        <td class="data1">
          <xsl:value-of select="CLM02"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM05-01)">
      <tr>
        <td class="label">Place of Service Code: </td>
        <td class="data1">
          <xsl:value-of select="CLM05-01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM05-02)">
      <tr>
        <td class="label">Facility Code Qualifer: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM05-02 = 'B'">
              Place of Service Codes for Professional or Dental Services 
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM05-02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM05-03)">
      <tr>
        <td class="label">Claim Frequency Code: </td>
        <td class="data1">
          <xsl:value-of select="CLM05-03"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM06)">
      <tr>
        <td class="label">Provider or Supplier Signature Indicator: </td>
        <td class="data1">
          <xsl:value-of select="CLM06"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM07)">
      <tr>
        <td class="label">Assignment or Plan Participation Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM07 = 'A'">
              Assigned
            </xsl:when>
            <xsl:when test="CLM07 = 'B'">
              Assignment Accepted on Clinical Lab Services Only
            </xsl:when>
            <xsl:when test="CLM07 = 'C'">
              Not Assigned
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM07"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM08)">
      <tr>
        <td class="label">Benefits Assignment Certification Indicator: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM08 = 'N'">
              No
            </xsl:when>
            <xsl:when test="CLM08 = 'W'">
              Not Applicable
            </xsl:when>
            <xsl:when test="CLM08 = 'Y'">
              Yes
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM08"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM09)">
      <tr>
        <td class="label">Release of Information: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM09 = 'I'">
              Informed Consent to Release Medical Information for Conditions or Diagnoses Regulated by Federal Statutes
            </xsl:when>
            <xsl:when test="CLM09 = 'Y'">
              Yes, Provider has a Signed Statement Permitting Release of Medical Billing Data Related to a Claim
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM09"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM10)">
      <tr>
        <td class="label">Release of Information: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM10 = 'P'">
              Signature generated by provider because the patient was not physically present for services
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM10"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM11-01)">
      <tr>
        <td class="label">Related Causes Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM11-01 = 'AA'">
              Auto Accident
            </xsl:when>
            <xsl:when test="CLM11-01 = 'EM'">
              Employment
            </xsl:when>
            <xsl:when test="CLM11-01 = 'OA'">
              Other Accident
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM11-01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM11-02)">
      <tr>
        <td class="label">Related Causes Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM11-02 = 'AA'">
              Auto Accident
            </xsl:when>
            <xsl:when test="CLM11-02 = 'EM'">
              Employment
            </xsl:when>
            <xsl:when test="CLM11-02 = 'OA'">
              Other Accident
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM11-02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM11-04)">
      <tr>
        <td class="label">State or Province: </td>
        <td class="data1">
          <xsl:value-of select="CLM11-04"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM11-05)">
      <tr>
        <td class="label">Country: </td>
        <td class="data1">
          <xsl:value-of select="CLM11-05"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM12)">
      <tr>
        <td class="label">Related Causes Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM12 = '02'">
              Physically Handicapped Children’s Program
            </xsl:when>
            <xsl:when test="CLM12 = '03'">
              Special Federal Funding
            </xsl:when>
            <xsl:when test="CLM12 = '05'">
              Disability
            </xsl:when>
            <xsl:when test="CLM12 = '09'">
              Second Opinion or Surgery
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM12"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLM20)">
      <tr>
        <td class="label">Delay Reason Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLM20 = '1'">
              Proof of Eligibility Unknown or Unavailable
            </xsl:when>
            <xsl:when test="CLM20 = '2'">
              Litigation
            </xsl:when>
            <xsl:when test="CLM20 = '3'">
              Authorization Delays
            </xsl:when>
            <xsl:when test="CLM20 = '4'">
              Delay in Certifying Provider
            </xsl:when>
            <xsl:when test="CLM20 = '5'">
              Delay in Supplying Billing Forms
            </xsl:when>
            <xsl:when test="CLM20 = '6'">
              Delay in Delivery of Custom-made Appliances
            </xsl:when>
            <xsl:when test="CLM20 = '7'">
              Third Party Processing Delay
            </xsl:when>
            <xsl:when test="CLM20 = '8'">
              Delay in Eligibility Determination
            </xsl:when>
            <xsl:when test="CLM20 = '9'">
              Original Claim Rejected or Denied Due to a Reason Unrelated to the Billing Limitation Rules
            </xsl:when>
            <xsl:when test="CLM20 = '10'">
              Administration Delay in the Prior Approval Process
            </xsl:when>
            <xsl:when test="CLM20 = '11'">
              Other
            </xsl:when>
            <xsl:when test="CLM20 = '15'">
              Natural Disaster
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLM20"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

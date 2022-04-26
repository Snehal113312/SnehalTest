<?xml version="1.0" encoding="ISO-8859-1" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">

	<xsl:include href="LeaseStyles.xsl"/>
	<xsl:template name="CompanyDetails">
            <fo:table width="6cm" padding-top="5pt" padding-left="5pt" padding-right="5pt" padding-bottom="5pt">
			<fo:table-column column-width="6cm"/>
			<fo:table-body>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
						<fo:block font-size="10pt">
							<xsl:value-of select="//CompanyName"/>
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
				<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
						<fo:block font-size="10pt">
							Anbieter: 
							<!-- <xsl:value-of select="//Brand"/>&#xA0;Auto Abo -->
							<xsl:choose>
								<xsl:when test="//Brand[.='VW']">
									 VW Auto Abo
								</xsl:when>
								<xsl:when test="//Brand[.='VWFS']">
									VWFS Auto Abo
								</xsl:when>
								<xsl:when test="//Brand[.='CUPRA']">
									CUBRA Auto Abo
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="//Brand"/>&#xA0;Auto Abo
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					<xsl:value-of select="//CompanyStreet"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					<xsl:value-of select="//CompanyAddress1"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					Tel: <xsl:value-of select="//PhoneNo"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					Fax: <xsl:value-of select="//FaxNo"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					Mail: 
					<!-- <fo:inline color="blue"><xsl:value-of select="//Email"/></fo:inline> -->
					<xsl:choose>
								<xsl:when test="//Brand[.='VW']">
									<fo:inline color="blue"> vwautoabo@euroleasing.eu</fo:inline>
								</xsl:when>
								<xsl:when test="//Brand[.='VWFS']">
									<fo:inline color="blue">autoabo@vwfs-rac.de</fo:inline>
								</xsl:when>
								<xsl:when test="//Brand[.='CUPRA']">
									<fo:inline color="blue">cupraabo@euroleasing.eu</fo:inline>
								</xsl:when>
								<xsl:otherwise>
									<fo:inline color="blue"><xsl:value-of select="//Email"/></fo:inline>
								</xsl:otherwise>
							</xsl:choose>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					Steuernummer: <xsl:value-of select="//CompanyRegNo"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" text-align="left">
				<fo:block font-size="10pt">
					Umsatzsteuer-ID: <xsl:value-of select="//CompanyVatNo"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="InvoiceDetails">
            <fo:table width="7cm" padding-top="5pt" padding-left="5pt" padding-right="5pt" padding-bottom="5pt">
			<fo:table-column column-width="7cm"/>
			
			<fo:table-body>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri"  xsl:use-attribute-sets="Pagehdr1Black" border-style="solid" border-width="1pt" text-align= "center">
						<fo:block font-size="10pt">
							
							<xsl:if test="//Invoice/InvType[.='A']">
									<xsl:choose>
									<xsl:when test="/Invoices/DrvInv/DebitNote[.='Y']"> 
									Rechnung
									</xsl:when>
									<xsl:otherwise>
									Gutschrift 
									</xsl:otherwise>
									</xsl:choose>
									</xsl:if> 
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt">
						<fo:block font-size="10pt">
							<!-- Rechnungsnummer -->
							Rechnungsnummer: <fo:inline font-weight="bold"><xsl:value-of select="//InvoiceNo"/></fo:inline>
						</fo:block>
					</fo:table-cell>

		</fo:table-row>
		<fo:table-row>
		<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt">
						<fo:block font-size="10pt" text-align= "left">
							Kundennummer: 
							<!-- <xsl:value-of select="//DriverDet/Code"/> -->
							<xsl:choose>
									<xsl:when test="//DriverDet/Code[.!='0']"> 
									<xsl:value-of select="//DriverDet/Code"/>
									</xsl:when>
									<xsl:otherwise>
									<xsl:value-of select="//DebitorDetail/DebitorCode"/> 
									</xsl:otherwise>
									</xsl:choose>
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt">
						<fo:block font-size="10pt">
							Datum: <xsl:value-of select="concat(substring(//Date, 1, 2), '.', substring(//Date, 4, 2), '.', substring(//Date, 7, 4))"/>
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="0pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt">
						<fo:block>
							&#xA0;
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt">
						<fo:block>
							&#xA0;
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt">
						<fo:block>
							&#xA0;
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
		<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-top-style="solid" border-width="1pt" font-family="Calibri" text-align= "center">
						<fo:block font-size="10pt">
							Bitte geben Sie die Rechnungsnummer
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
		<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt" font-family="Calibri" text-align= "center">
						<fo:block font-size="10pt">
							bei jeglicher Korrespondenz an
						</fo:block>
					</fo:table-cell>
		</fo:table-row>
		</fo:table-body>
		</fo:table>
	</xsl:template>
	
	<xsl:template name="Title">
		<fo:table width="19cm" padding-top="5pt" padding-left="5pt" padding-right="5pt" padding-bottom="5pt" border-style="solid" border-width="1pt">
			<fo:table-column column-width="6cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-column column-width="7cm"/>
			<fo:table-body>
				<fo:table-row>
				<fo:table-cell padding-top="0pt" padding-bottom="0pt"  text-align= "left">
						<fo:block font-size="10pt">
							 <xsl:call-template name="CompanyDetails"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt" padding-left="0pt" font-family="Calibri" border-style="solid" border-width="0pt" text-align= "right">
						<fo:block font-size="10pt">
							<xsl:if test="//PrintLogoYN[.='Y']">
																	<fo:external-graphic height="1cm" width="2cm" alignment-baseline="text-top">
																	<xsl:attribute name="src"><xsl:value-of select="//LogoImgPath"/></xsl:attribute>
																	</fo:external-graphic>
															</xsl:if>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt"  border-style="solid" border-width="1pt"  font-family="Calibri">
						<fo:block font-size="10pt" >
							<xsl:call-template name="InvoiceDetails"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- <xsl:value-of select="//CompanyName"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							
							<!-- Mietvertragsnummer: <fo:inline font-weight="bold"><xsl:value-of select="//InvoiceNo"/></fo:inline> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Vermieter: Auto Abo -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Kundennummer: <xsl:value-of select="//AccountNo"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- <xsl:value-of select="//CompanyStreet"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Datum: <xsl:value-of select="concat(substring(//Date, 1, 2), '.', substring(//Date, 4, 2), '.', substring(//Date, 7, 4))"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- <xsl:value-of select="//CompanyAddress1"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt"> -->
						<!-- <fo:block> -->
							
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Tel: <xsl:value-of select="//PhoneNo"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt"> -->
						<!-- <fo:block> -->
							
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- FAX: <xsl:value-of select="//FaxNo"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt"> -->
						<!-- <fo:block font-weight="10pt"> -->
							
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Mail: <fo:inline color="blue"><xsl:value-of select="//Email"/></fo:inline> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-top-style="solid" border-width="1pt" font-family="Calibri" text-align= "center"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Bitte geben Sie die Rechnungsnummer -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Steuernummer: <xsl:value-of select="//CompanyRegNo"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt" font-family="Calibri" text-align= "center"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- bei jeglicher Korrespondenz an -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Umsatzsteuer-ID: <xsl:value-of select="//CompanyVatNo"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" border-left-style="solid" border-width="1pt" font-family="Calibri"> -->
						<!-- <fo:block> -->
							
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="RenterDetails">
		<fo:table width="19cm" padding-top="5pt" padding-left="5pt" padding-right="5pt" padding-bottom="5pt" border-style="solid" border-width="1pt">
			<fo:table-column column-width="9.5cm"/>
			<fo:table-column column-width="9.5cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-right="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri">
						<fo:block font-size="10pt" font-weight="bold">
							Rechnungsempfänger
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-right="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri" border-left-style="solid" border-width="1pt">
						<fo:block font-size="10pt" font-weight="bold">
							Vertragsdaten
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-right="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							<xsl:choose>
								<xsl:when test="//DriverDet/Code[.!='0']">
									<xsl:call-template name="BillingInfoDriver"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="BillingInfoDebitor"/>
								</xsl:otherwise>
							</xsl:choose>
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-left-style="solid" border-width="1pt">
						<fo:block font-size="10pt">
							<fo:table>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												Mietvertragsnummer: <xsl:value-of select="//Invoice/Aggno"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												Reservierungsnummer: <xsl:value-of select="//Invoice/ResNo"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												Mietbeginn: <xsl:value-of select="//Invoice/AgrOutDate"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												Mindestvertragsdauer:&#xA0;<xsl:value-of select="//MinDuration"/>&#xA0;Monate
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												&#xA0;
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												&#xA0;
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt" font-weight="bold"> -->
												<!-- Fahrzeug -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- Gruppe reserviert: <xsl:value-of select="//ResGroup"/> -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- Gruppe gemietet: <xsl:value-of select="//RentedGroup"/> -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- Gruppe berechnet: <xsl:value-of select="//ChargeGroup"/> -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- &#xA0; -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												
												<!-- Tarifinformation: <xsl:value-of select="//RateName"/> -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												
												<!-- Paketpreis: <xsl:value-of select="//PricePerMonth"/> EUR/Monat  -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- KM pro Monat:  <xsl:value-of select="//KMPerMonth"/> &#xA0;km / Monat -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- Preis pro zusätzlichem KM: <xsl:value-of select="//AddPricePerKM"/> &#xA0; EUR  -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- Selbstbehalt: <xsl:value-of select="//Deductible"/> EUR -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<!-- <fo:table-row> -->
										<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri"> -->
											<!-- <fo:block font-size="10pt"> -->
												<!-- Haftungsreduzierung: 0 EUR / Monat -->
											<!-- </fo:block> -->
										<!-- </fo:table-cell> -->
									<!-- </fo:table-row> -->
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												&#xA0;
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												&#xA0;
											</fo:block>
										</fo:table-cell>
									</fo:table-row><fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												&#xA0;
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
											<fo:block font-size="10pt">
												&#xA0;
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="BillingInfoDriver">
		<fo:table>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Vor-/Nachname: <xsl:value-of select="//DriverDet/Name"/>
						
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Straße: <xsl:value-of select="//DriverDet/Address"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							PLZ / Ort: <xsl:value-of select="//DriverDet/ZipCode"/>&#xA0;<xsl:value-of select="//DriverDet/City"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Land: <xsl:value-of select="//DriverDet/drvCountry"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Telefonnummer: 
							<xsl:choose>
								<xsl:when test="//DriverDet/HomeTel[.!='']">
									<xsl:value-of select="//DriverDet/HomeTel"/>
								</xsl:when>
								<xsl:when test="//DriverDet/OfficeTel[.!='']">
									<xsl:value-of select="//DriverDet/OfficeTel"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="//DriverDet/Mobile"/>
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							&#xA0;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="0pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt" font-weight="bold"> -->
							<!-- Fahrer -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Vor-/Nachname: <xsl:value-of select="//DriverDet/Name"/> -->
						
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Straße: <xsl:value-of select="//DriverDet/Address"/> -->
						
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- PLZ / Ort: <xsl:value-of select="//DriverDet/ZipCode"/>&#xA0;<xsl:value-of select="//DriverDet/City"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Land: <xsl:value-of select="//DriverDet/drvCountry"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				
					
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- &#xA0; -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="BillingInfoDebitor">
		<fo:table>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Vor-/Nachname: <xsl:value-of select="//DebitorDetail/Name"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Straße: <xsl:value-of select="//DebitorDetail/Address"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							PLZ / Ort: <xsl:value-of select="//DebitorDetail/CustZip"/>&#xA0;<xsl:value-of select="//DebitorDetail/CustCity"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Land: <xsl:value-of select="//DebitorDetail/CustCountry"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							Telefonnummer: 
							<!-- <xsl:value-of select="//DebitorDetail/CustPhone"/> -->
							<xsl:choose>
									<xsl:when test="//DebitorDetail/CustPhone[.!='0']"> 
									<xsl:value-of select="//DebitorDetail/CustPhone"/>
									</xsl:when>
									<xsl:otherwise>
									<xsl:value-of select="//DebitorDetail/Mobile"/> 
									</xsl:otherwise>
									</xsl:choose>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="0pt" padding-bottom="0pt">
						<fo:block font-size="10pt">
							&#xA0;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Fahrer -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Vor-/Nachname: <xsl:value-of select="//DebitorDetail/Name"/> -->
							<!-- <xsl:if test="//DebitorDetail/Name[.!='']">,</xsl:if> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Straße: <xsl:value-of select="//DebitorDetail/Address"/> -->
						<!-- <xsl:if test="//DebitorDetail/Address[.!='']">,</xsl:if> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- PLZ / Ort: <xsl:value-of select="//DebitorDetail/CustZip"/>&#xA0;<xsl:value-of select="//DebitorDetail/CustCity"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- Land: <xsl:value-of select="//DebitorDetail/CustCountry"/> -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-top="0pt" padding-bottom="0pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- &#xA0; -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="BillingDetails">
		<fo:table width="19cm" padding-top="5pt" padding-left="5pt" padding-right="5pt" padding-bottom="5pt" border-style="solid" border-width="1pt">
		<fo:table-column column-width="4cm"/>
		<fo:table-column column-width="5cm"/>
		<fo:table-column column-width="2cm"/>
		<fo:table-column column-width="1.5cm"/>
		<fo:table-column column-width="2.5cm"/>
		<fo:table-column column-width="1.5cm"/>
		<fo:table-column column-width="2.5cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri" number-columns-spanned="7" border-style="solid" border-width="1pt">
						<fo:block font-size="10pt" font-weight="bold">
							
							<xsl:if test="//Invoice/InvType[.='A']">
									<xsl:choose>
									<xsl:when test="/Invoices/DrvInv/DebitNote[.='Y']"> 
									Rechnung zur Rechnung: <xsl:value-of select="//Invoice/AppliedToInvoice"/>
									</xsl:when>
									<xsl:otherwise>
									Gutschrift zur Rechnung: <xsl:value-of select="//Invoice/AppliedToInvoice"/>
									</xsl:otherwise>
									</xsl:choose>
									</xsl:if> 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Bezeichnung
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Beschreibung
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Einheit
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Anzahl 
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Einzelpreis
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							MwSt.
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Summe
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelValHR" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							(netto) EUR
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							(brutto) EUR
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" font-weight="bold">
							Fahrzeug
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:apply-templates select="/Invoices/DrvInv/SubAgr/Vehicles"/>
				
				
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" number-columns-spanned="7" font-family="Calibri">
						<fo:block font-size="10pt" font-weight="bold">
							Betrag
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<!-- <xsl:apply-templates select="//Invoices/DrvInv/DamageDet/DmgDetail"/> -->
				<xsl:apply-templates select="/Invoices/Element/E300/AdjustmentDetail"/>
				
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="2">
						<fo:block font-size="10pt">
							<fo:inline font-weight="bold">Rechnungsbetrag</fo:inline> (inkl. MwSt.)
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt"  padding-right="10pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" font-weight="bold" text-align="right">
							<xsl:value-of select="/Invoices/Element/E270/Amount"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							MwSt.
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" text-align="center">
							<xsl:value-of select="/Invoices/Element/E300/AdjustmentDetail/Vat"/>%
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt"  padding-right="10pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" text-align="right">
							<xsl:value-of select="/Invoices/Element/E250/Amount"/>
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Anmerkung:
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="6">
						<fo:block font-size="10pt">
							<xsl:value-of select="//Invoice/Remark"/>&#160;<xsl:if test="//Invoice/Remark1[.!='']">/ <xsl:value-of select="//Invoice/Remark1"/></xsl:if>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="7">
						<fo:block font-size="10pt">
							&#160;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
	<xsl:template match="AdjustmentDetail">
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" >
						<fo:block font-size="10pt">
							<xsl:value-of select="Type"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" >
						<fo:block font-size="10pt">
							<xsl:value-of select="Remark1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Stück
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							1
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt"  padding-right="25pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" text-align="right">
							<xsl:value-of select='AfterDisc'/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" text-align="center">
							<xsl:value-of select="Vat"/>%
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="5pt" padding-top="0pt"  padding-right="10pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt" text-align="right">
							<xsl:value-of select='AfterVat'/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:template>
	<xsl:template match="Vehicles">
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block font-size="10pt">
					Fahrzeug
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" number-columns-spanned="6">
				<fo:block font-size="10pt">
					<xsl:value-of select="Lic"/>/<xsl:value-of select="Model"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block font-size="10pt">
					Nutzungsbeginn:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" number-columns-spanned="3" font-family="Calibri">
				<fo:block font-size="10pt">
					<!-- <xsl:value-of select="concat(substring(ODate, 1, 2), '.', substring(ODate, 4, 2), '.', substring(//ODate, 7, 4))"/> -->
					<xsl:value-of select="ODate"/>;&#xA0;<xsl:value-of select="OTime"/>&#xA0;/  Kilometerstand: <xsl:value-of select="OutKilometer"/> / Füllstand: <xsl:value-of select="OFuel"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<xsl:if test="ITime[.!='offen']" >
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block font-size="10pt">
					Nutzungsende:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" number-columns-spanned="4" font-family="Calibri">
				<fo:block font-size="10pt">
					
					<xsl:value-of select="IDate"/>;<xsl:if test="ITime[.!='offen']" ><xsl:value-of select="ITime"/></xsl:if><xsl:if test="ITime[.='offen'] " >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</xsl:if>  / Kilometerstand: <xsl:if test="ITime[.!='offen']" ><xsl:value-of select="InKilometer"/></xsl:if><xsl:if test="ITime[.='offen']" ><xsl:value-of select="InKilometer"/>&#xA0;</xsl:if> / Füllstand: <xsl:value-of select="IFuel"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal">
						<fo:block font-size="10pt">
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="73pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" number-columns-spanned="6">
						<fo:block font-size="10pt">
							Gefahrene Kilometer: <xsl:value-of select="totalkm"/>
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:if>
	<xsl:if test="ITime[.='offen']" >
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block font-size="10pt">
					Nutzungsende:
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" number-columns-spanned="4" font-family="Calibri">
				<fo:block font-size="10pt">
					offen&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; / Kilometerstand: offen&#xA0;/ Füllstand: offen
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal">
						<fo:block font-size="10pt">
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="62pt" padding-top="0pt" padding-bottom="0pt" font-family="Calibri" xsl:use-attribute-sets="LabelVal" number-columns-spanned="6">
						<fo:block font-size="10pt">
							Gefahrene Kilometer: offen 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:if>
		<fo:table-row>
			<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" number-columns-spanned="7" font-family="Calibri">
				<fo:block font-size="10pt">
					&#160;
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>
	
	<xsl:template name="PageFooter">
		<fo:table width="19cm" padding-top="5pt" padding-left="5pt" padding-right="5pt" padding-bottom="5pt" border-style="solid" border-width="1pt">
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="InpNameHR9" font-family="Calibri">
						<fo:block font-size="10pt" font-weight="bold">
							Zahlungsdetails
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Der ausgewiesene Rechnungsbetrag von <xsl:value-of select="/Invoices/Element/E270/Amount"/> EUR wird mit der SEPA-Lastschrift zum Mandat  xxx zu der
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Gläubiger-ID-Nr. xxxx von dem Konto VW Bank / IBAN xxxxx2937 zum Fälligkeitstag <xsl:value-of select="concat(substring(//DueDate, 1, 2), '.', substring(//DueDate, 4, 2), '.', substring(//DueDate, 7, 4))"/> eingezogen.
							<!-- / über die angegebene Kreditkarte -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- <fo:table-row> -->
					<!-- <fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-bottom-style="solid" border-width="1pt"> -->
						<!-- <fo:block font-size="10pt"> -->
							<!-- (MasterCard xxxx1829) -->
							<!-- zum Fälligkeitstag <xsl:value-of select="concat(substring(//DueDate, 1, 2), '.', substring(//DueDate, 4, 2), '.', substring(//DueDate, 7, 4))"/> eingezogen. -->
						<!-- </fo:block> -->
					<!-- </fo:table-cell> -->
				<!-- </fo:table-row> -->
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri" border-top-style="solid" border-width="1pt">
						<fo:block font-size="10pt">
							Bank Volkswagen Bank GmbH BIC VOWADE2BXXX IBAN DE63270200008100000291
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							Geschäftsführung: Gerhard Künne, Thomas  Schweihofer
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-left="5pt" padding-top="0pt" padding-bottom="0pt" xsl:use-attribute-sets="LabelVal" font-family="Calibri">
						<fo:block font-size="10pt">
							<!-- Ihr VWFS | AutoAbo Amtsgericht Tostedt HRB-NR.: 12148 -->
							Amtsgericht Tostedt HRB-NR.: 12148
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
</xsl:stylesheet>
	

<?xml version="1.0" encoding="UTF-8"?>
<!--
   - Kuali Coeus, a comprehensive research administration system for higher education.
   - 
   - Copyright 2005-2015 Kuali, Inc.
   - 
   - This program is free software: you can redistribute it and/or modify
   - it under the terms of the GNU Affero General Public License as
   - published by the Free Software Foundation, either version 3 of the
   - License, or (at your option) any later version.
   - 
   - This program is distributed in the hope that it will be useful,
   - but WITHOUT ANY WARRANTY; without even the implied warranty of
   - MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   - GNU Affero General Public License for more details.
   - 
   - You should have received a copy of the GNU Affero General Public License
   - along with this program.  If not, see <http://www.gnu.org/licenses/>.
 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:footer="http://apply.grants.gov/system/Footer-V1.0" xmlns:glob="http://apply.grants.gov/system/Global-V1.0" xmlns:globLib="http://apply.grants.gov/system/GlobalLibrary-V2.0"  xmlns:RRSF424_SF424B="http://apply.grants.gov/forms/RRSF424_SF424B-V1.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.5in" margin-right="0.5in">
				<fo:region-body margin-top="0.5in" margin-bottom="0.5in" font-family="Helvetica,Times,Courier" font-size="14pt"/>
				<fo:region-after extent=".8in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:template match="RRSF424_SF424B:Assurances">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block>
						<fo:inline font-size="6px" font-weight="bold">Tracking Number: <xsl:value-of select="/*/*/footer:Grants_govTrackingNumber"/>
						</fo:inline>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:block text-align="center" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:block>
								<fo:inline font-size="10pt" font-weight="bold">ASSURANCES - NON-CONSTRUCTION PROGRAMS</fo:inline>
								<fo:block text-align="right" font-size="8.5pt">OMB Approval No. 4040-0007</fo:block>
								<fo:block text-align="right" font-size="8.5pt">Expiration Date 07/30/2010</fo:block>
									<fo:block>
									<xsl:text>&#xA;</xsl:text>
								</fo:block>
								<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
												<fo:block>
													<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:block>
															<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
																<fo:block>
																	<fo:inline font-size="8.5pt">Public reporting burden for this collection of information is estimated to average 15 minutes per response, including time for reviewing
instructions, searching existing data sources, gathering and maintaining the data needed, and completing and reviewing the collection of
information. Send comments regarding the burden estimate or any other aspect of this collection of information, including suggestions for
reducing this burden, to the Office of Management and Budget, Paperwork Reduction Project (0348-0040), Washington, DC 20503.</fo:inline>
																</fo:block>
															</fo:block>
														</fo:block>
													</fo:block>
													<fo:inline font-size="10pt" font-weight="bold">PLEASE DO NOT RETURN YOUR COMPLETED FORM TO THE OFFICE OF MANAGEMENT AND BUDGET.
SEND IT TO THE ADDRESS PROVIDED BY THE SPONSORING AGENCY.</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
						<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:table-column column-width="54pt"/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" font-weight="bold" text-align="right" display-align="before" width="54pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>NOTE:</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Certain of these assurances may not be applicable to your project or program. If you have questions, please contact the
awarding agency. Further, certain Federal awarding agencies may require applicants to certify to additional assurances. If such
is the case, you will be notified.</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:table-column column-width="30pt"/>
							<fo:table-column/>
							<fo:table-column column-width="30pt"/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" number-columns-spanned="4" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>As the duly authorized representative of the applicant, I certify that the applicant:</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>1.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Has the legal authority to apply for Federal assistance
and the institutional, managerial and financial capability
(including funds sufficient to pay the non-Federal share
of project cost) to ensure proper planning, management
and completion of the project described in this
application.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block/>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="4" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Act of 1973, as amended (29 U.S.C. &#167;794), which
prohibits discrimination on the basis of handicaps; (d)
the Age Discrimination Act of 1975, as amended (42
U.S.C. &#167;&#167;6101-6107), which prohibits discrimination
on the basis of age; (e) the Drug Abuse Office and
Treatment Act of 1972 (P.L. 92-255), as amended,
relating to nondiscrimination on the basis of drug
abuse; (f) the Comprehensive Alcohol Abuse and
Alcoholism Prevention, Treatment and Rehabilitation
Act of 1970 (P.L. 91-616), as amended, relating to
nondiscrimination on the basis of alcohol abuse or
alcoholism; (g) &#167;&#167;523 and 527 of the Public Health
Service Act of 1912 (42 U.S.C. &#167;&#167;290 dd-3 and 290 ee-
3), as amended, relating to confidentiality of alcohol
and drug abuse patient records; (h) Title VIII of the
Civil Rights Act of 1968 (42 U.S.C. &#167;&#167;3601 et seq.), as
amended, relating to nondiscrimination in the sale,
rental or financing of housing; (i) any other
nondiscrimination provisions in the specific statute(s)
under which application for Federal assistance is being
made; and, (j) the requirements of any other
nondiscrimination statute(s) which may apply to the
application.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>2.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will give the awarding agency, the Comptroller General
of the United States and, if appropriate, the State,
through any authorized representative, access to and
the right to examine all records, books, papers, or
documents related to the award; and will establish a
proper accounting system in accordance with generally
accepted accounting standards or agency directives.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block/>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>3.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will establish safeguards to prohibit employees from
using their positions for a purpose that constitutes or
presents the appearance of personal or organizational
conflict of interest, or personal gain.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block/>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>4.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will initiate and complete the work within the applicable
time frame after receipt of approval of the awarding
agency.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block/>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>5.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with the Intergovernmental Personnel Act of
1970 (42 U.S.C. &#167;&#167;4728-4763) relating to prescribed
standards for merit systems for programs funded under
one of the 19 statutes or regulations specified in
Appendix A of OPM's Standards for a Merit System of
Personnel Administration (5 C.F.R. 900, Subpart F).</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" number-rows-spanned="2" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>7.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply, or has already complied, with the
requirements of Titles II and III of the Uniform
Relocation Assistance and Real Property Acquisition
Policies Act of 1970 (P.L. 91-646) which provide for
fair and equitable treatment of persons displaced or
whose property is acquired as a result of Federal or
federally-assisted programs. These requirements apply
to all interests in real property acquired for project
purposes regardless of Federal participation in
purchases.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" number-rows-spanned="2" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>6.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with all Federal statutes relating to
nondiscrimination. These include but are not limited to:
(a) Title VI of the Civil Rights Act of 1964 (P.L. 88-352)
which prohibits discrimination on the basis of race, color
or national origin; (b) Title IX of the Education
Amendments of 1972, as amended (20 U.S.C. &#167;&#167;1681-
1683, and 1685-1686), which prohibits discrimination on
the basis of sex; (c) Section 504 of the Rehabilitation</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" text-align="right" display-align="before" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>8.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply, as applicable, with provisions of the
Hatch Act (5 U.S.C. &#167;&#167;1501-1508 and 7324-7328)
which limit the political activities of employees whose
principal employment activities are funded in whole or
in part with Federal funds.</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table><fo:table>
										<fo:table-column column-width="150pt"/>
							<fo:table-column column-width="150pt"/>
								<fo:table-column column-width="219pt"/>
							<fo:table-body><fo:table-row>
								<fo:table-cell>
									<fo:block>&#160;</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>&#160;</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>&#160;</fo:block>
								</fo:table-cell>
							</fo:table-row>
													<fo:table-row>
																		<fo:table-cell font-size="8pt" font-weight="bold">
										<fo:block>Previous Edition Usable</fo:block>
									</fo:table-cell>
														<fo:table-cell font-size="8pt" font-weight="bold">
										<fo:block>Authorized for Local Reporoduction</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="8pt" font-weight="bold" text-align="right">
										<fo:block>Standard Form 424B (Rev. 7-97)</fo:block>
	
										<fo:block>Prescribed by OMB Circular A-102</fo:block>
									</fo:table-cell>
								</fo:table-row>						</fo:table-body>
						</fo:table>
						<fo:block break-after="page">
							<xsl:text>&#xA;</xsl:text>
						</fo:block>
						<fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:table-column column-width="30pt"/>
							<fo:table-column/>
							<fo:table-column column-width="30pt"/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>9.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply, as applicable, with the provisions of the Davis-
Bacon Act (40 U.S.C. &#167;&#167;276a to 276a-7), the Copeland Act
(40 U.S.C. &#167;276c and 18 U.S.C. &#167;874), and the Contract
Work Hours and Safety Standards Act (40 U.S.C. &#167;&#167;327-
333), regarding labor standards for federally-assisted
construction subagreements.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>12.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with the Wild and Scenic Rivers Act of
1968 (16 U.S.C. &#167;&#167;1271 et seq.) related to protecting
components or potential components of the national
wild and scenic rivers system.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>13.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will assist the awarding agency in assuring compliance
with Section 106 of the National Historic Preservation
Act of 1966, as amended (16 U.S.C. &#167;470), EO 11593
(identification and protection of historic properties), and
the Archaeological and Historic Preservation Act of
1974 (16 U.S.C. &#167;&#167;469a-1 et seq.).</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>10.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply, if applicable, with flood insurance purchase
requirements of Section 102(a) of the Flood Disaster
Protection Act of 1973 (P.L. 93-234) which requires
recipients in a special flood hazard area to participate in the
program and to purchase flood insurance if the total cost of
insurable construction and acquisition is $10,000 or more.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>14.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with P.L. 93-348 regarding the protection of
human subjects involved in research, development, and
related activities supported by this award of assistance.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="5" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>11.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" number-rows-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with environmental standards which may be
prescribed pursuant to the following: (a) institution of
environmental quality control measures under the National
Environmental Policy Act of 1969 (P.L. 91-190) and
Executive Order (EO) 11514; (b) notification of violating
facilities pursuant to EO 11738; (c) protection of wetlands
pursuant to EO 11990; (d) evaluation of flood hazards in
floodplains in accordance with EO 11988; (e) assurance of
project consistency with the approved State management
program developed under the Coastal Zone Management
Act of 1972 (16 U.S.C. &#167;&#167;1451 et seq.); (f) conformity of
Federal actions to State (Clean Air) Implementation Plans
under Section 176(c) of the Clean Air Act of 1955, as
amended (42 U.S.C. &#167;&#167;7401 et seq.); (g) protection of
underground sources of drinking water under the Safe
Drinking Water Act of 1974, as amended (P.L. 93-523);
and, (h) protection of endangered species under the
Endangered Species Act of 1973, as amended (P.L. 93-
205).</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>15.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with the Laboratory Animal Welfare Act of
1966 (P.L. 89-544, as amended, 7 U.S.C. &#167;&#167;2131 et
seq.) pertaining to the care, handling, and treatment of
warm blooded animals held for research, teaching, or
other activities supported by this award of assistance.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>16.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with the Lead-Based Paint Poisoning
Prevention Act (42 U.S.C. &#167;&#167;4801 et seq.) which
prohibits the use of lead-based paint in construction or
rehabilitation of residence structures.</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>17.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will cause to be performed the required financial and
compliance audits in accordance with the Single Audit
Act Amendments of 1996 and OMB Circular No. A-133,
"Audits of States, Local Governments, and Non-Profit
Organizations."</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="9.5pt" display-align="before" text-align="right" width="30pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>18.</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="9.5pt" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Will comply with all applicable requirements of all other
Federal laws, executive orders, regulations, and policies
governing this program.</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<fo:block>
							<xsl:text>&#xA;</xsl:text>
						</fo:block>
						<fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:table-column column-width="325pt"/>
							<fo:table-column/>
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
										<fo:block>
											<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
												<fo:block font-size="10pt">
													<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:block>* SIGNATURE OF AUTHORIZED CERTIFYING OFFICIAL</fo:block>
													</fo:block>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                                                        <xsl:for-each select="RRSF424_SF424B:AuthorizedRepresentative">
														<xsl:for-each select="RRSF424_SF424B:RepresentativeName">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</fo:block>
											</fo:block>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black" hyphenate="true" language="en">
										<fo:block>
											<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
												<fo:block font-size="10pt">
													<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:block>* TITLE</fo:block>
													</fo:block>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                                                        <xsl:for-each select="RRSF424_SF424B:AuthorizedRepresentative">
														<xsl:for-each select="RRSF424_SF424B:RepresentativeTitle">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</fo:block>
											</fo:block>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="10pt" number-columns-spanned="2" width="325pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black" hyphenate="true" language="en">
										<fo:block>
											<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
												<fo:block font-size="9.5pt">
													<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:block>* APPLICANT ORGANIZATION</fo:block>
													</fo:block>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                                                        <xsl:for-each select="RRSF424_SF424B:ApplicantOrganizationName">
														<xsl:apply-templates/>
													</xsl:for-each>
												</fo:block>
											</fo:block>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black"  hyphenate="true" language="en">
										<fo:block>
											<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
												<fo:block font-size="9.5pt">
													<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
														<fo:block font-size="10pt">* DATE SUBMITTED</fo:block>
													</fo:block>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                                                        <xsl:for-each select="RRSF424_SF424B:SubmittedDate">
														<xsl:value-of select="format-number(substring(.,6,2), '00')"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="format-number(substring(.,9,2), '00')"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="format-number(substring(.,1,4), '0000')"/>
													</xsl:for-each>
												</fo:block>
											</fo:block>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block>
							<xsl:text>&#xA;</xsl:text>
						</fo:block>
						<fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:table-column/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell font-size="8pt" font-weight="bold" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="white">
										<fo:block>Standard Form 424B (Rev. 7-97) Back</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>

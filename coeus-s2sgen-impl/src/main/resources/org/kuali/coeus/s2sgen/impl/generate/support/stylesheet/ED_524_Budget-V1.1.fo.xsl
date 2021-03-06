<?xml version="1.0" encoding="UTF-8"?>
<!--
   - Kuali Coeus, a comprehensive research administration system for higher education.
   - 
   - Copyright 2005-2016 Kuali, Inc.
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
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:glob="http://apply.grants.gov/system/Global-V1.0" 
xmlns:footer="http://apply.grants.gov/system/Footer-V1.0" xmlns:globLib="http://apply.grants.gov/system/GlobalLibrary-V2.0"
xmlns:ED_524_Budget="http://apply.grants.gov/forms/ED_524_Budget-V1.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="8.5in" page-width="11in" margin-left="0.5in" margin-right="0.5in">
                <fo:region-body margin-top="0.5in" margin-bottom="0.5in" font-family="Helvetica,Times,Courier" font-size="14pt" />
		<fo:region-after extent=".5in" /> 
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:template match="ED_524_Budget:ED524_Budget">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
            <fo:static-content flow-name="xsl-region-after">
 <fo:block>
 	<fo:inline font-size="6px" font-weight="bold">ED Form No. 524</fo:inline>
  </fo:block>

 <fo:block>
 	<fo:inline font-size="6px" font-weight="bold">
   Tracking Number: 
  <xsl:value-of select="/*/*/footer:Grants_govTrackingNumber" /> 
  </fo:inline>
  </fo:block>
  </fo:static-content>

                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="8pt">
                            <fo:table padding="1pt" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column column-width="130pt" />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="5" number-rows-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">U.S. DEPARTMENT OF EDUCATION
BUDGET INFORMATION
NON-CONSTRUCTION PROGRAMS</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>OMB Control Number: 1890-0004</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Expiration Date: 10/31/2007</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-before-width="2pt" display-align="before" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>* Name of Institution/Organization<fo:block space-before.optimum="1pt" space-after.optimum="2pt" language="en" hyphenate="true" keep-together="always">
                                                    <fo:block>&#160;&#160;&#160;&#160; <xsl:for-each select="ED_524_Budget:LEGAL_NAME">
                                                            <xsl:apply-templates />
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-before-width="2pt" display-align="before" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Applicants requesting funding for only one year should complete the column under
"Project Year 1."&#160; Applicants requesting funding for </fo:block>
<fo:block> multi-year grants should complete 
all applicable columns.&#160; Please add all instructions before completing form.</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-after-width="2pt" border-before-width="2pt" number-columns-spanned="7" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">SECTION A - BUDGET SUMMARY</fo:inline>
                                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
                                                        <fo:inline font-size="10pt" font-weight="bold">U.S. DEPARTMENT OF EDUCATION FUNDS</fo:inline>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Budget Categories</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 1<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(a)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 2<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(b)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 3<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(c)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 4<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(d)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 5<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(e)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Total<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(f)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 1. Personnel</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalPersonnelFirstYearAmount">
                                                        <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalPersonnelSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalPersonnelThirdYearAmount">
                                                        <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalPersonnelFourthYearAmount">
                                              
                                                    <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                       
                                                                  

                                                    
                                                    
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalPersonnelFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block></fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalPersonnelTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 2. Fringe Benefits</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalFringeFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalFringeSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalFringeThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalFringeFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalFringeFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalFringeTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 3. Travel</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTravelFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTravelSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTravelThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTravelFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTravelFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalTravelTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 4. Equipment</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalEquipmentFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalEquipmentSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalEquipmentThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalEquipmentFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalEquipmentFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalEquipmentTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 5. Supplies</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalSuppliesFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalSuppliesSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalSuppliesThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalSuppliesFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalSuppliesFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalSuppliesTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 6. Contractual</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalContractualFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalContractualSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalContractualThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalContractualFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalContractualFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalContractualTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 7. Construction</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalConstructionFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalConstructionSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalConstructionThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalConstructionFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalConstructionFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalConstructionTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 8. Other</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalOtherFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalOtherSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalOtherThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalOtherFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalOtherFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalOtherTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 9. Total Direct Costs (lines 1-8)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalDirectFirstYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalDirectSecondYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalDirectThirdYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalDirectFourthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalDirectFifthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalDirectTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 10. Indirect Costs*</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalIndirectFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalIndirectSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalIndirectThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalIndirectFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalIndirectFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalIndirectTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 11. Training Stipends</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTrainingFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTrainingSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTrainingThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTrainingFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetFederalTrainingFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalTrainingTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 12. Total Costs (lines 9-11)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalFirstYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalSecondYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalThirdYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalFourthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalFifthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetFederalTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
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
                            
                            <!-- new section of ED 524=============-->
                            
                              <fo:table padding="1pt" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="20pt" />
                            <fo:table-column column-width="240pt" />
                            <fo:table-column/>
                                <fo:table-column />
                                
                                <fo:table-body>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">																						
                                                            <fo:block><fo:inline font-weight="bold">*Indirect Cost Information</fo:inline><fo:inline font-weight="bold" font-style="italic">&#160;(To Be Completed by Your Business Office):</fo:inline> 
                                                    </fo:block>
                                                            </fo:table-cell>																							
                                                            </fo:table-row>
						<fo:table-row>
							<fo:table-cell number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">							
                                                            <fo:block>If you are requesting reimbursement for indirect costs on line 10, please answer the following questions:</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block>(1)</fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	<fo:block>Do you have an Indirect Cost Rate Agreement approved by the Federal government?&#160;&#160;
<xsl:choose>	
<xsl:when test="ED_524_Budget:IndirectCost/ED_524_Budget:IsIndirectCostRateAgreementApproved='Y: Yes'"> <fo:inline font-family="ZapfDingbats" font-size="10pt">&#x25cf;</fo:inline>
&#160;Yes&#160;&#160;<fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline>&#160;No</xsl:when>
<xsl:when test="ED_524_Budget:IndirectCost/ED_524_Budget:IsIndirectCostRateAgreementApproved='N: No'"> <fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline>&#160;Yes&#160;&#160;<fo:inline font-family="ZapfDingbats" font-size="10pt">&#x25cf;</fo:inline>&#160;No</xsl:when>

<xsl:otherwise>
<fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline>&#160;Yes&#160;&#160;<fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline>
&#160;No
</xsl:otherwise>
</xsl:choose>
 </fo:block>
</fo:table-cell>
</fo:table-row>
					<fo:table-row>
							<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block>(2)</fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block>If yes, please provide the following information:</fo:block></fo:table-cell>
</fo:table-row>																											
							<fo:table-row>
							<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="2" padding-start="3pt"  padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block>* Period Covered by the Indirect Cost Rate Agreement:  From:&#160;&#160;
<xsl:call-template name="formatDate">
<xsl:with-param name="value" select="ED_524_Budget:IndirectCost/ED_524_Budget:IndirectCostRateAgreementFromDate"/>
</xsl:call-template>&#160;&#160;
&#160;
To:&#160;&#160;
<xsl:call-template name="formatDate">
<xsl:with-param name="value" select="ED_524_Budget:IndirectCost/ED_524_Budget:IndirectCostRateAgreementToDate"/>
</xsl:call-template>&#160;&#160;&#160;
(mm/dd/yyyy)					</fo:block>
							</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
							<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	<fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell hyphenate="true" language="en" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
<fo:block>* Approving Federal agency:&#160;&#160;
<xsl:choose>
	<xsl:when test="ED_524_Budget:IndirectCost/ED_524_Budget:ApprovingFederalAgency='ED'"><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x25cf;</fo:inline></xsl:when><xsl:otherwise><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline></xsl:otherwise>
</xsl:choose>&#160;ED&#160;&#160;<xsl:choose>
	<xsl:when test="ED_524_Budget:IndirectCost/ED_524_Budget:ApprovingFederalAgency='Other'"><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x25cf;</fo:inline></xsl:when><xsl:otherwise><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline></xsl:otherwise>
</xsl:choose>&#160;Other (please specify):&#160;&#160;
 </fo:block>
							</fo:table-cell>
							<fo:table-cell hyphenate="true" language="en" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">								<fo:block><xsl:value-of select="ED_524_Budget:IndirectCost/ED_524_Budget:OtherApprovingFederalAgency"/></fo:block>
							</fo:table-cell>
				</fo:table-row>
<fo:table-row>
							<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                            <fo:block>(3)</fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block>For Restricted Rate Programs (check one) -- Are you using a restricted indirect cost rate that:</fo:block>
                                                        </fo:table-cell>
</fo:table-row>				
				<fo:table-row>
							<fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
                                                            <fo:block></fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">	
 <fo:block><!-- Approving Federal agency:&#160;&#160; -->
<xsl:choose>
	<xsl:when test="ED_524_Budget:IndirectCost/ED_524_Budget:RestrictedIndirectCostRate='Is included in your approved Indirect Cost Rate Agreement?'"><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x25cf;</fo:inline></xsl:when><xsl:otherwise><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline></xsl:otherwise>
</xsl:choose>&#160;Is included in your approved Indirect Cost Rate Agreement?   or,&#160;&#160;<xsl:choose>
	<xsl:when test="ED_524_Budget:IndirectCost/ED_524_Budget:RestrictedIndirectCostRate='Complies with 34 CFR 76.564(c)(2)?'"><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x25cf;</fo:inline></xsl:when><xsl:otherwise><fo:inline font-family="ZapfDingbats" font-size="10pt">&#x274d;</fo:inline></xsl:otherwise>
</xsl:choose>&#160;Complies with 34 CFR 76.564(c)(2)?&#160;&#160;</fo:block>
							</fo:table-cell>
				</fo:table-row>

								
									</fo:table-body>

                            </fo:table>
                            
                     
                            
                            
                            
                            
                            
                            <!-- end new section ===================-->
                            <fo:block break-after="page">
                                <fo:leader leader-pattern="space" />
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA;</xsl:text>
                            </fo:block>
                            <fo:table padding="1pt" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column column-width="130pt" />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border-before-width="2pt" display-align="before" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>* Name of Institution/Organization<fo:block space-before.optimum="1pt" space-after.optimum="2pt" language="en" hyphenate="true" keep-together="always">
                                                    <fo:block>&#160;&#160;&#160;&#160; <xsl:for-each select="ED_524_Budget:LEGAL_NAME">
                                                            <xsl:apply-templates />
                                                        </xsl:for-each>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-before-width="2pt" display-align="before" number-columns-spanned="5" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Applicants requesting funding for only one year should complete the column under
"Project Year 1."&#160; Applicants requesting funding for multi-year grants should complete 
all applicable columns.&#160; Please add all instructions before completing form.</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-after-width="2pt" border-before-width="2pt" number-columns-spanned="7" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">SECTION B - BUDGET SUMMARY</fo:inline>
                                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
                                                        <fo:inline font-size="10pt" font-weight="bold">NON-FEDERAL FUNDS</fo:inline>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Budget Categories</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 1
(a)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 2<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>(b)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 3<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(c)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 4<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(d)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Project Year 5<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(e)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>Total<fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:block>
(f)</fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 1. Personnel</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalPersonnelFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalPersonnelSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalPersonnelThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalPersonnelFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalPersonnelFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalPersonnelTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 2. Fringe Benefits</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalFringeFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalFringeSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalFringeThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalFringeFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalFringeFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalFringeTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 3. Travel</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTravelFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTravelSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTravelThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTravelFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTravelFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalTravelTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 4. Equipment</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalEquipmentFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalEquipmentSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalEquipmentThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalEquipmentFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalEquipmentFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalEquipmentTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 5. Supplies</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalSuppliesFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalSuppliesSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalSuppliesThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalSuppliesFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalSuppliesFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalSuppliesTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 6. Contractual</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalContractualFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalContractualSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalContractualThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalContractualFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalContractualFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalContractualTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 7. Construction</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalConstructionFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalConstructionSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalConstructionThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalConstructionFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalConstructionFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalConstructionTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 8. Other</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalOtherFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalOtherSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalOtherThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalOtherFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalOtherFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalOtherTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 9. Total Direct Costs (lines 1-8)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalDirectFirstYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalDirectSecondYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalDirectThirdYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalDirectFourthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalDirectFifthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalDirectTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 10. Indirect Costs</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalIndirectFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalIndirectSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalIndirectThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalIndirectFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalIndirectFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalIndirectTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 11. Training Stipends</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTrainingFirstYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTrainingSecondYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTrainingThirdYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTrainingFourthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <xsl:for-each select="ED_524_Budget:BudgetNonFederalTrainingFifthYearAmount">
                                                     <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalTrainingTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>&#160; 12. Total Costs (lines 9-11)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalFirstYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalSecondYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalThirdYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalFourthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalFifthYearAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" display-align="center" text-align="start" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block/>
                                                            </fo:table-cell>
                                                            <fo:table-cell padding-after="0pt" padding-before="0pt" padding-end="0pt" padding-start="0pt" text-align="right" display-align="center" border-style="solid" border-width="1pt" border-color="white">
                                                                <fo:block>
                                                                    <xsl:for-each select="ED_524_Budget:BudgetNonFederalTotalAmount">
                                                                         <xsl:value-of select="format-number(., '$#,##0.00')" />
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-before-width="2pt" number-columns-spanned="7" text-align="center" width="130pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" border-style="solid" border-width="1pt" border-color="black">
                                            <fo:block>
                                                <fo:block>
                                                    <fo:leader leader-pattern="space" />
                                                </fo:block>
                                                <fo:inline font-size="10pt" font-weight="bold">SECTION C - BUDGET NARRATIVE (see instructions)</fo:inline>
                                                <fo:block>
                                                    <fo:leader leader-pattern="space" />
                                                </fo:block>
                                                <fo:block>
                                                    <xsl:text>&#xA;</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <!-- ============================================= -->
   <!-- FORMAT DATE                                   -->
   <!-- Writes XSD:date style text into to mm-dd-yyyy -->
   <!-- ============================================= -->
   <xsl:template name="formatDate">
      <xsl:param name="value"/>
      <xsl:if test="$value != ''">
         <xsl:value-of select="format-number(substring($value,6,2), '00')"/>
         <xsl:text>/</xsl:text>
         <xsl:value-of select="format-number(substring($value,9,2), '00')"/>
         <xsl:text>/</xsl:text>
         <xsl:value-of select="format-number(substring($value,1,4), '0000')"/>
      </xsl:if>
   </xsl:template>

</xsl:stylesheet>

/*
 * Kuali Coeus, a comprehensive research administration system for higher education.
 * 
 * Copyright 2005-2016 Kuali, Inc.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.kuali.coeus.s2sgen.impl.generate.support;

import gov.grants.apply.forms.nasaPIandAORSupplementalDataSheetV10.FederalAgencyDataType;
import gov.grants.apply.forms.nasaPIandAORSupplementalDataSheetV10.NasaPIandAORSupplementalDataSheetDocument;
import gov.grants.apply.forms.nasaPIandAORSupplementalDataSheetV10.NasaPIandAORSupplementalDataSheetDocument.NasaPIandAORSupplementalDataSheet;
import gov.grants.apply.forms.nasaPIandAORSupplementalDataSheetV10.NasaPIandAORSupplementalDataSheetDocument.NasaPIandAORSupplementalDataSheet.AuthorizedRepresentativeName;
import gov.grants.apply.forms.nasaPIandAORSupplementalDataSheetV10.NasaPIandAORSupplementalDataSheetDocument.NasaPIandAORSupplementalDataSheet.PrincipalInvestigatorName;
import gov.grants.apply.system.globalLibraryV20.HumanNameDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.coeus.common.api.ynq.YnqConstant;
import org.kuali.coeus.common.questionnaire.api.answer.AnswerContract;
import org.kuali.coeus.common.questionnaire.api.answer.AnswerHeaderContract;
import org.kuali.coeus.propdev.api.person.ProposalPersonContract;
import org.kuali.coeus.s2sgen.impl.generate.FormGenerator;
import org.kuali.coeus.s2sgen.impl.generate.FormVersion;
import org.kuali.coeus.s2sgen.impl.generate.S2SBaseFormGenerator;
import org.kuali.coeus.s2sgen.impl.person.DepartmentalPersonDto;
import org.kuali.coeus.s2sgen.impl.person.DepartmentalPersonService;
import org.kuali.coeus.s2sgen.impl.person.S2SProposalPersonService;
import org.kuali.coeus.propdev.api.core.ProposalDevelopmentDocumentContract;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;

import java.math.BigDecimal;
import java.util.List;

/**
 * 
 * This class is used to generate XML Document object for grants.gov
 * NasaPIandAORSupplementalDataSheetV1.0. This form is generated using XMLBean
 * API's generated by compiling NasaPIandAORSupplementalDataSheetV1.0 schema.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
@FormGenerator("NasaPIandAORSupplementalDataSheetV1_0Generator")
public class NasaPIandAORSupplementalDataSheetV1_0Generator extends
		S2SBaseFormGenerator {
	private static final Logger LOG = LoggerFactory.getLogger(NasaPIandAORSupplementalDataSheetV1_0Generator.class);

    @Value("http://apply.grants.gov/forms/Nasa_PIandAORSupplementalDataSheet-V1.0")
    private String namespace;

    @Value("Nasa_PIandAORSupplementalDataSheet-V1.0")
    private String formName;

    @Value("classpath:org/kuali/coeus/s2sgen/impl/generate/support/stylesheet/Nasa_PIandAORSupplementalDataSheet-V1.0.fo.xsl")
    private Resource stylesheet;

    @Value("gov.grants.apply.forms.nasaPIandAORSupplementalDataSheetV10")
    private String packageName;

    @Value(DEFAULT_SORT_INDEX)
    private int sortIndex;

    @Autowired
    @Qualifier("departmentalPersonService")
    private DepartmentalPersonService departmentalPersonService;

    @Autowired
    @Qualifier("s2SProposalPersonService")
    private S2SProposalPersonService s2SProposalPersonService;

	private static final Integer PI_PROPOSAL_YNQ_INTERNATIONAL_PARTICIPATION = 112;
	private static final Integer PI_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION_AMOUNT = 113;
	private static final Integer PI_SUB_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION_AMOUNT = 111;
	private static final Integer PI_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION = 110;
	private static final String NOT_ANSWERED = "No";
	List<? extends AnswerHeaderContract> answerHeaders ;

	/**
	 * 
	 * This method returns NasaPIandAORSupplementalDataSheetDocument object
	 * based on proposal development document which contains the
	 * NasaPIandAORSupplementalDataSheetDocument informations
	 * AuthorizedRepresentativeName, PrincipalInvestigatorName for a particular
	 * proposal
	 * 
	 * @return nasaPIandAORSupplementalDataSheetDocument {@link XmlObject} of
	 *         type NasaPIandAORSupplementalDataSheetDocument.
	 */
	private NasaPIandAORSupplementalDataSheetDocument getnasapIandAORSupplementalDataSheetDocument() {
		NasaPIandAORSupplementalDataSheetDocument nasaPIandAORSupplementalDataSheetDocument = NasaPIandAORSupplementalDataSheetDocument.Factory
				.newInstance();
		NasaPIandAORSupplementalDataSheet nasapIandAORSupplementalDataSheet = NasaPIandAORSupplementalDataSheet.Factory
				.newInstance();
		nasapIandAORSupplementalDataSheet
				.setFormVersion(FormVersion.v1_0.getVersion());

		nasapIandAORSupplementalDataSheet
				.setAuthorizedRepresentativeName(getAuthorizedRep());
		nasapIandAORSupplementalDataSheet
				.setPrincipalInvestigatorName(getPrincipalInvestigator());

		nasaPIandAORSupplementalDataSheetDocument
				.setNasaPIandAORSupplementalDataSheet(nasapIandAORSupplementalDataSheet);
		return nasaPIandAORSupplementalDataSheetDocument;
	}

	/**
	 * 
	 * This method returns authorizedRepresentativeName which contains
	 * AORName,UserName
	 * 
	 * @return AuthorizedRepresentativeName object with AORname and user name
	 *         details.
	 */
	private AuthorizedRepresentativeName getAuthorizedRep() {
		AuthorizedRepresentativeName authorizedRepresentativeName = AuthorizedRepresentativeName.Factory
				.newInstance();

		DepartmentalPersonDto aorInfo = departmentalPersonService.getDepartmentalPerson(pdDoc);
		authorizedRepresentativeName.setAORName(globLibV20Generator.getHumanNameDataType(aorInfo));

		// TODO HardCoded because table EPS_PROP_CUSTOM_DATA was not found in
		// database
		// authorizedRepresentativeName.setUserName("");
		return authorizedRepresentativeName;
	}

	/**
	 * 
	 * This method returns principalInvestigatorName which contains
	 * PDPIName,USGovernmentParticipation,
	 * FederalAgency,FederalAgencyDollar,InternationalParticipation.
	 * 
	 * @return principalInvestigatorName (PrincipalInvestigatorName) object
	 *         containing principal investigator details.
	 */
	private PrincipalInvestigatorName getPrincipalInvestigator() {
		PrincipalInvestigatorName principalInvestigatorName = PrincipalInvestigatorName.Factory
				.newInstance();

		ProposalPersonContract PI = s2SProposalPersonService.getPrincipalInvestigator(pdDoc);
		if (PI != null) {
			principalInvestigatorName.setPDPIName(globLibV20Generator
					.getHumanNameDataType(PI));
		} else {
			principalInvestigatorName.setPDPIName(HumanNameDataType.Factory
					.newInstance());
		}

		answerHeaders = getPropDevQuestionAnswerService().getQuestionnaireAnswerHeaders(pdDoc.getDevelopmentProposal().getProposalNumber());
	    for (AnswerHeaderContract answerHeader : answerHeaders){
	        for (AnswerContract answers : answerHeader.getAnswers()) {
                if (answers.getQuestionId() != null
	                    && getQuestionAnswerService().findQuestionById(answers.getQuestionId()).getQuestionSeqId().equals(
	                            PI_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION)){
	                String explanation = null;
	                if(answers.getAnswer() != null ){
	                    if(!answers.getAnswer().equals(NOT_ANSWERED)){
	                       String  answer = answers.getAnswer();
	                        if ((getAnswer(PI_SUB_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION_AMOUNT, answerHeaders)) != null ){
	                            explanation = getAnswer(PI_SUB_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION_AMOUNT, answerHeaders);
	                        }
	                        if (answer != null) {
	                            if (answer.equals(YnqConstant.YES.code())) {
	                                principalInvestigatorName
	                                    .setUSGovernmentParticipation(YesNoDataType.Y_YES);
	                                FederalAgencyDataType.Enum FederalAgencyEnum = getFederalAgency(explanation);
	                                principalInvestigatorName.setFederalAgency(FederalAgencyEnum);
	                                final String amnt = getAnswer(PI_PROPOSAL_YNQ_US_GOVERNMENT_PARTICIPATION_AMOUNT, answerHeaders);
                                    principalInvestigatorName
	                                    .setFederalAgencyDollar(amnt != null ? new BigDecimal(Integer.valueOf(amnt)) : null);
	                            } else if (answer
	                                    .equals(YnqConstant.NO.code())) {
	                                principalInvestigatorName
	                                .setUSGovernmentParticipation(YesNoDataType.N_NO);
	                            }
	                        }
	                    }
	                }
	            }
	        }    
	    }    
	    for (AnswerHeaderContract answerHeader : answerHeaders){
            for (AnswerContract answers : answerHeader.getAnswers()) {
                if (answers.getQuestionId() != null
                        && getQuestionAnswerService().findQuestionById(answers.getQuestionId()).getQuestionSeqId().equals(
                                PI_PROPOSAL_YNQ_INTERNATIONAL_PARTICIPATION)) {
                    if(answers.getAnswer() != null ){
                        if(!answers.getAnswer().equals(NOT_ANSWERED)){
                            String answer = answers.getAnswer();
                                if (answer != null) {
                                    if (answer.equals(YnqConstant.YES.code())) {
                                        principalInvestigatorName
                                        .setInternationalParticipation(YesNoDataType.Y_YES);
                                        break;
                                    } else if (answer
                                            .equals(YnqConstant.NO.code())) {
                                        principalInvestigatorName
                                        .setInternationalParticipation(YesNoDataType.N_NO);
                                        break;
                                    }
                                }
                                break;
                        }
                    }
                }   
            }   
	    }
		return principalInvestigatorName;
	}

	private FederalAgencyDataType.Enum getFederalAgency(String explanation) {
		FederalAgencyDataType.Enum FederalAgencyEnum = null;
		if (explanation != null) {
			try {
				// Explanation should be Federal Agency Code ranging from
				int federalAgencyCode = Integer.parseInt(explanation);
				if (federalAgencyCode > 99 && federalAgencyCode < 151) {
					FederalAgencyEnum = FederalAgencyDataType.Enum
							.forInt(federalAgencyCode - 100);
				}
			} catch (NumberFormatException e) {
				// Explanation entered is not a number. Federal Agency cannot be
				// set.
				LOG.warn(
						"Comments entered should be number between 101 to 150",
						e);
			}
		}
		return FederalAgencyEnum;
	}

	/**
	 * This method creates {@link XmlObject} of type
	 * {@link NasaPIandAORSupplementalDataSheetDocument} by populating data from
	 * the given {@link ProposalDevelopmentDocumentContract}
	 * 
	 * @param proposalDevelopmentDocument
	 *            for which the {@link XmlObject} needs to be created
	 * @return {@link XmlObject} which is generated using the given
	 *         {@link ProposalDevelopmentDocumentContract}
	 */
	public XmlObject getFormObject(
			ProposalDevelopmentDocumentContract proposalDevelopmentDocument) {
		this.pdDoc = proposalDevelopmentDocument;
		return getnasapIandAORSupplementalDataSheetDocument();
	}

    public DepartmentalPersonService getDepartmentalPersonService() {
        return departmentalPersonService;
    }

    public void setDepartmentalPersonService(DepartmentalPersonService departmentalPersonService) {
        this.departmentalPersonService = departmentalPersonService;
    }

    public S2SProposalPersonService getS2SProposalPersonService() {
        return s2SProposalPersonService;
    }

    public void setS2SProposalPersonService(S2SProposalPersonService s2SProposalPersonService) {
        this.s2SProposalPersonService = s2SProposalPersonService;
    }

    @Override
    public String getNamespace() {
        return namespace;
    }

    public void setNamespace(String namespace) {
        this.namespace = namespace;
    }

    @Override
    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName;
    }

    @Override
    public Resource getStylesheet() {
        return stylesheet;
    }

    public void setStylesheet(Resource stylesheet) {
        this.stylesheet = stylesheet;
    }

    @Override
    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    @Override
    public int getSortIndex() {
        return sortIndex;
    }

    public void setSortIndex(int sortIndex) {
        this.sortIndex = sortIndex;
    }
}

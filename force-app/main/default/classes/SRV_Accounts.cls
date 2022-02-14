/**
 * Created by knura on 2/10/2022.
 */

public with sharing class SRV_Accounts {
    public static void industryTypeChecker(List<Account> accList){
        List<Account> accountsList = new List<Account>();
        List<Case> casesList = new List<Case>();
        for(Account acc : accList){
            if(String.isBlank(acc.Industry) && acc.Industry == 'Energy'){
                //List<Account> accsIndustry = SEL_Accounts.getListAccounts(acc.Industry);
                Case css = DMN_Cases.singleCaseCreator(acc.id);
                casesList.add(css);
                //accountsList.addAll(accsIndustry);
            }else if(String.isBlank(acc.Industry) && acc.Industry == 'Healthcare'){
                //List<Account> accsHealthcare = SEL_Accounts.getListAccounts(acc.Industry);
                Case css = DMN_Cases.singleCaseCreator(acc.id);
                casesList.add(css);
                //accountsList.addAll(accsHealthcare);
            }else if(String.isBlank(acc.Industry) && acc.Industry == 'Government'){
                //ist<Account> accsGovernment = SEL_Accounts.getListAccounts(acc.Industry);
                Case css = DMN_Cases.singleCaseCreator(acc.id);
                casesList.add(css);
                //accountsList.addAll(accsGovernment);
            }
        }
        insert casesList;
    }
}
/**
 * Created by knura on 2/10/2022.
 */

public with sharing class TRH_AccountHandler {

    public static void afterUpdateHandler(List<Account>accsList){
        List<Account> dmnList = DMN_Accounts.industryChanger(accsList);
        List<Case> dmnCaseList = new List<Case>();
        for(Account acc : dmnList){
            if(!String.isEmpty(acc.Rating) && acc.Rating == 'Warn'){
                dmnCaseList.add(DMN_Cases.caseCreator(acc.Id));
            }
        }
        insert dmnCaseList;
    }
}
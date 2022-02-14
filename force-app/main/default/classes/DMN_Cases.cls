/**
 * Created by knura on 2/10/2022.
 */

public with sharing class DMN_Cases {
    public static Case[] caseCreator(List<Account> accsList, Map<Id,Account> oldMap){
        List<Case> dmnCaseList = new List<Case>();
        for(Account acc : accsList){
            if(!String.isEmpty(acc.Rating) && acc.Rating == 'Warn'){
                dmnCaseList.add(singleCaseCreator(acc.Id));
            }
        }
        return dmnCaseList;
    }

    public static Case singleCaseCreator(Id accId){
        Case newCase = new BLD_Cases().status('Working').origin('Phone').accountId(accId).newInstance();
        return newCase;
    }
}
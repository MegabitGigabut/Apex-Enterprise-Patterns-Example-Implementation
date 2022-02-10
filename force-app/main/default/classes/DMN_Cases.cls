/**
 * Created by knura on 2/10/2022.
 */

public with sharing class DMN_Cases {
    public static Case[] caseCreator(List<Account> accsList){
        List<Case> dmnCaseList = new List<Case>();
        for(Account acc : accsList){
            if(!String.isEmpty(acc.Rating) && acc.Rating == 'Warn'){
                Case cs = new Case(
                        Status='String',
                        Origin='Phone',
                        AccountId=acc.Id
                );
                dmnCaseList.add(cs);
            }
        }
        return dmnCaseList;
    }

    public static Case singleCaseCreator(Account acc){
        Case newCase = new Case(
                Status='String',
                Origin='Phone',
                AccountId=acc.Id
        );
        return newCase;
    }
}
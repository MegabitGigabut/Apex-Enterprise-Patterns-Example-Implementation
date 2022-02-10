/**
 * Created by knura on 2/10/2022.
 */

public with sharing class TRH_AccountHandler {

    public static void afterUpdateHandler(List<Account>accsList,Map<Id, Account> oldMap){

        for(Account acc : accsList){
            Account oldAcc= oldMap.get(acc.Id);
            if(acc.Rating != oldAcc.Rating){
                //DMN_Cases.caseCreator();
            }
        }

    }
}
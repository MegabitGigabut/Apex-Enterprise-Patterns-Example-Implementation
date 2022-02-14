/**
 * Created by knura on 2/10/2022.
 */

public with sharing class TRH_AccountHandler {

    public static void afterInsertHandler(List<Account>accsList, Map<Id, Account> oldMap){
        List<Case> cases = DMN_Cases.caseCreator(accsList, oldMap);
        insert cases;
    }
}
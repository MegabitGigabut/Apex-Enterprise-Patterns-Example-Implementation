/**
 * Created by knura on 2/10/2022.
 */

public with sharing class CTRL_Accounts {
    @AuraEnabled(Cacheable=true)
    public static List<Account> getAllAccounts(String industryType){
        List<Account> accs = SEL_Accounts.getListAccounts(industryType);
        return accs;
    }
}
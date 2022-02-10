/**
 * Created by knura on 2/10/2022.
 */

public with sharing class SRV_Accounts {
    public static List<Account> industryTypeChecker(List<Account> accList){
        List<Account> accountsList = new List<Account>();
        for(Account acc : accList){
            if(String.isBlank(acc.Industry) && acc.Industry == 'Energy'){
                List<Account> accsIndustry = SEL_Accounts.getListAccounts(acc.Industry);
                accountsList.addAll(accsIndustry);
            }else if(String.isBlank(acc.Industry) && acc.Industry == 'Healthcare'){
                List<Account> accsHealthcare = SEL_Accounts.getListAccounts(acc.Industry);
                accountsList.addAll(accsHealthcare);
            }else if(String.isBlank(acc.Industry) && acc.Industry == 'Government'){
                List<Account> accsGovernment = SEL_Accounts.getListAccounts(acc.Industry);
                accountsList.addAll(accsGovernment);
            }
        }
        return accountsList;
    }
}
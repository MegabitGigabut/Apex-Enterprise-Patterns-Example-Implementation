/**
 * Created by knura on 2/10/2022.
 */

public with sharing class SEL_Accounts {

    public static List<String> fields = new List<String>{'Industry',
                                                         'Name',
                                                         'Rating'
    };
    public static List<Account> getListAccounts(String industryType){
        String query = 'SELECT ' + String.join(fields, ',') + ' FROM Account WHERE Industry = :industryType';
        return Database.query(String.escapeSingleQuotes(query));
    }
}
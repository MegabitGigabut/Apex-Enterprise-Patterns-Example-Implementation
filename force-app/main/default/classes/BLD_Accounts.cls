/**
 * Created by knura on 2/11/2022.
 */
public with sharing class BLD_Accounts{
    private Account acc;

    public BLD_Accounts(){
        acc = new Account();
    }
    public Account newInstance(){
        return acc;
    }

    public BLD_Accounts name(String name){
         acc.put(Account.Name, name);
         return this;
    }

    public BLD_Accounts rating(String rating){
        acc.put(Account.Rating, rating);
        return this;
    }

    public BLD_Accounts industry(String industry){
        acc.put(Account.Industry, industry);
        return this;
    }
}

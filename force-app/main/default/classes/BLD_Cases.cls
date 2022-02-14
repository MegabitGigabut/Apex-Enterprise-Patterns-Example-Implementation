/**
 * Created by knura on 2/14/2022.
 */

public with sharing class BLD_Cases {
    public Case css;

    public BLD_Cases(){
        css = new Case();
    }

    public Case newInstance(){
        return css;
    }
    public BLD_Cases status(String status){
        css.put(Case.Status, status);
        return this;
    }

    public BLD_Cases origin(String origin){
        css.put(Case.Origin, origin);
        return this;
    }

    public BLD_Cases accountId(Id accId){
        css.put(Case.AccountId, accId);
        return this;
    }
}
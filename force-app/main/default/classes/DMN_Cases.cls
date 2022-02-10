/**
 * Created by knura on 2/10/2022.
 */

public with sharing class DMN_Cases {
    public static Case caseCreator(Id AccountId){
        Case cs = new Case(
                Status='String',
                Origin='Phone',
                AccountId=AccountId
        );
        return cs;
    }
}
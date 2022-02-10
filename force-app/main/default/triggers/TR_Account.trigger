/**
 * Created by knura on 2/10/2022.
 */

trigger TR_Account on Account (before insert, before update, after insert, after update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        TRH_AccountHandler.afterUpdateHandler(Trigger.new, Trigger.oldMap);
    }
}
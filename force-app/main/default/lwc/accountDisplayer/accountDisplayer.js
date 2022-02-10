/**
 * Created by knura on 2/10/2022.
 */

import { LightningElement,wire,api } from 'lwc';
import getAllAccounts from '@salesforce/apex/CTL_Accounts.getAllAccounts';
import INDUSTRY from '@salesforce/schema/Account.Industry';
const columns = [
    {label:'Industry', fieldName:'Industry', type:'text'}
];
export default class AccountDisplayer extends LightningElement {
    @api recordId;
    @api accsList;
    industryName = '';
    col = columns;
    @wire(getAllAccounts, {industryName : '$industryName'})
    recordIndustry({data, error}){
        if(error){
            console.log(error);
        }else{
            this.accsList = data;
        }

    }
}
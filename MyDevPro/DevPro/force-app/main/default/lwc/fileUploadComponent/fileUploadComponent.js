import { LightningElement , api} from 'lwc';

export default class FileUploadComponent extends LightningElement {
    @api
    myRecordId;
    get acceptedFormats(){
        return['.pdf', '.png'];

    }
    handleUploadFinished(event){
        const UploadFiles = event.detail.files;
        alert('No. of files uploaded :' + UploadFiles.length);
    }
}
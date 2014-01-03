public class testURLController{
    public PageReference loadNextPage(){
        Id id = 'a39f00000004IKtAAM';
        Id oppId = 'a39f00000004IKtAAM';
        return new PageReference('/apex/testURL2?Id=' + id + '&oppId=' + oppId);
    }
}
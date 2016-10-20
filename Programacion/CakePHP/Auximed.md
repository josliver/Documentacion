Helpful Links to Issues I need to Fix on PHP / Cake PHP
====
Fixing Auximed

### 1. Issue with uploaded files after submited form validation

* [ANS1](http://stackoverflow.com/questions/4205634/restoring-the-value-of-a-input-type-file-after-failed-validation)
> 
You cannot populate the file input, to do so would be a serious security problem.
Instead, store the uploaded content on the server and store an id that you can use to reference it in a hidden input.
Clean the files up automatically after they reach a certain age, and provide a means for the user to change their mind about what file they want to upload (e.g. a checkbox >> checked by default) for each file being stored on the server for upload)
 
* [ANS2 THE GOOD ONE](http://stackoverflow.com/questions/6842571/can-you-re-populate-file-inputs-after-failed-form-submission-with-php-or-javascr)
> 
I think the short answer here is no. You can't repopulate file upload fields. However, you can work around it.
If a file has been selected and the form submitted, then you've already received the file. What you can do is keep a reference to the file on disk and put that in a hidden field and show a message to indicate to the user you still have their file uploaded so it does not need to be replaced/re-uploaded. When your form gets submitted again without a file, you can check for the hidden field value and use that to get your local copy of the file they uploaded in their last attempt.
The other way to do this is to either submit the form via ajax (using either flash or the iframe method for the file upload) or to do an ajax call to validate the form first, and then only submit as normal if valid (thus no form reload, no loss of file upload field data).
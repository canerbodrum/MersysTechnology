package Pages;

import Utilities.GWD;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

// POM : Page Object Model
public class DialogContent extends Parent{
   // kullanıcı ile dialogla veri alan bölümler

    public DialogContent() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy(css = "input[formcontrolname='username']")
    public WebElement username;

    @FindBy(css="input[formcontrolname='password']")
    public WebElement password;

    @FindBy(css="button[aria-label='LOGIN']")
    public WebElement loginButton;

    @FindBy(css="span[class='mat-tooltip-trigger logo-text']")
    public WebElement txtTechnoStudy;

    @FindBy(xpath="//ms-add-button[contains(@tooltip,'ADD')]//button")
    public WebElement addButton;

    @FindBy(xpath="//ms-text-field[@formcontrolname='name']/input")
    public WebElement nameInput;

    @FindBy(xpath="//ms-save-button/button")
    public WebElement saveButton;

    @FindBy(xpath="//div[contains(text(),'successfully')]")
    public WebElement successMessage;

    @FindBy(xpath="//div[contains(text(),'already exists')]")
    public WebElement alreadyExist;

    @FindBy(xpath="//mat-form-field//input[@data-placeholder='Name']")
    public WebElement searchInput;

    @FindBy(xpath="//ms-search-button//button")
    public WebElement searchButton;

    @FindBy(xpath="(//ms-delete-button//button)[1]")
    public WebElement deleteImageBtn;

    @FindBy(xpath="//button[@type='submit']")
    public WebElement deleteDialogBtn;

    @FindBy(xpath="//*[@id='ms-table-0']/div/cdk-virtual-scroll-viewport/div[1]/table/tbody/tr/td[3]/div[1]/ms-edit-button/button")
    public WebElement editAttestations;

    @FindBy(xpath="//*[@id='container-3']/content/app-attestation/ms-browse/div/ms-browse-search/div/mat-form-field")
    public WebElement attestationsName;



    public WebElement getWebElement(String strButton){

        switch (strButton)
        {
            case "addButton" : return addButton;
            case "saveButton" : return saveButton;
            case "nameInput" : return nameInput;
            case "attestationsName" : return attestationsName;
            case "searchInput" : return searchInput;
            case "searchButton" : return searchButton;
            case "editAttestations" : return editAttestations;
            case "deleteImageBtn" : return deleteImageBtn;
            case "deleteDialogBtn" : return deleteDialogBtn;
        }

        return null;
    }




    public void deleteItem(String searchText){
        sendKeysFunction(searchInput,searchText);
        clickFunction(searchButton);   //fuse-progress-bar/*   gözüküyor
        //beklet
        //1. StaleElemetn hatası verdi : erken buldum tez kaybettim
        //wait.until(ExpectedConditions.elementToBeClickable(searchButton));

        //fuse-progress-bar/*    bu 0 olana kadar beklet
        wait.until(ExpectedConditions.numberOfElementsToBe(By.xpath("//fuse-progress-bar/*") , 0));

        clickFunction(deleteImageBtn);
        clickFunction(deleteDialogBtn);
    }
}

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

    @FindBy(xpath="//ms-text-field[@formcontrolname='code']/input")
    public WebElement codeInput;

    @FindBy(xpath="//ms-save-button/button")
    public WebElement saveButton;

    @FindBy(xpath="//div[contains(text(),'successfully')]")
    public WebElement successMessage;

    @FindBy(xpath="//ms-text-field[@formcontrolname='shortName']/input")
    public WebElement shortName;

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

    @FindBy(xpath="//ms-text-field[@formcontrolname='budgetAccountIntegrationCode']//input")
    private WebElement integrationCode;

    @FindBy(xpath="//ms-integer-field[@formcontrolname='priority']/input")
    private WebElement priorityCode;

    @FindBy(xpath="//mat-slide-toggle[@formcontrolname='active']")
    private WebElement toggleBar;


    @FindBy(xpath="//mat-select//span[text()='Academic Period']")
    private WebElement academicPeriod;

    @FindBy(xpath="(//mat-option/span)[1]")
    private WebElement academicPeriod1;

    @FindBy(xpath="(//span[text()='Grade Level'])[1]")
    private WebElement gradeLevel;

    @FindBy(xpath="(//mat-option//span)[2]")
    private WebElement gradeLevel2;

    @FindBy(xpath="//*[@id='ms-table-0']/div/cdk-virtual-scroll-viewport/div[1]/table/tbody/tr/td[3]/div[1]/ms-edit-button/button")
    public WebElement editAttestations;

    @FindBy(xpath="//*[@id='container-3']/content/app-attestation/ms-browse/div/ms-browse-search/div/mat-form-field")
    public WebElement attestationsName;
    @FindBy(xpath="//*[@id='ms-table-0']/div/cdk-virtual-scroll-viewport/div[1]/table/tbody/tr/td[3]/div[1]/ms-edit-button/button")
    public WebElement editPositionCatagories;

    @FindBy(xpath="/html/body/hot-toast-container/div/div/hot-toast/div/div/div[2]/div/dynamic-view/div")
    public WebElement addNegative;

    @FindBy(xpath="/html/body/hot-toast-container/div/div/hot-toast/div/div/div[2]/div/dynamic-view/div")
    public WebElement deleteNegative;

    @FindBy(xpath="(//ms-edit-button/button)[1]")
    public WebElement editSchool;

    @FindBy(xpath="//ms-text-field[@formcontrolname='iban']/input")
    public WebElement iban;

    @FindBy(xpath="//ms-text-field[@formcontrolname='integrationCode']/input")
    public WebElement integrationCode2;

    @FindBy(xpath="//mat-select[@formcontrolname='currency']")
    public WebElement currency;

    @FindBy(xpath="(//div[@role='listbox']/mat-option/span)[4]")
    public WebElement currencyMoney;

    @FindBy(xpath="//ms-edit-button[@table='true']/button")
    public WebElement editButton;

    @FindBy(xpath="//*[text()=' There is no data to display ']")
    public WebElement noData;


    public WebElement getWebElement(String strButton){

        switch (strButton)
        {
            case "addButton" : return addButton;
            case "saveButton" : return saveButton;
            case "nameInput" : return nameInput;
            case "codeInput" : return codeInput;
            case "integrationCode" : return integrationCode;
            case "priorityCode" : return priorityCode;
            case "toggleBar" : return toggleBar;
            case "academicPeriod" : return academicPeriod;
            case "academicPeriod1" : return academicPeriod1;
            case "gradeLevel" : return gradeLevel;
            case "gradeLevel2" : return gradeLevel2;
            case "editAttestations" : return editAttestations;
            case "attestationsName" : return attestationsName;
            case "searchInput" : return searchInput;
            case "searchButton" : return searchButton;
            case "deleteImageBtn" : return deleteImageBtn;
            case "deleteDialogBtn" : return deleteDialogBtn;
            case "editPositionCatagories" : return editPositionCatagories;
            case "addNegative" : return addNegative;
            case "deleteNegative" : return deleteNegative ;
            case "editSchool" : return editSchool ;
            case "iban" : return iban ;
            case "integrationCode2" : return integrationCode2 ;
            case "currency" : return currency ;
            case "currencyMoney" : return currencyMoney ;
            case "editButton" : return editButton ;
            case "noData" : return noData ;

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

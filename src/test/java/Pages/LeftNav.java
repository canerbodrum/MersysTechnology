package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent{
   // sol taraftaki menuler burda

    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy(xpath = "(//span[text()='Setup'])[1]")
    public WebElement setup;

    @FindBy(xpath = "//span[text()='Parameters']")
    public WebElement parameters;

    @FindBy(xpath = "(//span[text()='Countries'])[1]")
    public WebElement countries;

    @FindBy(xpath = "//span[text()='Citizenships']")
    public WebElement citizenShip;

    @FindBy(xpath = "//span[text()='Nationalities']")
    private WebElement nationalities;

    @FindBy(xpath = "(//span[text()='Fees'])[1]")
    private WebElement fees;

    @FindBy(xpath="(//span[text()='Entrance Exams'])[1]")
    private WebElement entranceExamsOne;

    @FindBy(xpath="(//span[text()='Setup'])[2]")
    private WebElement setupTwo;

    @FindBy(xpath="(//span[text()='Entrance Exams'])[2]")
    private WebElement entranceExamsTwo;

    @FindBy(xpath = "//span[text()='Human Resources']")
    public WebElement humanResources;

    @FindBy(xpath = "(//span[text()='Setup'])[3]")
    public WebElement humanSetup;

    @FindBy(xpath = "//span[text()='Attestations']")
    public WebElement attestations;

    @FindBy(xpath="//*[@id='container-1']/fuse-sidebar/navbar/navbar-vertical-style-1/mat-toolbar/div[1]/div/div/div/fuse-navigation/div/fuse-nav-vertical-group/div/fuse-nav-vertical-collapsable[6]/div/fuse-nav-vertical-collapsable[1]/div/fuse-nav-vertical-item[4]/a/span")
    public WebElement positioncatagories;

    @FindBy(xpath="//*[@id='container-1']/fuse-sidebar/navbar/navbar-vertical-style-1/mat-toolbar/div[1]/div/div/div/fuse-navigation/div/fuse-nav-vertical-group/div/fuse-nav-vertical-collapsable[1]/div/fuse-nav-vertical-collapsable[2]/a/span")
    public WebElement schollSetup;

    @FindBy(xpath="/html/body/app/vertical-layout-1/div/div/fuse-sidebar/navbar/navbar-vertical-style-1/mat-toolbar/div[1]/div/div/div/fuse-navigation/div/fuse-nav-vertical-group/div/fuse-nav-vertical-collapsable[1]/div/fuse-nav-vertical-collapsable[2]/div/fuse-nav-vertical-item[5]/a/span")
    public WebElement departments;
    public WebElement getWebElement(String strButton){

        switch (strButton)
        {
            case "setup" : return setup;
            case "parameters" : return parameters;
            case "countries" : return countries;
            case "citizenShip" : return citizenShip;
            case "nationalities" : return nationalities;
            case "fees" : return fees;
            case "entranceExamsOne" : return entranceExamsOne;
            case "setupTwo" : return setupTwo;
            case "entranceExamsTwo" : return entranceExamsTwo;
            case "humanResources" : return humanResources;
            case "humanSetup" : return humanSetup;
            case "attestations" : return attestations;
            case "positioncatagories" : return positioncatagories;
            case "schollSetup" : return schollSetup;
            case "departments" : return departments;
        }

        return null;
    }


}

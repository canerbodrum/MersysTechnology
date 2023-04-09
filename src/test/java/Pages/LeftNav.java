package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent{
   // sol    taraftaki menuler burda

    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy(xpath = "//span[text()='Human Resources']")
    public WebElement humanResources;

    @FindBy(xpath = "(//span[text()='Setup'])[3]")
    public WebElement humanSetup;

    @FindBy(xpath = "//span[text()='Attestations']")
    public WebElement attestations;




    public WebElement getWebElement(String strButton){

        switch (strButton)
        {
            case "humanResources" : return humanResources;
            case "humanSetup" : return humanSetup;
            case "attestations" : return attestations;
        }

        return null;
    }




}

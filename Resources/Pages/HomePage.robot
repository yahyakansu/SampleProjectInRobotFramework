*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MainButton}  xpath://button[@class='icon-fallback-text site-nav__link site-nav__link--burger js-drawer-open-button-left']
${RideOnsButton}  partial link:Ride-ons
${RacerButton}  partial link:Racer
${ExplorerButton}  partial link:Explorer
${TwoSeatButton}  partial link:Two Seat
${AllColButton}  xpath://*[@id="NavDrawer"]/div/ul/li[6]/a
${Login}  xpath://span[@class='icon icon-user']


*** Keywords ***
Click the Main Button
    Click Button  ${MainButton}

Click the Ride-on Button
    Click Button  ${RideOnsButton}

Click the Racer Button
    Click Button  ${RacerButton}

Click the Explorer Button
    Click Button  ${ExplorerButton}

Click the Two Seated Button
    Click Button  ${TwoSeatButton}

Click the All Collections Button
    Wait Until Element Is Visible  ${AllColButton}
    Click Element  ${AllColButton}

Open Account Page
    Click Element  ${Login}
    Page Should Contain  Login

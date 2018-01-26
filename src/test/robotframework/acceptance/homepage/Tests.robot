*** Settings ***
Resource                                Resources.robot
Resource                                PageObjects.robot
Resource                                ../CommonResources.robot


*** Test Cases ***
Main Header Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Main Header Shows Up
  Main Logo Has Image And Text

Hero Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Hero Section Background Displayed
  Hero Section Background Changes Automatically
  Hero Section Text Displayed
  Hero Section Buttons Displayed
  
Choose Design Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Navigate To Choose Design Section
  Choose Design Section Background Displayed
  Choose Design Section Text Displayed
  
Free Domain Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Free Domain Section Background Displayed
  Free Domain Section Text Displayed
  
Earn Money Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Earn Money Section Background Displayed
  Earn Money Section Text Displayed
  
Know Your Audience Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Know Your Audience Section Background Displayed
  Know Your Audience Section Text Displayed
  
Memories Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Memories Section Background Displayed
  Memories Section Text Displayed
  
Millions Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Millions Section Background Displayed
  Millions Section Text Displayed
  Millions Create Blog Button Displayed
  
Footer Section Contents Displayed
  [Tags]                                regression  smoke
  Open Home Page
  Footer Section Columns Displayed
  Footer Meta Section Displayed
  Language Selection Displayed
  
Language Switching
  [Tags]                                regression
  Open Home Page
  Current Language Is Disabled From Selection
  Change To Each Available Language
*** Settings ***
Documentation    Suite description
Library   Selenium2Library
Library   BuiltIn
Resource  file_resource/Variables.robot
Resource  file_resource/Keywords.robot



*** Test Cases ***
เทสส่งค่าไปที่คีย์เวิร์ค
    Hello Name   tassanee


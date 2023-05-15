// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Report {
    
    mapping(address => bool) public isOwner;
    mapping(address => bool) public isDoctor;
    address nextReport;
    bool isEditable = true;
    string treatment;
    string diagnosis;
    string reportType;
	string signature;

    constructor(address _user, address _doctor, string memory _reportType, string memory _originalImage, string memory _maskedImage) {
        isOwner[_user] = true;
        isOwner[_doctor] = true;
        isDoctor[_doctor] = true;
        reportType = _reportType;
    }

    modifier laboratory {
        require(isOwner[msg.sender], "Only the owner can perform this action");
        _;
    }

    modifier doctor_istrue {
        require(isDoctor[msg.sender], "Only the doctor can perform this action");
        _;
    }

    function addOwner(address _owner) public laboratory {
        isOwner[_owner] = true;
    }

    function addDoctor(address _doctor) public laboratory {
        isOwner[_doctor] = true;
        isDoctor[_doctor] = true;
    }

    function setData(string memory _treatment, string memory _diagnosis, string memory _signature) public laboratory doctor_istrue {
        require(isEditable, "The report is no longer editable");
        treatment = _treatment;
        diagnosis = _diagnosis;
		signature = _signature;
        isEditable = false;
    }
    function gettreatment() public view laboratory returns (string memory) {
        return treatment;
    }
    function getDiagnosis() public view laboratory returns (string memory) {
        return diagnosis;
    }
	function getSignature() public view laboratory returns (string memory) {
		return signature;
	}
    function linkToNextReport(address newReport) public laboratory returns (bool){
        nextReport = newReport;
        return true;
    }

}
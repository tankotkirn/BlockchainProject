// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Doctor{ 
    mapping (address => bool) public isDoctor;
    mapping (address => bool) public isOwner;
    string public diagnosis;
    string public treatment;
    string public signature;
    bool public lock;
    address public nextReport;


    constructor(address owner, address _doctor, string memory _diagnosis, string memory _signature) {
        isOwner[owner] = true;
        isDoctor[_doctor] = true;
        diagnosis = _diagnosis;
        signature = _signature;
        lock = false;
    }

    modifier doctor_istrue {
        require(isDoctor[msg.sender], "Only the consulting doctor can view the report");
        _;
    }

    function addDoctor(address _doc) public {
        isDoctor[_doc] = true;
    }

    function addDiagnosis(string memory _diagnosis, string memory _signature) public doctor_istrue {
        require(lock == false, "Report is locked by the doctor and cannot be edited");
        diagnosis = _diagnosis;
        if (compareStrings(_diagnosis, "Cancer")) {
            treatment = "Chemotherapy: Chemotherapy uses drugs to kill cancer cells or prevent their growth. It can be administered orally or intravenously and may be used before or after surgery to target cancer cells throughout the body.";
        } 
        else if (compareStrings(_diagnosis, "Diabities")) {
            treatment = "Medications: Depending on the type of diabetes medications may be prescribed to help manage blood sugar levels. For type 1 diabetes insulin. Type 2 diabetes may be managed with oral medications." ;
        } 
        else if (compareStrings(_diagnosis, "Asthama")) {
            treatment = "Inhalers: Inhalers are the primary medication for managing asthma symptoms. They deliver medication directly to the lungs, helping to open the airways and relieve symptoms.";
        }
        else if (compareStrings(_diagnosis, "Colestrol")) {
            treatment = "Dietary Changes: Adopting a heart-healthy diet is an essential, includes reducing saturated fats increasing intake of soluble fiber (found in fruits, vegetables, and whole grains), and incorporating sources of healthy fats.";
        }
        else if (compareStrings(_diagnosis, "Blood Pressure")) {
            treatment = "Healthy Diet: Adopting the Dietary Approaches to Stop Hypertension (DASH) eating plan, which emphasizes fruits, vegetables, proteins, and low-fat dairy products. Reducing sodium (salt) intake.";
        }
        else if (compareStrings(_diagnosis, "Viral")) {
            treatment = "Antiviral Medications: Some specific viral infections may require antiviral medications to reduce the severity and duration of the illness. These medications work by targeting the virus and inhibiting its replication. ";
        }
        else if (compareStrings(_diagnosis, "Fracture")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis." ;
        } 
        else if (compareStrings(_diagnosis, "Tuberculosis")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Alzheimer's")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Osteoporosis")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Hepatitis")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }else if (compareStrings(_diagnosis, "Migraine")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis." ;
        } 
        else if (compareStrings(_diagnosis, "Obesity")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Parkinson's")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Epilepsy")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Lupus")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Malaria")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis." ;
        } 
        else if (compareStrings(_diagnosis, "Asthama")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Influenza")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Hypertension")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else if (compareStrings(_diagnosis, "Arthritis")) {
            treatment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia erat a lectus tempus eleifend. Morbi non ipsum quis nunc convallis vulputate. Vivamus hendrerit diam ac nisl consequat, ac ullamcorper metus laoreet. In vel ipsum in diam viverra mattis.";
        }
        else {
            treatment = "The patient further needs to be examined in order to diagnose accurately.";
        }
        signature = _signature;
    }

    // function getDiagnosis() public view returns (string memory) {
    //     return diagnosis;
    // }

    function gettreatment() public view returns (string memory) {
        return treatment;
    }

    function linkToNext(address contractAddress) public returns (address) {
        nextReport = contractAddress;
        return contractAddress;
    }
    
    function compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
    }
}

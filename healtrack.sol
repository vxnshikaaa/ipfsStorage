//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract HealTrack {
    uint256 public totalRecord;
    address public owner;
    string public ipfsHash;

    constructor(){
        ipfsHash = "NoHashStoredYet";
        owner = msg.sender;
    }

    struct Record {
        uint256 id;
        string title;
        string description;
        bool islisted;
        string imageURI;
        address[] owners;
        uint256 timestamp;
    }

    function changeHash(string memory newHash) public {
        require(msg.sender == owner, "Not Owner of Record");
        ipfsHash = newHash;
    }

    function fetchHash() public view returns (string memory){
        return (ipfsHash);
    }
}



// pragma solidity ^0.8.8;

// contract Medical {

//     uint public id;

//     struct Patient { 
//         uint uid;
//         string firstname;
//         string lastname;
//         string gender;
//         string phoneno;
//         uint age;
//         string bloodgroup;
//     }

//     struct Date {
//         string date; 
//         string desc;
//         string report;
//         string reportaddr;
//     }    

//     constructor() {
//         id = 0;
//     }
    
//      mapping (uint => Patient) PatientList;
//      mapping(uint => Date[]) History;

//     function create_patient(string memory _firstname,string memory _lastname,string memory _gender,string memory _phoneno,uint _age,string memory _bloodgroup) public {
//         id = id + 1;
//         Patient memory new_patient = Patient(id,_firstname,_lastname,_gender,_phoneno,_age,_bloodgroup);
//         PatientList[id] = new_patient;
       
//     }

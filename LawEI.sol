pragma solidity ^0.4.20;


contract LawEI{

    struct CaseInfo{
        string lawEIid;
        string data;
        string hash;
        string time;
        string preHash;
        string userKey;
    }

    mapping (string => CaseInfo) caseInfoMap;

    function add(string lawEIid, string data, string hash, string time, string preHash, string userKey) public{
        CaseInfo memory caseInfo;
        caseInfo.lawEIid = lawEIid;
        caseInfo.data = data;
        caseInfo.hash = hash;
        caseInfo.time = time;
        caseInfo.preHash = preHash;
        caseInfo.userKey = userKey;
        caseInfoMap[lawEIid] = caseInfo;
    }

    function get(string lawEIid) public view returns(string, string, string, string, string ) {
        CaseInfo memory caseInfo = caseInfoMap[lawEIid];
        return(caseInfo.data,caseInfo.hash,caseInfo.time,caseInfo.preHash,caseInfo.userKey);
    }
}

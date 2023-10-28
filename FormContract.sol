// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FormDataStorage {
    struct FormData {
        uint projectId;
        uint plotId;
        string location;
        uint auditId;
        uint startDate;
        string activity;
        string growth;
        uint lastAuditDate;
    }

    FormData public formData;

    event DataStored(uint projectId, uint plotId, string location, uint auditId, uint startDate, string activity, string growth, uint lastAuditDate);

    constructor(uint _projectId, uint _plotId, string memory _location, uint _auditId, uint _startDate, string memory _activity, string memory _growth, uint _lastAuditDate) {
        formData = FormData(_projectId, _plotId, _location, _auditId, _startDate, _activity, _growth, _lastAuditDate);
    }

    function storeFormData(uint _projectId, uint _plotId, string memory _location, uint _auditId, uint _startDate, string memory _activity, string memory _growth, uint _lastAuditDate) public {
        formData = FormData(_projectId, _plotId, _location, _auditId, _startDate, _activity, _growth, _lastAuditDate);
        emit DataStored(_projectId, _plotId, _location, _auditId, _startDate, _activity, _growth, _lastAuditDate);
    }

    function getFormData() public view returns (uint, uint, string memory, uint, uint, string memory, string memory, uint) {
        return (formData.projectId, formData.plotId, formData.location, formData.auditId, formData.startDate, formData.activity, formData.growth, formData.lastAuditDate);
    }
}

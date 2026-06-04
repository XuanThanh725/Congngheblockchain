// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AgriculturalTraceability {

    struct TransportStep {
        string status;
        string location;
        uint time;
    }

    struct Product {
        uint id;
        string name;
        string origin;
        string harvestDate;
        string producer;
        string imageUrl;
        bool deleted;
    }

    uint public productCount;

    mapping(uint => Product) public products;
    mapping(uint => TransportStep[]) public transportHistory;

    function addProduct(
        string memory _name,
        string memory _origin,
        string memory _harvestDate,
        string memory _producer,
        string memory _imageUrl
    ) public {
        productCount++;

        products[productCount] = Product(
            productCount,
            _name,
            _origin,
            _harvestDate,
            _producer,
            _imageUrl,
            false
        );
    }

    function updateTransport(
        uint _id,
        string memory _status,
        string memory _location
    ) public {
        require(products[_id].id != 0, "San pham khong ton tai");
        require(!products[_id].deleted, "San pham da bi xoa");

        transportHistory[_id].push(
            TransportStep(_status, _location, block.timestamp)
        );
    }

    function deleteProduct(uint _id) public {
        require(products[_id].id != 0, "San pham khong ton tai");
        require(!products[_id].deleted, "San pham da bi xoa roi");

        products[_id].deleted = true;
    }

    function getProduct(uint _id)
        public
        view
        returns (
            uint,
            string memory,
            string memory,
            string memory,
            string memory,
            string memory,
            bool
        )
    {
        require(products[_id].id != 0, "San pham khong ton tai");

        Product memory p = products[_id];

        return (
            p.id,
            p.name,
            p.origin,
            p.harvestDate,
            p.producer,
            p.imageUrl,
            p.deleted
        );
    }

    function getTransportCount(uint _id) public view returns (uint) {
        return transportHistory[_id].length;
    }

    function getTransportStep(uint _id, uint _index)
        public
        view
        returns (
            string memory,
            string memory,
            uint
        )
    {
        TransportStep memory step = transportHistory[_id][_index];

        return (
            step.status,
            step.location,
            step.time
        );
    }

    function getActiveProductCount() public view returns (uint) {
        uint count = 0;

        for (uint i = 1; i <= productCount; i++) {
            if (products[i].id != 0 && !products[i].deleted) {
                count++;
            }
        }

        return count;
    }

    function getDeletedProductCount() public view returns (uint) {
        uint count = 0;

        for (uint i = 1; i <= productCount; i++) {
            if (products[i].deleted) {
                count++;
            }
        }

        return count;
    }
}
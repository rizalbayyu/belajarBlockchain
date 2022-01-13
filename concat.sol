pragma solidity ^0.8.0;
contract belajarBlockchain {

    function concat1(string calldata a, string calldata b) external pure returns (string memory){
        return string(abi.encodePacked(a, b));
    }

    function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k = k-1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }

    function concat2(string calldata a) external pure returns (string memory){
        string memory d = uint2str(1234);
        return string(abi.encodePacked(a, d));
    }

    struct textStruct { 
      string text1;
      string text2;
      string text3;
   }
   textStruct ts;

   function setStruct() public {
       ts = textStruct('hello', 'belajar', 'blockchain');
   }

    function concat3() public view returns (string memory){
        string memory a = ts.text1;
        string memory b = ts.text2;
        string memory c = ts.text3;
        return string(abi.encodePacked(a, b, c));
    }
}

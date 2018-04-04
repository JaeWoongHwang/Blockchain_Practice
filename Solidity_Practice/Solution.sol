pragma solidity ^0.4.18;

contract Solution {
    uint t1 = 0;
    bool t2 = false;

    function playground() public returns (uint, bool) {


        for (uint i = 0; i < 10; i++) {
            t1++;
        }

        t2 = 2 ** 3 == 8 && t1 == 10;

        // Call event
        getLog(t1, t2);
        return (t1, t2);
    }

    // getLog event
    event getLog(uint _t1, bool _t2);
}

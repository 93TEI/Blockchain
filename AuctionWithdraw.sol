// EvilBidder를 방지하려면
// 입찰금을 반환하는데 push형 송금 대신 전용 함수를 사용하여
// 사용자가 직접 인출해가도록(withdraw)하는 pull형 송금을 사용해야 한다.

pragma solidity^0.4.11;
contract AuctionWithdraw {
    address public highestBidder;   //최고 입찰자 address
    uint public highestBid;     //최고 입찰액
    mapping(address => uint) public userBalances; //반환할 액수를 관리하는 매핑
    
    //생성자
    function AuctionWithdraw() payable {
        highestBidder = msg.sender;
        highestBid = 0;
    }
}
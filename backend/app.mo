import Debug "mo:base/Debug";
import Float "mo:base/Float";
persistent actor Project {
// Decentralized Baanking System
// CheckBalance, TopUp, Withdraw
// Cheack Balance
stable var balance : Float =100;
public func checkBalance(): async Text{
return "Your Balance is:" # Float.toText(balance);
};

// TopUp Function
public func TopUp(amount: Float): async Text{
  balance:= balance + amount;
  return "An amount:" # Float.toText(amount) # "added"; 
};

// Withdraw
  public func Withdraw(amount :Float):async Text{
  balance := balance - amount;
  return "An amount :" # Float.toText(amount) # "added";
};  
}; 


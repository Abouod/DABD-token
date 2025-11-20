import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";

actor Token {

  var owner : Principal = Principal.fromText("vgdcs-rthzy-kbgmh-h5hbs-n67ea-pjd3w-rp3ch-3am3y-o2dyy-gtv7b-7ae");
  var totalSupply : Nat = 1000000000;
  var symbol : Text = "DABD";

  var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

  balances.put(owner, totalSupply);

  public query func balanceOf(who : Principal) : async Nat {

    let balance : Nat = switch (balances.get(who)) {
        case null 0;
        case (?result) result;
    };

    return balance;
  }

};

public class Human extends Citizen{
    protected Citizen[] friends;
    protected int nFriends;

    protected Human(){
        friends = new Citizen[5];
        nFriends = 0;
    }

    protected boolean isAFriend(Citizen c){
        for(int i = 0; i < nFriends; i++){
            if(friends[i] == c){
                return true;
            }
        }

        return false;
    }

    public void greet(Citizen c) {
        super.greet(c);

        if(!isAFriend(c) && nFriends < 5){
            friends[nFriends] = c;
            nFriends++;
        }
    }

    public void printFriendsNames(){
        for(int i = 0; i < nFriends; i++)
            System.out.println(friends[i].name);
    }
}

global class newclass{
    public static void test(){
        string accId='001NS000014oHl1YAE';
        doInFuture(accId);
    }
    @future(callout=true)
    public static void doInFuture(String accId){
         // Perform a callout to an external service
          Account aCC=[Select id , Name from Account where Id=:accId Limit 1];
          system.debug(aCC.Name);
          acc.Name='update from future';
          update aCC;
    }
}
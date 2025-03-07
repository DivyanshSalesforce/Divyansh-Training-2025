public class abcd {
    public static void querySystemMode(){
        List<Contact> listofContact = [Select Id,Description from Contact with System_MODE];
        System.debug('list of Contacts: '+listofContact.size());
    }
    public static void queryUserMode(){
        List<Contact> listofContact = [Select Id,Description from Contact with User_MODE];
        System.debug('list of Contacts: '+listofContact.size());
    }
    public static void dmlSystemMode(){
        List<Contact> listofContact = new List<Contact>{(new Contact (LastName = 'Test Contact', description = 'Test Description'))};
        Database.insert(listofContact, AccessLevel.SYSTEM_MODE);
    }
    public static void dmlUserMode(){
        List<Contact> listofContact = new List<Contact>{(new Contact (LastName = 'Test Contact', description = 'Test Description'))};
        Database.insert(listofContact, AccessLevel.USER_MODE);
    }
 
}
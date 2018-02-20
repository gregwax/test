global class getLeadsInfo {
 WebService static List<Lead> getLeadAddressByEmail(string LeadEmail) {
    List<Lead> l1=[SELECT Street, City, State, PostalCode from Lead WHERE Email = :LeadEmail ];
    if(l1.size()>0)
    {
       return l1;
    } else
    return Null;
 }
}
package proyecto_final;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

@groovy.transform.EqualsAndHashCode(includes="username") @groovy.transform.ToString(includeNames=true, includes="username", includePackage=false) public class User
  extends java.lang.Object  implements
    java.io.Serializable,    groovy.lang.GroovyObject {
;
public User
(java.lang.String username, java.lang.String password) {
super ();
}
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
public  java.lang.Object getSpringSecurityService() { return null;}
public  void setSpringSecurityService(java.lang.Object value) { }
public  java.lang.String getUsername() { return (java.lang.String)null;}
public  void setUsername(java.lang.String value) { }
public  java.lang.String getPassword() { return (java.lang.String)null;}
public  void setPassword(java.lang.String value) { }
public  boolean getEnabled() { return false;}
public  boolean isEnabled() { return false;}
public  void setEnabled(boolean value) { }
public  boolean getAccountExpired() { return false;}
public  boolean isAccountExpired() { return false;}
public  void setAccountExpired(boolean value) { }
public  boolean getAccountLocked() { return false;}
public  boolean isAccountLocked() { return false;}
public  void setAccountLocked(boolean value) { }
public  boolean getPasswordExpired() { return false;}
public  boolean isPasswordExpired() { return false;}
public  void setPasswordExpired(boolean value) { }
public static  java.lang.Object getTransients() { return null;}
public static  void setTransients(java.lang.Object value) { }
public static  java.lang.Object getConstraints() { return null;}
public static  void setConstraints(java.lang.Object value) { }
public static  java.lang.Object getMapping() { return null;}
public static  void setMapping(java.lang.Object value) { }
public  java.util.Set<proyecto_final.Role> getAuthorities() { return (java.util.Set<proyecto_final.Role>)null;}
public  java.lang.Object beforeInsert() { return null;}
public  java.lang.Object beforeUpdate() { return null;}
protected  void encodePassword() { }
}

package proyecto_final;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

@groovy.transform.ToString(cache=true, includeNames=true, includePackage=false) public class UserRole
  extends java.lang.Object  implements
    java.io.Serializable,    groovy.lang.GroovyObject {
;
public UserRole
(proyecto_final.User u, proyecto_final.Role r) {
super ();
}
public static  proyecto_final.UserRole create(proyecto_final.User user, proyecto_final.Role role) { return (proyecto_final.UserRole)null;}
public static  boolean remove(proyecto_final.User u, proyecto_final.Role r) { return false;}
public static  void removeAll(proyecto_final.User u) { }
public static  void removeAll(proyecto_final.Role r) { }
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
public  proyecto_final.User getUser() { return (proyecto_final.User)null;}
public  void setUser(proyecto_final.User value) { }
public  proyecto_final.Role getRole() { return (proyecto_final.Role)null;}
public  void setRole(proyecto_final.Role value) { }
public static  java.lang.Object getConstraints() { return null;}
public static  void setConstraints(java.lang.Object value) { }
public static  java.lang.Object getMapping() { return null;}
public static  void setMapping(java.lang.Object value) { }
@java.lang.Override() public  boolean equals(java.lang.Object other) { return false;}
@java.lang.Override() public  int hashCode() { return (int)0;}
public static  proyecto_final.UserRole get(long userId, long roleId) { return (proyecto_final.UserRole)null;}
public static  boolean exists(long userId, long roleId) { return false;}
public static  proyecto_final.UserRole create(proyecto_final.User user, proyecto_final.Role role, boolean flush) { return (proyecto_final.UserRole)null;}
public static  boolean remove(proyecto_final.User u, proyecto_final.Role r, boolean flush) { return false;}
public static  void removeAll(proyecto_final.User u, boolean flush) { }
public static  void removeAll(proyecto_final.Role r, boolean flush) { }
}

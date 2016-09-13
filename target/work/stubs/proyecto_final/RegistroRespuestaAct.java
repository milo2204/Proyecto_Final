package proyecto_final;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

@groovy.transform.ToString(cache=true, includeNames=true, includePackage=false) public class RegistroRespuestaAct
  extends java.lang.Object  implements
    java.io.Serializable,    groovy.lang.GroovyObject {
;
public RegistroRespuestaAct
(proyecto_final.Actividad u, WebService.RespuestaActividad r) {
super ();
}
public static  proyecto_final.RegistroRespuestaAct create(proyecto_final.Actividad act, WebService.RespuestaActividad resp) { return (proyecto_final.RegistroRespuestaAct)null;}
public static  boolean remove(proyecto_final.Actividad a, WebService.RespuestaActividad r) { return false;}
public static  void removeAll(proyecto_final.Actividad a) { }
public static  void removeAll(WebService.RespuestaActividad r) { }
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
public  proyecto_final.Actividad getAct() { return (proyecto_final.Actividad)null;}
public  void setAct(proyecto_final.Actividad value) { }
public  WebService.RespuestaActividad getResp() { return (WebService.RespuestaActividad)null;}
public  void setResp(WebService.RespuestaActividad value) { }
public static  java.lang.Object getConstraints() { return null;}
public static  void setConstraints(java.lang.Object value) { }
public static  java.lang.Object getMapping() { return null;}
public static  void setMapping(java.lang.Object value) { }
@java.lang.Override() public  boolean equals(java.lang.Object other) { return false;}
@java.lang.Override() public  int hashCode() { return (int)0;}
public static  proyecto_final.RegistroRespuestaAct get(long actId, long respId) { return (proyecto_final.RegistroRespuestaAct)null;}
public static  boolean exists(long actId, long respId) { return false;}
public static  proyecto_final.RegistroRespuestaAct create(proyecto_final.Actividad act, WebService.RespuestaActividad resp, boolean flush) { return (proyecto_final.RegistroRespuestaAct)null;}
public static  boolean remove(proyecto_final.Actividad a, WebService.RespuestaActividad r, boolean flush) { return false;}
public static  void removeAll(proyecto_final.Actividad a, boolean flush) { }
public static  void removeAll(WebService.RespuestaActividad r, boolean flush) { }
}

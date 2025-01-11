abstract class PropertiesRepository{
  Future getProperties();

  Future createProperty();

  Future getSpecificProperty(String id);

  Future updateProperty(String id);

  Future deleteProperty(String id);
}
abstract class PropertiesRepository{
  Future getProperties();

  Future createProperty();

  Future getSpecificProperty(num id);

  Future updateProperty(String id);

  Future deleteProperty(String id);
}
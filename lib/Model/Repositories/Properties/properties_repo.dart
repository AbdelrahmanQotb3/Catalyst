abstract class PropertiesRepository{
  Future getProperties();

  Future createProperty();

  Future getSpecificProperty(num id);

  Future updateProperty(num id);

  Future deleteProperty(num id);
}
using System.Reflection;
using System.Text.Json;
using System.Xml.Serialization;
using DataBaseHonework;

Faculty itis = new Faculty("12", "ITIS", "Abramskiy", true, "79173333333");
Speciality developer = new Speciality("258", itis, "developer", "bachelor");
Student egor = new Student("18", developer, "Корольков Егор Викторович", "Kazan");
Discipline bd = new Discipline("69", "DataBase");
Study study = new Study(egor, bd, 3, 2);

DataBase data = new DataBase(itis, developer, egor, study, bd);
Console.WriteLine("Данные после json сериализации");

using (FileStream jsonfile = new FileStream("DataJson.json", FileMode.OpenOrCreate))
{
    JsonSerializer.Serialize(jsonfile,data);
    DataBase? datajson = JsonSerializer.Deserialize<DataBase>(jsonfile);
}



XmlSerializer xmlSerializer = new XmlSerializer(typeof(DataBase));
using (FileStream fs = new FileStream("DataXml.xml", FileMode.OpenOrCreate))
{
    xmlSerializer.Serialize(fs, data);
    DataBase? dataxml = xmlSerializer.Deserialize(fs) as DataBase;
    Console.WriteLine("Данные были десериализованы из xml");
}





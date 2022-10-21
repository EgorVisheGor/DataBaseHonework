namespace DataBaseHonework;

public class Speciality
{
    public string SpecialityCode { get; set; }
    public Faculty FacultyCode { get; set; }
    public string ShortName { get; set; }
    public string Degree { get; set; }

    public Speciality()
    {
    }

    public Speciality(string specialityCode, Faculty facultyCode, string shortName, string degree)
    {
        SpecialityCode = specialityCode;
        FacultyCode = facultyCode;
        ShortName = shortName;
        Degree = degree;
    }
}
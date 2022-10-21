namespace DataBaseHonework;

public class Faculty
{
    public string FacultyCode { get; set; }
    public string ShortName { get; set; }
    public string Dean { get; set; }
    public bool StudentHostel { get; set; }
    public string PhoneNumber { get; set; }

    public Faculty()
    {
    }

    public Faculty(string facultyCode, string shortName, string dean, bool studentHostel, string phoneNumber)
    {
        FacultyCode = facultyCode;
        ShortName = shortName;
        Dean = dean;
        StudentHostel = studentHostel;
        PhoneNumber = phoneNumber;
    }
}
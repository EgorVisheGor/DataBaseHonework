namespace DataBaseHonework;

public class Student
{
    public string StudentCode { get; set; }
    public Speciality SpecialityName { get; set; }
    public string FIO { get; set; }
    public string Address { get; set; }

    public Student()
    {
    }

    public Student(string studentCode, Speciality specialityName, string fio, string address)
    {
        StudentCode = studentCode;
        SpecialityName = specialityName;
        FIO = fio;
        Address = address;
    }
}
namespace DataBaseHonework;

public class DataBase
{
    public Faculty Faculty { get; set; }
    public Speciality Speciality { get; set; }
    public Student Student { get; set; }
    public Study Study { get; set; }
    public Discipline Discipline { get; set; }

    public DataBase()
    {
    }

    public DataBase(Faculty faculty, Speciality speciality, Student student, Study study, Discipline discipline)
    {
        Faculty = faculty;
        Speciality = speciality;
        Student = student;
        Study = study;
        Discipline = discipline;
    }
}
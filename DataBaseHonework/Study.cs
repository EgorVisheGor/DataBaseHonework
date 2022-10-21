namespace DataBaseHonework;

public class Study
{
    public Student StudentCode{ get; set; }
    public Discipline DisciplineCode { get; set; }
    public int Term { get; set; }
    public int Mark { get; set; }

    public Study()
    {
    }

    public Study(Student studentCode, Discipline disciplineCode, int term, int mark)
    {
        StudentCode = studentCode;
        DisciplineCode = disciplineCode;
        Term = term;
        Mark = mark;
    }
}
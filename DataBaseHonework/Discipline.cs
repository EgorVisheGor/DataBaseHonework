namespace DataBaseHonework;

public class Discipline
{
    public string DisciplineCode { get; set; }
    public string DisciplineName { get; set; }

    public Discipline()
    {
    }

    public Discipline(string disciplineCode, string disciplineName)
    {
        DisciplineCode = disciplineCode;
        DisciplineName = disciplineName;
    }
}
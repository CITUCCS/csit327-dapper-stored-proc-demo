using StoredProcDemo.Repositories;

internal class Program
{
    private static async Task Main(string[] args)
    {
        ISchoolRepository repository = new SchoolRepository();

        var revenue1 = await repository.GetSchoolRevenue(1);
        var revenue2 = await repository.GetSchoolRevenue(2);
        var revenue3 = await repository.GetSchoolRevenue(3);
        var revenue4 = await repository.GetSchoolRevenue(4);

        Console.WriteLine("CIT : " + revenue1);
        Console.WriteLine("USC : " + revenue2);
        Console.WriteLine("UC : " + revenue3);
        Console.WriteLine("USJR : " + revenue4);
    }
}
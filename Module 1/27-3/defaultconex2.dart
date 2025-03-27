void main()
{
    Student s1 = Student();
    Student s2 = Student();
    Student s3 = Student();
}
class Student
{
    static int count = 0;

    Student()
    {
        count++;
        print(count);
    }

}
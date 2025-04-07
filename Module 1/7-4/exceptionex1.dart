void main()
{
    var age =15;

    if(age>=18)
    {
        print('eligible to vote');
    }
    else
    {
        try
        {
          throw Exception("not eligible to vote'");//logic

        }
        catch(e)
        {
          print(e);
        }
        finally
        {
          print("executed");
        }


      //print('not eligible to vote');
    }
}
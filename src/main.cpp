#include "include/list.h"

int main(int arg_count, char *args[])
{

    if (arg_count > 1)
    {
        List simpleList;
        simpleList.name = string(args[1]);
        simpleList.print_menu();
    }
    else
    {
        cout << "username not supplied.. " << endl;
    }
    return 0;
}



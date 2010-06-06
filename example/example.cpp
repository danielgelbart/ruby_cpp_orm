#include <vector>
#include "dmmm_dbface.h"
#include "T_User.hpp"
#include "T_Dog.hpp"

using namespace std;
using namespace DMMM;

int main(int argc, char* argv[])
{
    string host("localhost");
    string user("root");
    string database("dmmm");
    string password("");
    DBFace dbFace(database, host, user, password);

    O_User u;
    u._name() = "omer";
    u._balance() = 5.3;
    u._weight() = 10;
    u.insert();
    
    O_Dog d1;
    d1._user_id() = u._id();
    d1._name() = "spot";
    d1._stinks() = true;
    d1.insert();

    O_Dog d2;
    d2._user_id() = u._id();
    d2._name() = "rover";
    d2._stinks() = false;
    d2.insert();
    
    vector<O_Dog> dogs;
    T_Dog::select((T_Dog::E_stinks() == false) && (T_Dog::E_name() %= "\%over"), dogs);
    for(size_t i = 0; i < dogs.size(); ++i){
	dogs[i]._name() = string("good_") + dogs[i]._name();
	dogs[i].update();
	cout << dogs[i]._name() << " belongs to " << dogs[i].user().first._name() << endl;
    }
    

    return 0;
}
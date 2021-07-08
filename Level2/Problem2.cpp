#include <string>
#include <vector>

using namespace std;

string solution(int n) {
    string answer = "";
    string tmp = "412";
    while(n != 0)
    {
        answer = tmp[n%3] + answer;
        if (n % 3 == 0)
            n = (n / 3) - 1;
        else
            n /= 3;
    }
    return answer;
}

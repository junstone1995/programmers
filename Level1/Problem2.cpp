#include <string>
#include <vector>

using namespace std;

string month[7] = {"THU","FRI","SAT","SUN","MON","TUE","WED"};
int day[12] = {31,29,31,30,31,30,31,31,30,31,30,31};

string solution(int a, int b) {
    string answer = "";
    int cnt;
    cnt = 0;
    for(int i = 0; i < a - 1; i++)
        cnt += day[i];
    cnt += b;
    cnt %= 7;
    answer += month[cnt];
    return answer;
}

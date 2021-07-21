#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int people1[5] = {1,2,3,4,5};
int people2[8] = {2,1,2,3,2,4,2,5};
int people3[10] = {3,3,1,1,2,2,4,4,5,5};

vector<int> solution(vector<int> answers) {
    vector<int> answer;
    int tmp[3] = {0,};
    int max_score = 0;
    for (int i = 0; i < answers.size(); i++)
    {
        if (answers[i] == people1[i % 5]) tmp[0] += 1;
        if (answers[i] == people2[i % 8]) tmp[1] += 1;
        if (answers[i] == people3[i % 10]) tmp[2] += 1;
    }
    max_score = max(max(tmp[0],tmp[1]),tmp[2]);
    for(int i = 0 ; i < 3; i++)
    {
        if (tmp[i] == max_score)
        {
            answer.push_back(i+1);
        }
    }
    return answer;
}

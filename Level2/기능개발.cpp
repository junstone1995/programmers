#include <iostream>
#include <string>
#include <vector>
#include <queue>

using namespace std;

vector<int> solution(vector<int> progresses, vector<int> speeds) {
    vector<int> answer;
    vector<int> days;
    queue<int> q;

    for(int i = 0 ; i < progresses.size(); i++){
        int n = progresses[i];
        int day = 0;
        while(n < 100){
            day++;
            n = progresses[i] + speeds[i]*day;
        }
        days.push_back(day);
    }

    q.push(days[0]);
    for(int i = 1; i< days.size();i++){
        if(q.front() >= days[i]){
            q.push(days[i]);
        }else{
            answer.push_back(q.size());
            while(!q.empty())
                q.pop();
            q.push(days[i]);
        }
    }
    if(!q.empty())
        answer.push_back(q.size());

    return answer;
}

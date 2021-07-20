#include <string>
#include <vector>
#include <queue>

using namespace std;

vector<int> solution(vector<string> operations) {
    vector<int> answer(2);
    priority_queue<int, vector<int>, greater<int> > pq_max;
    priority_queue<int, vector<int> > pq_min;
    int cnt = 0;

    for(string op : operations)
    {
        if(!cnt)
        {
            while(!pq_max.empty()) pq_max.pop();
            while(!pq_min.empty()) pq_min.pop();
        }

        if(op[0] == 'I')
        {
            pq_max.push(stoi(op.substr(2)));
            pq_min.push(stoi(op.substr(2)));
            cnt++;
        }
        else
        {
            if (!cnt)
                continue;
            if (op[2] == '1')
            {
                pq_min.pop();
                cnt--;
            }
            else
            {
                pq_max.pop();
                cnt--;
            }
        }
    }

    if (cnt){
        answer[0] = pq_min.top();
        answer[1] = pq_max.top();
    }
    return answer;
}

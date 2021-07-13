#include <string>
#include <vector>
#include <queue>

using namespace std;

int solution(vector<int> scoville, int K) {
    int answer = 0;
    priority_queue<int> pq;

    for(int i = 0; i < scoville.size(); i++)
    {
        pq.push(-scoville[i]);
    }
    while(1)
    {
        if (pq.size() == 1 && -pq.top() < K)
        {
            answer = -1;
            break;
        }else if(-pq.top() >= K)
            break;
        int first = -pq.top();
        pq.pop();
        int second = -pq.top();
        pq.pop();
        int sum = first + second * 2;
        answer++;
        pq.push(-sum);
    }
    return answer;
}

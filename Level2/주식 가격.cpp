#include <string>
#include <vector>
#include <queue>

using namespace std;

vector<int> solution(vector<int> prices) {
    vector<int> answer;

    for(int i = 0 ;i < prices.size(); i++){
        queue<int> q;
        int n = prices[i];
        for(int j = i+1 ; j < prices.size(); j++){
            q.push(prices[j]);
            if (n > prices[j])
                break;
        }
        answer.push_back(q.size());
    }
    return answer;
}

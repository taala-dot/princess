#include <bits/stdc++.h>
using namespace std;
vector <vector<int>> adj;
vector <int> subtr;
int result = 0;
void gg(int u, int parent){
    subtr[u] = 1;
    for (int v : adj[u]){
        if (v != parent){
            gg(v, u);
            subtr[u] += subtr[v];
            if (subtr[v] % 2 == 0){
                result++;
            }
        }
    }
}

int main(){
    int n;
    cin >> n;
    adj.resize(n + 1);
    subtr.resize(n + 1);
    for (int i = 1; i < n; i++){
        int u, v;
        cin >> u >> v;
        adj[u].push_back(v);
        adj[v].push_back(u);
    }
    if (n % 2 != 0){
        cout << -1 << endl;
        return 0;
    }
    gg(1, -1);
    cout << result << endl;
    return 0;
}

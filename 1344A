#include <cstdio>
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;


int main(){
    freopen("/home/ares/CODE/qt-code/input.txt", "r",stdin);
    freopen("/home/ares/CODE/qt-code/output.txt", "w",stdout);
    int t;cin >> t;
    while(t--){

        int n; cin >> n;
        vector <int> a(n);
        for(int i = 0; i < a.size();i++){
            cin >> a[i];
        }
        bool is_valid = true;
        vector<int> visited(n,0);
        for (int k = 0; k < n; k++){
            int new_room = (k + a[k] % n + n) % n;
            if(new_room < 0)
                new_room += n;
            visited[new_room]++;
        }
        for (int i = 0; i < n;i++){
            if(visited[i] != 1){
                is_valid = false;

            }
        }
        if (is_valid){
            cout << "YES\n";
        }else
            cout << "NO\n";
    }
    return 0;
}

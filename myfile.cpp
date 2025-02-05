#include <bits/stdc++.h>
using namespace std;


#define w(x) int x; cin >> x; while (x-- > 0)

void c_p_c() {
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);
}

int main() {
    c_p_c();
    w(t) {
        int n;
        cin >> n;
        vector<bool> married(n + 1, false);
        int free_queen = 0;

        for (int i = 1; i <= n; i++) {
            int k;
            cin >> k;
            int girl_married = 0;

            while (k--) {
                int prince;
                cin >> prince;
                if (!girl_married && !married[prince]) {
                    married[prince] = true;
                    girl_married = 1;
                }
            }

            if (girl_married == 0) {
                free_queen = i;
            }
        }

        if (free_queen == 0) {
            cout << "OPTIMAL\n";
        } else {
            cout << "IMPROVED\n" << free_queen << " ";
            for (int i = 1; i <= n; i++) {
                if (!married[i]) {
                    cout << i << "\n";
                    break;
                }
            }
        }
    }

    return 0;
}

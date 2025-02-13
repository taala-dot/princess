#include <iostream>
#include <vector>

using namespace std;

void addEdge(vector<int> adj[], int u, int v) {
    adj[u].push_back(v);
    adj[v].push_back(u);
}

void printGraph(vector<int> adj[], int V) {
    for (int v = 1; v <= V; ++v) {
        cout << "Смежные вершины " << v << ": ";
        for (auto x : adj[v])
            cout << x << " ";
        cout << endl;
    }
}

int main() {
    int n;
    cout << "Введите количество вершин: ";
    cin >> n;

    if (n < 4) {
        cout << "Количество вершин должно быть не менее 4." << endl;
        return 1;
    }

    vector<int> adj[n + 1];

    addEdge(adj, 1, 6);
    addEdge(adj, 2, 5);
    addEdge(adj, 3, 4);
    addEdge(adj, 4, 1);

    if (n >= 5) {
        addEdge(adj, 5, 3);
        addEdge(adj, 5, 6);
    }
    if (n >= 6) {
        addEdge(adj, 6, 2);
    }

    for (int i = 7; i <= n; ++i) {
        addEdge(adj, i, i - 1);
        addEdge(adj, i, i - 2);
    }

    printGraph(adj, n);

    return 0;
}

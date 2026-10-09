
#include<bits/stdc++.h>
using namespace std;

string countAndSay(int n) {
     if(n == 1){
        return "1";
     }
     string ans = countAndSay(n - 1);

     string ans1 = "";
     int sz = ans.size();
     for(int i = 0; i < sz; i++){
         int count = 1;
         char start = ans[i];
         while(i + 1 < sz && ans[i] == ans[i + 1]){
             i++;
             count++;
         }
         ans1 += to_string(count) + start;
     }
     return ans1;
}

int32_t main(){
    int n = 5;
    string ans = countAndSay(n);
    cout << ans << "\n";
}
class Solution {
public:
    string intToRoman(int num) {
    map<int, char> m = {
    {1, 'I'},
    {5, 'V'},
    {10, 'X'},
    {50, 'L'},
    {100, 'C'},
    {500, 'D'},
    {1000, 'M'}
};

int x;
string ans;
while(num>0){
    if(num>=1000){
        x = num/1000;
        for(int i=0;i<x;i++){
            ans = ans + m[1000];
        }
        num = num%1000;
    }
    else if(num>=500){
        if(num>=900){
            ans = ans + m[100] + m[1000];
            num = num%100;
        }else{
            ans = ans + m[500];
            num = num - 500;
        }
    }else if(num>=100){
        if(num>=400){
            ans = ans + m[100] + m[500];
            num = num%100;
        }else{
            x = num/100;
            for(int i=0;i<x;i++){
            ans = ans + m[100];
            }
            num = num%100;
        }
    }else if(num>=50){
        if(num>=90){
            ans = ans + m[10] + m[100];
            num = num%10;
        }else{
            ans = ans+m[50];
            num = num - 50;
            }
    }else if(num>=10){
        if(num>=40){
            ans = ans + m[10] + m[50];
            num = num%10;
        }else{
            x = num/10;
            for(int i=0;i<x;i++){
            ans = ans + m[10];
            }
            num = num%10;
        }

    }else if(num>=5){
        if(num>=9){
            ans = ans + m[1] + m[10];
            num=0;
        }else {
            ans = ans + m[5];
            num = num - 5;
        }
    }else if(num>=1){
        if(num>=4){
            ans = ans + m[1] + m[5];
            num=0;
        }else{
            for(int i=0;i<num;i++){
            ans = ans + m[1];
            }
            num = 0;
        }
    }
    }
    return ans;
}

    
};

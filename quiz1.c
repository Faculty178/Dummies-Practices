#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

struct time{
    int hour;
    int min;
    int sec;
};

// 0<= min < 60, 0<= sec < 60
struct time plus(struct time a, struct time b){
    struct time ans = {0, 0, 0};
    ans.hour = a.hour + b.hour;
    ans.min = a.min + b.min;
    ans.sec = a.sec + b.sec;

    if(ans.min > 60){
        ans.hour += 1;
        ans.min -= 60;
    }
    
    if(ans.sec > 60){
        ans.min += 1;
        ans.sec -= 60;
    }

    return ans;
};

struct time minus(struct time a, struct time b){
    struct time ans = {0, 0, 0};
    ans.hour = a.hour - b.hour;
    ans.min = a.min - b.min;
    ans.sec = a.sec - b.sec;

    if(ans.min < 0){
        ans.hour -= 1;
        ans.min += 60;
    }
    
    if(ans.sec > 60){
        ans.min -= 1;
        ans.sec += 60;
    }

    return ans;
};

void print(struct time a){
    printf("%02d:%02d:%02d \n", a.hour, a.min, a.sec);
}

struct time input(){
    struct time t;
    scanf("%02d:%02d:%02d", &t.hour, &t.min, &t.sec);

    return t;
}

int main(void){

    struct time a;
    struct time b;

    a = input();
    b = input();

    printf("a: ");
    print(a);
    printf("b: ");
    print(b);
    printf("a + b = ");
    print(plus(a, b));
    printf("a - b = ");
    print(minus(a, b));

    return 0;

}
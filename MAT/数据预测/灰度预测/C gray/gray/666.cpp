#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define year 6
int main()
{
    int i,jibi=0;
    float k,data[year],GM[year];
    printf("���������ݵ��ۼ�\n");
    for(i=0;i<year;i++)
    {
        scanf("%f",&data[i]);
    }
    printf("����Ϊ:");
    for(i=1;i<year;i++)
    {
        k=data[i-1]/data[i];
        if(k<exp((-2.0)/(i+1))||k>exp(2.0/(i+1)))
            break;
        else
            jibi=1;
            printf("%.2f  ",k);
    }printf("\n");
    if(jibi==1)
    {
    printf("�����п��Խ��л�ɫԤ��\n====================\n");
    }
    else
    {
    printf("�����в����Խ��л�ɫԤ��\n====================\n");
        return 0;
	}
    printf("GMģ��Ϊ\n");
    for(i=0;i<year;i++)//����GM(1,1)ģ��
    {   if(i>0)
        GM[i]=GM[i-1]+data[i];
        else
        GM[i]=data[i];
        printf("%.2f  ",GM[i]);
    }
    printf("\n");
    printf("====================\n");
    int a,b,sum=0;
    float B[year-1][2],BT[2][year-1],Y[year-1];//����B��Y����
    for(a=0;a+1<year;a++)
    {
        B[a][0]=-0.5*(GM[a]+GM[a+1]);
        B[a][1]=1;
        Y[a]=data[a+1];
    }printf("B����Ϊ\n");
    for(a=0;a<4;a++)
    {
    for(b=0;b<2;b++)
    {printf("%.2f  ",B[a][b]);//��ʾB����
    }printf("\n");
    }printf("====================\n");
    printf("Y����Ϊ\n");
    for(a=0;a<year-1;a++)
        printf("%.2f\n",Y[a]);//��ʾY����
    printf("====================\n");
    printf("ת�õ�BT����Ϊ\n");
    for(a=0;a<2;a++)
    {
    for(b=0;b<year-1;b++)//�õ�B��ת��BT����
    {
        BT[a][b]=B[b][a];
        printf("%.2f  ",BT[a][b]);//��ʾת�õ�BT����
    }printf("\n");
    }printf("====================\n");
    float BTB[2][2]={1435616.5,-2214,-2214,4};
    printf("BT������B������˵Ľ��ΪBTB����\n");
    for(a=0;a<2;a++)
    {for(b=0;b<2;b++)
    {printf("%.2f  ",BTB[a][b]);}
    printf("\n");}
    printf("====================\n");
    double BTB0[2][2];//����BTB�������
    double BTB0BT[2][5];
    double AB[2]={0.2241, 276.5564};
    printf("���յõ��ľ����ǣ�\n");
    for(a=0;a<2;a++)
        {printf("%f  ",AB[a]);}
        printf("\n����a=%f��b=%f\n",AB[0],AB[1]);
        int l=1;
		while(l<=5)
        {printf("====================\n��������ҪԤ������n(n>2018)\n");
    int n;float x,a1=AB[0],b1=AB[1];//����Ԥ��ֵx��δ���ڼ���n
	scanf("%d",&n);
    x=((data[0]-b1/a1)*exp(-a1*(n-2018))+b1/a1);
    printf("�����Ԥ��ֵΪ%.2f\n",x);
    float x0,xk;//����ģ�ͻ�ԭֵx0�Ͳв�xk
    x0=(x*((n-2018)+1)-x);
    xk=(x-x0)/x;
    printf("�в�Ϊ%f,",xk);
    if(fabs(xk)<0.1)
    printf("�в����ﵽ�˽ϸ�Ҫ��\n");
    else if(fabs(xk)<0.2)
    printf("�в����ﵽ��һ��Ҫ��\n");
    else
    printf("�в����δ�ﵽ����Ҫ��\n");
    printf("====================\n");
	l++;}
}

#include <iostream>

using namespace std;

double raiz_cuadrada(double numero,double aproximacion, int n); 
double raiz_cuadrada(double numero); 

float coeficiente[4],comp,L,AB,BC,CD,B1,C1,D1,D2,D3,flag,S,root1;
int counter,counter1,numero;

int main(int i, char* argv [])
    {
       
        for (counter=0;counter<=3;counter++)
        {
            counter1=counter+1;
            float x= strtol(argv[counter1],NULL,10);
            coeficiente[counter]=x;
        }
      
        if (coeficiente[3]<0)
         {
             comp=-1*coeficiente[3];
             L=coeficiente[3];
         }
         else
         {
             L=-coeficiente[3];
             
         }
    
        do
        {
            AB=L*coeficiente[0];
            B1=coeficiente [1]+AB;
            BC=L*B1;
            C1=coeficiente [2]+BC;
            CD=L*C1;
            D1=coeficiente[3]+CD;
            
            
            if ((D1<=0.1)&&(D1>=-0.1))
            {
                flag=1;
                if (L==-0) L=0;
                
                
              
            }
            if ((L>coeficiente[3])&&(coeficiente[3]>0))
            {
                flag=coeficiente[3];
                cout<<"{}\n";
            }
            if ((L>comp)&&(coeficiente[3]<0))
            {
                flag=coeficiente[3];
                cout<<"{}\n";
            }
            L=L+0.01;
        } 
        while (flag==0);
        root1=L-0.01;
        S=(B1*B1)-(4*coeficiente[0]*C1);
        if (S<0)
        {
            
            cout<<"{"<<root1<<"}\n"<<"r2 and r3 don't exist in the Real plane"<<"\n";

        }
        else
        {
            numero=S;
            double num = raiz_cuadrada(numero);
            D2=(-B1+raiz_cuadrada(numero))/(2*coeficiente[0]);
            D3=(-B1-raiz_cuadrada(numero))/(2*coeficiente[0]);
        
            if (L<comp) cout<<"{"<<root1<<","<<D2<<","<<D3<<"}\n";
            
        }
        

        
       
    }
    
    double raiz_cuadrada(double numero)
{

return raiz_cuadrada(numero,1,0);
 
}
    
    double raiz_cuadrada(double numero,double aproximacion, int n)
{

double aproximacionantes = aproximacion;
 

aproximacion = aproximacion - (((aproximacion * aproximacion) - numero ) / ( 2 * aproximacion));
 

if(aproximacion == aproximacionantes || n > 50)
return aproximacion; 

return raiz_cuadrada(numero,aproximacion,++n);
}


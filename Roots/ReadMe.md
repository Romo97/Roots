
```
//This program return the value of the roots for a specific third degree polynomial that the user introduce 
//Input for ax³+bx²+cx+d is ./Roots a b c d
//Output is {root1,root2,root3}
//       if don't exist roots the output is {}
#include <iostream> //Library for inputs and outputs

using namespace std; //To use cin and cout

double raiz_cuadrada(double numero,double aproximacion, int n); //Function to obtain a squre root
double raiz_cuadrada(double numero); //Only to initialize the function above

float coeficiente[4],comp,L,AB,BC,CD,B1,C1,D1,D2,D3,flag,S,root1;
int counter,counter1,numero; //variables

int main(int i, char* argv [])
    {
       
        for (counter=0;counter<=3;counter++)
        {
            counter1=counter+1; //counter1 is created because argv[0] is not a argument introduced by users
            float x= strtol(argv[counter1],NULL,10);//Convert the argument agv to float, that is the numbers the user introduce
            coeficiente[counter]=x; //For this cycle FOR introduce the arguments in a arrangement 
        }
        //the first value evaluated by Ruffini method is the negative of d, so the first value for L is -d, but if d is negative L is d
      
        if (coeficiente[3]<0)
         {
             comp=-1*coeficiente[3];//Use comp for comparisons below
             L=coeficiente[3]; 
         }
         else
         {
             L=-coeficiente[3];
             
         }
    
        //Loop of Ruffini method for the first root, L is a assumed value for the first root, it change still find a approximate value
        do
        {
            AB=L*coeficiente[0];
            B1=coeficiente [1]+AB;
            BC=L*B1;
            C1=coeficiente [2]+BC;
            CD=L*C1;
            D1=coeficiente[3]+CD;
            
          //D1 is the remainder of Ruffini method, so if it is almost 0, this evaluate L is the first root 
            if ((D1<=0.1)&&(D1>=-0.1))
            {
                flag=1; //The enable of the flag for this loop
                if (L==-0) L=0; //If the first root L=-0 converts to L=0
            }
            //For this part when L is bigger than d, means that the program don't find the first root so this polynomial don't have roots, it is when d is positeve or negative
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
            //Increment the value of L
            L=L+0.01;
        } 
        while (flag==0);
        root1=L-0.01; To return the firt root without the last incrementation;
        //This part is to find the second and third roots
        //S is the square root part of general formula 
        S=(B1*B1)-(4*coeficiente[0]*C1); 
        //For imagine numbers
        if (S<0)
        {
            
            cout<<"{"<<root1<<"}\n"<<"r2 and r3 don't exist in the Real plane"<<"\n";

        }
        //Evaluate the general formula
        else
        {
            numero=S;
            double num = raiz_cuadrada(numero);
            D2=(-B1+raiz_cuadrada(numero))/(2*coeficiente[0]);
            D3=(-B1-raiz_cuadrada(numero))/(2*coeficiente[0]);
        //Print the roots
            if (L<comp) cout<<"{"<<root1<<","<<D2<<","<<D3<<"}\n";
            
        }
        

        
       
    }
   //To obtain the square root without external libraries 
    double raiz_cuadrada(double numero)
{
//Only to initialize the next function
return raiz_cuadrada(numero,1,0);
 
}
    
    double raiz_cuadrada(double numero,double aproximacion, int n)
{
//Safe the approximation
double aproximacionantes = aproximacion;
 
//Using Newton-Raphson formula
aproximacion = aproximacion - (((aproximacion * aproximacion) - numero ) / ( 2 * aproximacion));
 
//Verify that the approximation change
if(aproximacion == aproximacionantes || n > 50)
return aproximacion; //Return the approximation if it don't change
 
//recursive for a new approximation
return raiz_cuadrada(numero,aproximacion,++n);
}

```


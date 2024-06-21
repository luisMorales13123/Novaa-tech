import { Injectable } from '@angular/core';
import { environment } from '../../../environments/environment';
import { HttpClient,HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { tipocambio } from '../../interfaces/TipoCambio/TipoCambio';


@Injectable({
  providedIn: 'root'
})
export class TipocambioService {

  private myappUrl:String;
  private myapiUrl:String;
    constructor( private http: HttpClient) { 
  //Almacenamos localhost3000
      this.myappUrl = environment.endpoint;
      this.myapiUrl = 'api/TipoCambio/TipoCambio/'
    }
  //Listar Producto
    getListProducts(): Observable<tipocambio[]>{

      const token = localStorage.getItem('token')
      const header = new HttpHeaders().set('Authorization',`Bearer ${token}`)
  return this.http.get<tipocambio[]>(`${this.myappUrl}${this.myapiUrl}`,{headers:header});   
   
}
  //Eliminar Producto
    deleteProducto(id: number): Observable<void> {
     return this.http.delete<void>(`${this.myappUrl}${this.myapiUrl}${id}`)
    }
  
    //Agregar producto
  
    saveProducto(producto: tipocambio):Observable<void> {
      return this.http.post<void> (`${this.myappUrl}${this.myapiUrl}`,producto)
    }
  
  
    getProduct(id:number):Observable<tipocambio>{
  return this.http.get<tipocambio> (`${this.myappUrl}${this.myapiUrl}${id}`)
  
    }
  
      //Actualizar
  
   
      updateProdcut(id: number, product: tipocambio): Observable<void> {
        return this.http.put<void>(`${this.myappUrl}${this.myapiUrl}${id}`, product);
      }
}

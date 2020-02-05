import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class CalcService {

  constructor(private client: HttpClient) { }

  addCalc(value1:number, value2:number){
    return this.client.get("http://localhost:5000/api/calc/add?value1="+value1+"&value2="+value2);
  }
}

import { Component, OnInit } from '@angular/core';
import { CalcService } from '../calc.service';

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})
export class AddComponent implements OnInit {

  total: number = 0;

  constructor(public calcService:CalcService) { }

  ngOnInit() {
  }

  onButtonClick(){
    this.calcService.addCalc(5,6).subscribe((data)=>{
      this.total=data as number;
    });
  }
}

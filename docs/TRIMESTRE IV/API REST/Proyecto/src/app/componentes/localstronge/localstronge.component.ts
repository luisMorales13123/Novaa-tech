import { Component,OnInit  } from '@angular/core';
import { AlmacenamientoService } from '../../servicios/almacenamiento/almacenamiento.service'; // Ajusta la ruta según tu estructura
@Component({
  selector: 'app-localstronge',
  templateUrl: './localstronge.component.html',
  styleUrl: './localstronge.component.css'
})
export class LocalstrongeComponent  implements OnInit{

  constructor(private storageService: AlmacenamientoService) { }

  ngOnInit(): void {
    this.storageService.initializeStorage();

    // Ejemplo de uso
    this.storageService.setItem('clave', 'valor');
    let valor = this.storageService.getItem('clave');
    console.log(valor);
  }
}

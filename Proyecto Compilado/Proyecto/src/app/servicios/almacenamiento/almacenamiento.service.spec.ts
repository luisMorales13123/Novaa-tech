import { TestBed } from '@angular/core/testing';
import { AlmacenamientoService } from './almacenamiento.service';

describe('AlmacenamientoService', () => {
  let service: AlmacenamientoService;

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [AlmacenamientoService] // Asegúrate de incluir el servicio como proveedor aquí
    });
    service = TestBed.inject(AlmacenamientoService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

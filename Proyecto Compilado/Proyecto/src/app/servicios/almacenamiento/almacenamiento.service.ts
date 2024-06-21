import { Injectable } from '@angular/core';

// Interfaz para definir métodos comunes de almacenamiento
interface Almacenamiento {
  setItem(key: string, value: string): void;
  getItem(key: string): string | null;
  removeItem(key: string): void;
}

// Implementación usando localStorage del navegador
class LocalStorage implements Almacenamiento {
  setItem(key: string, value: string): void {
    localStorage.setItem(key, value);
  }

  getItem(key: string): string | null {
    return localStorage.getItem(key);
  }

  removeItem(key: string): void {
    localStorage.removeItem(key);
  }
}

// Implementación alternativa en memoria
class MemoryStorage implements Almacenamiento {
  private data: { [key: string]: string } = {};

  setItem(key: string, value: string): void {
    this.data[key] = value;
  }

  getItem(key: string): string | null {
    return this.data[key] || null;
  }

  removeItem(key: string): void {
    delete this.data[key];
  }
}

@Injectable({
  providedIn: 'root'
})
export class AlmacenamientoService {

  private almacen: Almacenamiento = new MemoryStorage(); // Valor por defecto

  constructor() {
    this.initializeStorage();
  }

  initializeStorage(): void {
    if (typeof localStorage !== 'undefined') {
      this.almacen = new LocalStorage();
    }
    // No es necesario un else, ya que el valor por defecto es MemoryStorage
  }

  setItem(key: string, value: string): void {
    this.almacen.setItem(key, value);
  }

  getItem(key: string): string | null {
    return this.almacen.getItem(key);
  }

  removeItem(key: string): void {
    this.almacen.removeItem(key);
  }
}

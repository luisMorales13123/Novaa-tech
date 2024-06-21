import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LocalstrongeComponent } from './localstronge.component';

describe('LocalstrongeComponent', () => {
  let component: LocalstrongeComponent;
  let fixture: ComponentFixture<LocalstrongeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [LocalstrongeComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(LocalstrongeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

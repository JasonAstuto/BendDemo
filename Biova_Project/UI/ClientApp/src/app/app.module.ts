import { BrowserModule } from '@angular/platform-browser';
import {  BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import { CookieService } from 'ngx-cookie-service';

import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import {MatTableModule,
        MatInputModule,
        MatCheckboxModule,
        MatNativeDateModule,
        MatFormFieldModule,
        MatPaginatorModule,
        MatSortModule,
        } from '@angular/material';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { HttpClientModule } from '@angular/common/http';
import { StudyDetailComponent } from './study-detail/study-detail.component';
import { HomeComponent } from './home/home.component';

import { StudyDetailService } from './study-detail/study-detail.service';

@NgModule({
  declarations: [
    AppComponent,
    StudyDetailComponent,
    HomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    MatFormFieldModule,
    MatTableModule,
    MatCheckboxModule,
    MatNativeDateModule,
    ReactiveFormsModule,
    MatPaginatorModule,
    MatInputModule,
    BrowserAnimationsModule,
    MatSortModule,
    
  ],
  providers: [
    StudyDetailService,
    CookieService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

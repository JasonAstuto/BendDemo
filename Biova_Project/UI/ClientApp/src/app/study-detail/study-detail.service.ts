import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { HttpErrorResponse, HttpResponse } from '@angular/common/http';

import { Observable, throwError, of } from 'rxjs';
import { catchError, retry } from 'rxjs/operators';

import { Study } from '../../models/Study';
import { Experiment } from '../../models/Experiment';

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json',
    'Authorization': 'my-auth-token'
  })
};

@Injectable({
  providedIn: 'root',
})
export class StudyDetailService {
  
  studies: Study[] = [];
  experiments: Experiment[] = [];
  apiUrl = 'https://localhost:44347/api';
  
  constructor(private http: HttpClient) { }

  getStudies(): Observable<Study[]>  {
    return this.http.get<Study[]>(this.apiUrl + '/Study')
      .pipe(
        retry(3), // retry a failed request up to 3 times
        catchError(this.handleError) // then handle the error
    );      
  }

  updateStudy(study: Study): Observable<Study> {

    httpOptions.headers =
      httpOptions.headers.set('Authorization', 'my-new-auth-token');

    return this.http.put<Study>(this.apiUrl+'/Study/' + study.id, study, httpOptions)
      .pipe(
      catchError(this.handleError)
      );
          
  }

  getExperiments(_studyID: string): Observable<Experiment[]> {
    return this.http.get<Experiment[]>(this.apiUrl + '/Experiment/' + _studyID);
  }

  private handleError(error: HttpErrorResponse) {
    if (error.error instanceof ErrorEvent) {
      // A client-side or network error occurred. Handle it accordingly.
      console.error('An error occurred:', error.error.message);
    } else {
      // The backend returned an unsuccessful response code.
      // The response body may contain clues as to what went wrong,
      console.error(
        `Backend returned code ${error.status}, ` +
        `body was: ${error.error}`);
    }
    // return an observable with a user-facing error message
    return throwError(
      'Something bad happened; please try again later.');
  };
}

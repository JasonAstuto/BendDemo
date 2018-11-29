import { Component, OnInit, Input,SimpleChanges, ViewChild} from '@angular/core';
import { SelectionModel } from '@angular/cdk/collections';
import { Study } from '../../models/Study';
import { MatPaginator, MatSort, MatTableDataSource, MatFormField, MatSortable } from '@angular/material';
import { Sort } from '@angular/material';

import { StudyDetailService } from './study-detail.service';
import { CookieService } from 'ngx-cookie-service';
import { Experiment } from '../../models/Experiment';


@Component({
  selector: 'app-study-detail',
  templateUrl: './study-detail.component.html',
  styleUrls: ['./study-detail.component.css']
})
export class StudyDetailComponent implements OnInit {

  @ViewChild(MatSort) sort: MatSort;

  @Input() study: Study;

  updStudy: Study;



  experiments: Experiment[];

  displayedColumns: string[] = ['id', 'date', 'index', 'text'];

  dataSource: MatTableDataSource<Experiment>;

  selection = new SelectionModel<Experiment>(true, []);
  
  constructor(private studyDetailService: StudyDetailService, private cookieService: CookieService) {

    this.dataSource = new MatTableDataSource(this.experiments);    
  }

  sortData(sort: Sort) {

    //persist the sort column and order
    this.study.sortColumnName = sort.active;
    this.study.sortDirection = sort.direction;
    this.studyDetailService.updateStudy(this.study).subscribe(updStudy => this.updStudy = updStudy);

    //sort the backing data for the mat-table
    const data = this.experiments.slice();
    if (!sort.active || sort.direction === '') {
      this.experiments = data;
      return;
    }
    this.experiments = data.sort((a, b) => {
      const isAsc = sort.direction === 'asc';
      switch (sort.active) {
        case 'index': {
          return compare(a.index, b.index, isAsc);
        };
        case 'date': {
          return compare(a.creationDate, b.creationDate, isAsc);
        };
        case 'text': {
          return compare(a.text, b.text, isAsc);
        };
        default: return 0;
      }
    });
  }

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  ngOnInit(): void {
    this.dataSource.sort = this.sort;
  }

  ngOnChanges(changes: SimpleChanges) {
    var studyId = changes.study.currentValue.id;
    this.getExperiments(studyId);    
  }

  ngAfterViewInit() {

  }

  getExperiments(studyId: string): void {
    this.studyDetailService.getExperiments(studyId)
      .subscribe(experiments => this.experiments = experiments);
         
  }
}

//compare implementation for sort function above
function compare(a: number | string | Date, b: number | string | Date, isAsc: boolean) {
  return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
}



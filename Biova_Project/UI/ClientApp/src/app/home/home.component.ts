import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild, Inject } from '@angular/core';
import { Study } from '../../models/Study';
import { Experiment } from '../../models/Experiment';
import { StudyDetailService } from '../study-detail/study-detail.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  studies: Study[] = [];

  experiments: Experiment[] = [];

  selectedStudy: Study;

  constructor(private studyDetailService: StudyDetailService) { }

  ngOnInit(): void {
    this.studyDetailService.getStudies().subscribe(result => {
      this.studies = result;
    }, error => console.error(error));
  }

  onSelect(study: Study): void {
    this.selectedStudy = study;
  }

}

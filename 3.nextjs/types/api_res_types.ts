export interface ApiResponse {
  status: string;
  data: Data;
}

export interface Data {
  documentTitle: string;
  pageUrl: string;
  issues: Issue[];
}

export interface Issue {
  code: string;
  type: string;
  typeCode: number;
  message: string;
  context: string;
  selector: string;
  runner: string;
  runnerExtras: Object;
}

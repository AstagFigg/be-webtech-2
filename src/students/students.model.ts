import type { RowDataPacket } from "mysql2";

export interface Student extends RowDataPacket {
  first_name: string;
  last_name: string;
  email: string;
  age: string;
  course: string;
  year_level: string;
  gpa: string;
  enrollment_status: string;
  created_at: string;
  
}
import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';
import { Subject } from './subject.entity';
import { SubjectParent } from "./subjectParent.entity";

@Entity({ name: 'or_subject_parents' })
export class OrSubjectParent {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  subject_id: number;

  @Column()
  subject_parent_id: number;

  @ManyToOne(() => Subject, subject => subject.id, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({ name: 'subject_id', referencedColumnName: 'id' })
  subject: Subject;

  @ManyToOne(() => Subject, parent => parent.id, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({ name: 'subject_parent_id', referencedColumnName: 'id' })
  parent: Subject;

  @ManyToOne(() => SubjectParent, subjectParent => subjectParent.orSubjectParents, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({ name: 'subject_parent_id', referencedColumnName: 'id' })
  subjectParent: SubjectParent;
}

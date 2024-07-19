
import { Entity, Column, PrimaryGeneratedColumn, OneToMany, OneToOne, ManyToOne, JoinColumn, CreateDateColumn, UpdateDateColumn } from 'typeorm';
import { Moment } from 'moment';
import { Subject } from './subject.entity';

@Entity()
export class OrSubjectParents {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  subject_parent_id: number;

  @Column()
  or_subject_id: number;

  @ManyToOne(() => Subject, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({ name: 'or_subject_id', referencedColumnName: 'id' })
  orSubject: Subject;

  @ManyToOne(() => SubjectParent, subjectParent => subjectParent.orSubjectParents, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({ name: 'subject_parent_id', referencedColumnName: 'id' })
  subjectParent: SubjectParent;
}

@Entity({ name: 'subject_parents' })
export class SubjectParent {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  subject_id: number;

  @Column()
  subject_parent_id: number;

  @CreateDateColumn({ type: "timestamp" })
  created_at: Moment;

  @UpdateDateColumn({ type: "timestamp", nullable: true })
  updated_at: Moment;

  // Relaciones

  @ManyToOne(() => Subject, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({
    name: 'subject_id',
    referencedColumnName: 'id'
  })
  subject: Subject;

  @ManyToOne(() => Subject, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
  @JoinColumn({
    name: 'subject_parent_id',
    referencedColumnName: 'id'
  })
  parent: Subject;

  @OneToMany(() => OrSubjectParents, orSubjectParents => orSubjectParents.subjectParent, { cascade: true })
  orSubjectParents: OrSubjectParents[];
}
import { Entity, Column, PrimaryGeneratedColumn, OneToMany, OneToOne, ManyToOne, JoinColumn, CreateDateColumn, UpdateDateColumn } from 'typeorm';
import { Moment } from 'moment';
import { Subject } from './subject.entity';
import { SubjectParent } from './subjectParent.entity';

@Entity({ name: 'subject_parents_or' })
export class SubjectParentOr {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    subject_parent_id: number;

    @Column()
    subject_id: number;

    @CreateDateColumn({ type: "timestamp" })
    created_at: Moment;

    @UpdateDateColumn({ type: "timestamp", nullable: true })
    updated_at: Moment;

    // Relations
    @ManyToOne(() => Subject, parent => parent.id, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({
        name: 'subject_parent_id',
        referencedColumnName: 'id'
    })
    parent: Subject;
    
    @ManyToOne(() => Subject, subject => subject.id, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({
        name: 'subject_id',
        referencedColumnName: 'id'
    })
    subject: Subject;
}

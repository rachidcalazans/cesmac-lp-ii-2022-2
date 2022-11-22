require 'minitest/autorun'
require 'sqlite3'

class TestDb < Minitest::Test

    def test_db
        db = SQLite3::Database.open 'Colegial.db'
        db.results_as_hash = true
        #CREATE TABLE - student
        db.execute 'CREATE TABLE IF NOT EXISTS student(
            student_registration INT PRIMARY KEY NOT NULL,
            name TEXT NOT NULL,
            birth_date DATE NOT NULL,
            guardian TEXT NOT NULL,
            address TEXT NOT NULL,
            grade INT NOT NULL,
            phone TEXT)'

        #CREATE TABLE - school_subject
        db.execute 'CREATE TABLE IF NOT EXISTS school_subject(
            id_subject INT PRIMARY KEY NOT NULL,
            description TEXT NOT NULL,
            year INT NOT NULL)'

        #CREATE TABLE - score
        db.execute 'CREATE TABLE IF NOT EXISTS score(
            student_registration REFERENCES student (student_registration),
            id_subject REFERENCES school_subject (id_subject),
            score_one FLOAT NOT NULL,
            score_two FLOAT NOT NULL,
            score_three FLOAT NOT NULL)'
        
        #INSERT - student
        db.execute 'DELETE FROM student'
        db.execute 'INSERT INTO student(
            student_registration, name, birth_date, guardian, address, grade ,phone)
            VALUES (?, ?, ?, ?, ?, ?, ?)', 0001, 'Ricardo Almeida', '10/03/2003', 'Josefina', 'muito muito longe', 1
        db.execute 'INSERT INTO student(
            student_registration, name, birth_date, guardian, address, grade ,phone)
            VALUES (?, ?, ?, ?, ?, ?, ?)', 0002, 'Mateus', '01/05/2007', 'Lucas', 'rua nove dois', 1
        db.execute 'INSERT INTO student(
            student_registration, name, birth_date, guardian, address, grade ,phone)
            VALUES (?, ?, ?, ?, ?, ?, ?)', 0003, 'Marta', '25/12/2002', 'Luciana', 'rua nove quatro', 2
        db.execute 'INSERT INTO student(
        student_registration, name, birth_date, guardian, address, grade ,phone)
        VALUES (?, ?, ?, ?, ?, ?, ?)', 0004, 'Felipe', '23/05/2001', 'Sergio', 'Rua da frente', 1
        db.execute 'INSERT INTO student(
            student_registration, name, birth_date, guardian, address, grade ,phone)
            VALUES (?, ?, ?, ?, ?, ?, ?)', 0005, 'Anderson', '19/01/2000', 'Roberto Carlos', 'Zona sul', 1
        db.execute 'INSERT INTO student(
            student_registration, name, birth_date, guardian, address, grade ,phone)
            VALUES (?, ?, ?, ?, ?, ?, ?)', 0006, 'Alan', '14/02/2000', 'Neymar', 'aqui pertinho', 1
        
        #INSERT - school_subject
        db.execute 'DELETE FROM school_subject'
        db.execute 'INSERT INTO school_subject(
            id_subject, description,year)
            VALUES (?, ?, ?)', 0001, 'Banco de Dados', 1
        db.execute 'INSERT INTO school_subject(
            id_subject, description,year)
            VALUES (?, ?, ?)', 0002, 'Lab de Progmação I ', 1
        db.execute 'INSERT INTO school_subject(
            id_subject, description,year)
            VALUES (?, ?, ?)', 0003, 'Lab de programação II', 1
        db.execute 'INSERT INTO school_subject(
            id_subject, description,year)
            VALUES (?, ?, ?)', 0004, 'CALCULO', 1

        #INSERT - score
        db.execute 'DELETE FROM score'
        db.execute 'INSERT INTO score(
            student_registration, id_subject, score_one, score_two,score_three)
            VALUES (?, ?, ?, ?, ?)', 0001, 0002, 6, 5.6, 9
        db.execute 'INSERT INTO score(
            student_registration, id_subject, score_one, score_two,score_three)
            VALUES (?, ?, ?, ?, ?)', 0003, 0002, 8, 9, 10
        db.execute 'INSERT INTO score(
            student_registration, id_subject, score_one, score_two,score_three)
            VALUES (?, ?, ?, ?, ?)', 0006, 0001, 3, 5, 2
        db.execute 'INSERT INTO score(
            student_registration, id_subject, score_one, score_two,score_three)
            VALUES (?, ?, ?, ?, ?)', 0002, 0002, 5, 9, 7.2
        db.execute 'INSERT INTO score(
            student_registration, id_subject, score_one, score_two,score_three)
            VALUES (?, ?, ?, ?, ?)', 0005, 0004, 0, 2, 5.5
        db.execute 'INSERT INTO score(
            student_registration, id_subject, score_one, score_two,score_three)
            VALUES (?, ?, ?, ?, ?)', 0004, 0002, 0, 1, 0


        #QUERY
        query = db.execute 'SELECT * FROM score WHERE ((score_one + score_two + score_three) / 3) > 6 '

            pp query
    end
end

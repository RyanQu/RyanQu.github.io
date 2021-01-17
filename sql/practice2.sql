CREATE TABLE IF NOT EXISTS `courses` (
  `course_num` int(4) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `department` varchar(8) NOT NULL,
  `num_credits` int(1) NOT NULL
);

INSERT INTO `courses` (`course_num`, `course_name`, `department`, `num_credits`) VALUES
(1001, 'MIS', 'MSIS', 3),
(1002, 'Stats', 'STAT', 3),
(1003, 'OM', 'SCM', 3),
(1004, 'SCM', 'SCM', 3),
(1005, 'Modeling', 'MSIS', 3),
(1006, 'MicEcon', 'FIN', 3),
(1007, 'MacEcon', 'FIN', 3),
(1008, 'Management', 'MGMT', 3),
(1009, 'Marketing', 'MGMT', 3),
(1010, 'Accounting', 'ACCT', 3),
(1011, 'BusinessAnalysis', 'MSIS', 3),
(1012, 'OB', 'MGMT', 3);

CREATE TABLE IF NOT EXISTS `enrolls` (
  `section_id` int(4) NOT NULL,
  `student_num` int(4) NOT NULL,
  `grade` decimal(2,1) NOT NULL
);

INSERT INTO `enrolls` (`section_id`, `student_num`, `grade`) VALUES
(1, 1, '3.0'),
(1, 11, '3.5'),
(1, 14, '3.0'),
(2, 2, '3.0'),
(2, 15, '3.0'),
(3, 4, '2.0'),
(3, 9, '3.5'),
(4, 6, '4.0'),
(5, 1, '3.5'),
(5, 4, '1.5'),
(5, 5, '1.5'),
(6, 1, '4.0'),
(6, 2, '3.0'),
(6, 6, '4.0'),
(6, 9, '3.5'),
(6, 14, '3.0'),
(6, 15, '4.0'),
(7, 1, '4.0'),
(7, 2, '3.0'),
(7, 7, '4.0'),
(8, 2, '2.5'),
(8, 6, '4.0'),
(8, 8, '4.0'),
(8, 15, '3.5'),
(9, 6, '2.0'),
(9, 10, '2.0'),
(9, 14, '1.5'),
(10, 3, '3.5'),
(11, 3, '4.0'),
(11, 11, '3.0'),
(11, 14, '3.5'),
(12, 12, '3.0'),
(13, 3, '2.0'),
(13, 10, '3.0'),
(13, 13, '3.0');

CREATE TABLE IF NOT EXISTS `sections` (
  `section_id` int(4) NOT NULL,
  `course_num` int(4) NOT NULL,
  `section_num` int(4) NOT NULL,
  `teacher_num` int(4) NOT NULL,
  `num_students` int(2) NOT NULL DEFAULT '10'
);

INSERT INTO `sections` (`section_id`, `course_num`, `section_num`, `teacher_num`, `num_students`) VALUES
(1, 1001, 1, 1, 10),
(2, 1001, 2, 1, 10),
(3, 1001, 3, 2, 10),
(4, 1001, 4, 3, 10),
(5, 1002, 1, 4, 10),
(6, 1003, 1, 5, 10),
(7, 1004, 1, 6, 10),
(8, 1005, 1, 6, 10),
(9, 1006, 1, 7, 10),
(10, 1006, 2, 7, 10),
(11, 1007, 1, 3, 10),
(12, 1007, 2, 4, 10),
(13, 1005, 2, 5, 10);

CREATE TABLE IF NOT EXISTS `students` (
  `student_num` int(4) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT 'Newark',
  `state` varchar(2) DEFAULT 'NJ',
  `zip` varchar(5) DEFAULT '07102',
  `gender` varchar(1) NOT NULL
);

INSERT INTO `students` (`student_num`, `student_name`, `address`, `city`, `state`, `zip`, `gender`) VALUES
(1, 'Rashford', NULL, 'Newark', 'NJ', '07102', 'M'),
(2, 'Martial', NULL, 'Newark', 'NJ', '07102', 'M'),
(3, 'Greenwood', NULL, 'Newark', 'NJ', '07102', 'M'),
(4, 'Lingard', NULL, 'Newark', 'NJ', '07102', 'M'),
(5, 'Chong', NULL, 'Newark', 'NJ', '07102', 'M'),
(6, 'Mata', NULL, 'Newark', 'NJ', '07102', 'M'),
(7, 'Amy', NULL, 'Newark', 'NJ', '07102', 'F'),
(8, 'Christina', NULL, 'Newark', 'NJ', '07102', 'F'),
(9, 'Vicky', NULL, 'Newark', 'NJ', '07102', 'F'),
(10, 'Alice', NULL, 'Newark', 'NJ', '07102', 'F'),
(11, 'Emma', NULL, 'Newark', 'NJ', '07102', 'F'),
(12, 'Zoe', NULL, 'Newark', 'NJ', '07102', 'F'),
(13, 'Iris', NULL, 'Newark', 'NJ', '07102', 'F'),
(14, 'Williams', NULL, 'Newark', 'NJ', '07102', 'M'),
(15, 'Fosu-Mensah', NULL, 'Newark', 'NJ', '07102', 'M');

CREATE TABLE IF NOT EXISTS `teachers` (
  `teacher_num` int(4) NOT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `salary` int(6) NOT NULL
);

INSERT INTO `teachers` (`teacher_num`, `teacher_name`, `phone`, `salary`) VALUES
(1, 'Solskjaer', NULL, 100000),
(2, 'Ronaldo', NULL, 100000),
(3, 'Rooney', NULL, 80000),
(4, 'Neville', NULL, 80000),
(5, 'Kean', NULL, 80000),
(6, 'Giggs', NULL, 60000),
(7, 'Scholes', NULL, 40000);
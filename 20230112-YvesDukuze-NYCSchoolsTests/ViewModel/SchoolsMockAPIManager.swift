//
//  SchoolMockAPIManager.swift
//  20230112-YvesDukuze-NYCSchoolsTests
//
//  Created by apple on 20/03/2023.
//

import Foundation
@testable import _0230112_YvesDukuze_NYCSchools

class SchoolsMockAPIManager: APIManager {
    
    var isApiSuccessFull = true
    
    func call<T>(url: URL?, decoding: T.Type, completion: @escaping (Result<T, RequestErrors>) -> ()) where T : Decodable, T : Encodable {
        
        if isApiSuccessFull {
            completion(.success(NYCSchool.mockedSchoolResponse as! T))
        }else {
            completion(.failure(RequestErrors.badData))

        }
    }
    
}



extension NYCSchool {
    
    static var mockedSchoolResponse = [NYCSchool(dbn: "02M260", school_name: "Clinton School Writers & Artists, M.S. 260", boro: "M", overview_paragraph: "Students who are prepared for college must have an education that encourages them to take risks as they produce and perform. Our college preparatory curriculum develops writers and has built a tight-knit community. Our school develops students who can think analytically and write creatively. Our arts programming builds on our 25 years of experience in visual, performing arts and music on a middle school level. We partner with New Audience and the Whitney Museum as cultural partners. We are a International Baccalaureate (IB) candidate school that offers opportunities to take college courses at neighboring universities.", school_10th_seats: "1", academicopportunities1: "Free college courses at neighboring universities", academicopportunities2: "International Travel, Special Arts Programs, Music, Internships, College Mentoring English Language Learner Programs: English as a New Language", ell_programs: "English as a New LanguageChelsea-Union Sq", neighborhood: "Chelsea-Union Sq", building_code: "M868", location: "10 East 15th Street, Manhattan NY 10003 (40.736526, -73.992727)", phone_number: "212-524-4360", fax_number: "212-524-4365", school_email: "admissions@theclintonschool.net", website: "www.theclintonschool.net", subway: "", grades2018: "6-11", finalgrades: "6-12", total_students: "376", extracurricular_activities: "CUNY College Now, Technology, Model UN, Student Government, School Leadership Team, Music, School Musical, National Honor Society, The Clinton Post (School Newspaper), Clinton Soup (Literary Magazine), GLSEN, Glee", school_sports: "Cross Country, Track and Field, Soccer, Flag Football, Basketball", attendance_rate: "", requirement1_1: "Course Grades: English (87-100), Math (83-100), Social Studies (90-100), Science (88-100)", requirement2_1: "", requirement3_1: "", requirement4_1: "", requirement5_1: "", offer_rate1: "", program1: "M.S. 260 Clinton School Writers & Artists", interest1: "Humanities & Interdisciplinary", primary_address_line_1: "10 East 15th Street", city: ""),

        NYCSchool(dbn: "21K728", school_name: "Liberation Diploma Plus High School", boro: "K", overview_paragraph: "The mission of Liberation Diploma Plus High School, in partnership with CAMBA, is to develop the student academically, socially, and emotionally. We will equip students with the skills needed to evaluate their options so that they can make informed and appropriate choices and create personal goals for success. Our year-round model (trimesters plus summer school) provides students the opportunity to gain credits and attain required graduation competencies at an accelerated rate. Our partners offer all students career preparation and college exposure. Students have the opportunity to earn college credit(s). In addition to fulfilling New York City graduation requirements, students are required to complete a portfolio to receive a high school diploma.", school_10th_seats: "1", academicopportunities1: "Learning to Work, Student Council, Advisory Leadership, School Newspaper, Community Service Group, School Leadership Team, Extended Day/PM School, College Now", academicopportunities2: "CAMBA, Diploma Plus, Medgar Evers College, Coney Island Genera on Gap, Urban Neighborhood Services, Coney Island Coalition Against Violence, I Love My Life Initiative, New York City Police Department", ell_programs: "English as a New Language", neighborhood: "Seagate-Coney Island", building_code: "K728", location: "2865 West 19th Street, Brooklyn, NY 11224 (40.576976, -73.985413)", phone_number: "718-946-6812", fax_number: "718-946-6825", school_email: "scaraway@schools.nyc.gov", website: "schools.nyc.gov/schoolportals/21/K728", subway: "", grades2018: "School is structured on credit needs, not grade level", finalgrades: "School is structured on credit needs, not grade level", total_students: "206", extracurricular_activities: "Advisory Leadership, Student Council, Community Service Leadership, School Leadership Team, A er-School Enrichment, Peer Tutoring, School Newspaper", school_sports: "Basketball", attendance_rate: "0.550000012", requirement1_1: "", requirement2_1: "", requirement3_1: "", requirement4_1: "", requirement5_1: "", offer_rate1: "", program1: "Liberation Diploma Plus High School", interest1: "Humanities & Interdisciplinary", primary_address_line_1: "2865 West 19th Street", city: "Brooklyn"),

        NYCSchool(dbn: "08X282", school_name: "Women's Academy of Excellence", boro: "X", overview_paragraph: "The WomenÂ’s Academy of Excellence is an all-girls public high school, serving grades 9-12. Our mission is to create a community of lifelong learners, to nurture the intellectual curiosity and creativity of young women and to address their developmental needs. The school community cultivates dynamic, participatory learning, enabling students to achieve academic success at many levels, especially in the fields of math, science, and civic responsibility. Our scholars are exposed to a challenging curriculum that encourages them to achieve their goals while being empowered to become young women and leaders. Our Philosophy is GIRLS MATTER!", school_10th_seats: "", academicopportunities1: "Genetic Research Seminar, Touro College Partnership, L'Oreal Roll Model Program, Town Halls, Laptop carts, SMART Boards in every room, Regents Prep", academicopportunities2: "WAE Bucks Incentive Program, Monroe College JumpStart, National Hispanic Honor Society, National Honor Society,Lehman College Now, Castle Learning.", ell_programs: "English as a New Language", neighborhood: "Castle Hill-Clason Point", building_code: "X174", location: "456 White Plains Road, Bronx NY 10473 (40.815043, -73.85607)", phone_number: "718-542-0740", fax_number: "718-542-0841", school_email: "sburns@schools.nyc.gov", website: "schools.nyc.gov/SchoolPortals/08/X282", subway: "N/A", grades2018: "", finalgrades: "", total_students: "338", extracurricular_activities: "Academy of Health, Advisory, Annual Breast Cancer Walk, Purses for Life, Ambassadors, Conflict Resolution Program-Effective Alternatives in Reconciliation Services (EARS), Peer Tutoring, Student Government, Step Team, Cheerleading, Big Sister/Little Sister Program, Chorus", school_sports: "", attendance_rate: "0.790000021", requirement1_1: "", requirement2_1: "", requirement3_1: "", requirement4_1: "", requirement5_1: "", offer_rate1: "Â—89% of offers went to this group", program1: "WomenÂ’s Academy of Excellence", interest1: "", primary_address_line_1: "", city: "")]

}



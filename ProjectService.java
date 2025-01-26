package projects.service;

import projects.dao.ProjectDAO;
import projects.entity.Project;

public class ProjectService {

	private ProjectDAO projectDAO = new ProjectDAO();
	
	public Project addProject(Project project) {
		// TODO Auto-generated method stub
		
		
		return projectDAO.insertProject(project);
	}

}

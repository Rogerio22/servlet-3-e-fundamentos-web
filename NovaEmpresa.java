package br.com.alura.gerenciador.web;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.Empresa;
import br.com.alura.gerenciador.dao.EmpresaDAO;

public class NovaEmpresa implements Tarefa {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		
		String name = req.getParameter("name");
		
		Empresa empresa = new Empresa(name);
		new EmpresaDAO().adiciona(empresa);
		
		req.setAttribute("nome", name);
		
		return "WEB-INF/paginas/novaEmpresa.jsp";
	}
}

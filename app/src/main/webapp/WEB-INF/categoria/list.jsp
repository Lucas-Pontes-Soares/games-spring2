<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Categorias</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="bg-primary text-center py-4 mb-4">
            <p></p>
            <a href="/jogo/list" class="text-white mx-3">Jogos</a>
            <a href="/categoria/list" class="text-white mx-3">Categorias</a>
            <a href="/plataforma/list" class="text-white mx-3">Plataformas</a>
        </div>
        <div class="container">
            <h1>Categorias</h1>
            <a href="/categoria/insert" class="btn btn-primary">Nova Categoria</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Ações</th>
                </tr>
                <c:forEach var="item" items="${categorias}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>
                            <a href="/categoria/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/categoria/delete?id=${item.id}" class="btn btn-warning">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
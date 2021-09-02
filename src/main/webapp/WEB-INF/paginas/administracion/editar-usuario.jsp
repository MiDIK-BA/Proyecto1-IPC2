<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<jsp:include page="/WEB-INF/paginas/comunes/encabezado.jsp"/>
<jsp:include page="/WEB-INF/paginas/administracion/menu.jsp"/>
<h1>EDITAR USUARIO</h1>
<form  action="${pageContext.request.contextPath}/ServletControlador?accionAdministracion=modificarUsuario&nombreUsuario=${usuario.nombre}" method="POST">
    <label>Nombre de usuario</label>
    <input type="text" disabled name="nuevoNombreUsuario" required value="${usuario.nombre}"/>
    <label>Area actual</label>
    <input type="text" disabled  name="areaActual" required value="${usuario.area}"/>
    <select name="area">
        <c:forEach var="areas" items="${areas}">
            <option>${areas}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Guardar" />
</form>

<jsp:include page="/WEB-INF/paginas/comunes/errores.jsp"/>
<jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>
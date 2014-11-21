$(function() {
    $(".btnEditar").bind("click", Editar);
    $(".btnExcluir").bind("click", Excluir);
    $("#btnAdicionar").bind("click", Adicionar);
});

function Adicionar() {
    $("#tblCadastro tbody").append(
            "<tr>" +
            "<td><input type='text' required='true' /></td>" +
            "<td><input type='date' required='true' /></td>" +
            "<td><img src='adicionar.png' class='btnSalvar' width='20px' height='20px' /> <img src='deletar.png' class='btnExcluir' width='20px' height='20px' /></td></tr>");

    $(".btnSalvar").bind("click", Salvar);
    $(".btnExcluir").bind("click", Excluir);
}
;

function callSalvar() {
    Salvar();
};

function Salvar() {
    var par = $(this).parent().parent(); //tr
    var tdNome = par.children("td:nth-child(1)");
    var tdDataNascimento = par.children("td:nth-child(2)");
    var tdBotoes = par.children("td:nth-child(3)");

    tdNome.html(tdNome.children("input[type=text]").val());
    tdDataNascimento.html(tdDataNascimento.children("input[type=date").val());
    tdBotoes.html("<img src='deletar.png' class='btnExcluir' width='20px' height='20px' /> <img src='editar.png' class='btnEditar' width='20px' height='20px' />");

    $(".btnEditar").bind("click", Editar);
    $(".btnExcluir").bind("click", Excluir);
}
;


function Editar() {
    var par = $(this).parent().parent(); //tr
    var tdNome = par.children("td:nth-child(1)");
    var tdDataNascimento = par.children("td:nth-child(2)");
    var tdBotoes = par.children("td:nth-child(3)");

    tdNome.html("<input type='text' id='txtNome2' required='true' value='" + tdNome.html() + "'/>");
    tdDataNascimento.html("<input type='date' id='txtDataNascimento' required='true' value='" + tdDataNascimento.html() + "'/>");
    tdBotoes.html("<img src='adicionar.png' class='btnSalvar' width='20px' height='20px' />");

    $(".btnSalvar").bind("click", Salvar);
    $(".btnEditar").bind("click", Editar);
    $(".btnExcluir").bind("click", Excluir);
}
;


function Excluir() {
    var par = $(this).parent().parent(); //tr
    par.remove();
}
;

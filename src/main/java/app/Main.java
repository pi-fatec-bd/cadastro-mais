package app;

import app.controllers.usuario.pessoa.fisica.DeleteUsuarioPessoaFisicaController;
import app.controllers.usuario.pessoa.fisica.GetUsuarioPessoaFisicaController;
import app.controllers.usuario.pessoa.fisica.PostUsuarioPessoaFisicaController;
import app.controllers.usuario.pessoa.fisica.PutUsuarioPessoaFisicaController;
import app.controllers.usuario.pessoa.juridica.DeleteUsuarioPessoaJuridicaController;
import app.controllers.usuario.pessoa.juridica.GetUsuarioPessoaJuridicaController;
import app.controllers.usuario.pessoa.juridica.PostUsuarioPessoaJuridicaController;
import app.controllers.usuario.pessoa.juridica.PutUsuarioPessoaJuridicaController;
import com.google.gson.Gson;

import static spark.Spark.*;

public class Main {
    public static final String ORACLE_USER = "system";
    public static final String ORACLE_USER_PASSWORD = "admin";
    public static final String ORACLE_URL = "jdbc:oracle:thin:@localhost:1521:xe";

    private static final String URI_USUARIO_PESSOA_FISICA = "/api/v1/UsuarioPessoaFisica";
    private static final String URI_USUARIO_PESSOA_JURIDICA = "api/v1/UsuarioPessoaJuridica";

    public static void main(String[] args) {
        String projectDir = System.getProperty("user.dir");
        String staticDir = "/src/main/resources/public";
        staticFiles.externalLocation(projectDir + staticDir);

        PostUsuarioPessoaFisicaController postUsuarioPessoaFisicaController = new PostUsuarioPessoaFisicaController();
        PutUsuarioPessoaFisicaController putUsuarioPessoaFisicaController = new PutUsuarioPessoaFisicaController();
        DeleteUsuarioPessoaFisicaController deleteUsuarioPessoaFisicaController = new DeleteUsuarioPessoaFisicaController();
        GetUsuarioPessoaFisicaController getUsuarioPessoaFisicaController = new GetUsuarioPessoaFisicaController();

        PostUsuarioPessoaJuridicaController postUsuarioPessoaJuridicaController = new PostUsuarioPessoaJuridicaController();
        PutUsuarioPessoaJuridicaController putUsuarioPessoaJuridicaController = new PutUsuarioPessoaJuridicaController();
        DeleteUsuarioPessoaJuridicaController deleteUsuarioPessoaJuridicaController = new DeleteUsuarioPessoaJuridicaController();
        GetUsuarioPessoaJuridicaController getUsuarioPessoaJuridicaController = new GetUsuarioPessoaJuridicaController();

        Gson gson = new Gson();

        // ROTAS
        get("/", (req, res) -> "" );
        //ROTAS API USUARIO PESSOA FISICA
        get(URI_USUARIO_PESSOA_FISICA + "/:cpf", getUsuarioPessoaFisicaController.getUsuarioPessoaFisica, gson::toJson);
        post(URI_USUARIO_PESSOA_FISICA, postUsuarioPessoaFisicaController.postUsuarioPessoaFisica);
        put(URI_USUARIO_PESSOA_FISICA, putUsuarioPessoaFisicaController.putUsuarioPessoaFisica);
        delete(URI_USUARIO_PESSOA_FISICA + "/:cpf", deleteUsuarioPessoaFisicaController.deleteUsuarioPessoaFisica);
        //ROTAS API USUARIO PESSOA JURIDICA
        get(URI_USUARIO_PESSOA_JURIDICA + "/:cnpj", getUsuarioPessoaJuridicaController.getUsuarioPessoaJuridica);
        post(URI_USUARIO_PESSOA_JURIDICA, postUsuarioPessoaJuridicaController.postUsuarioPessoaJuridica);
        put(URI_USUARIO_PESSOA_JURIDICA, putUsuarioPessoaJuridicaController.putUsuarioPessoaJuridica);
        delete(URI_USUARIO_PESSOA_JURIDICA + "/:cnpj", deleteUsuarioPessoaJuridicaController.deleteUsuarioPessoaJuridica);
    }
}
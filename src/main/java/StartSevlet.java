import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/start")
public class StartSevlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession(true);

        if (session.getAttribute("interview") == null) {
            session.setAttribute("name", false);
            session.setAttribute("mute", false);
            session.setAttribute("yesIKnow", false);
            session.setAttribute("iDontKnow", false);
            session.setAttribute("yes", false);
            session.setAttribute("no", false);
            session.setAttribute("junior", false);
            session.setAttribute("midle", false);
            session.setAttribute("senior", false);
            session.setAttribute("ready", false);
            session.setAttribute("notReady", false);
            session.setAttribute("yesPortfolio", false);
            session.setAttribute("notPortfolio", false);
            session.setAttribute("yesRecommend", false);
            session.setAttribute("notRecommend", false);
            session.setAttribute("welcome", false);
            session.setAttribute("restart", false);
            session.setAttribute("restart", false);
        }

        getServletContext().getRequestDispatcher("/start.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, SecurityException {
        HttpSession session = request.getSession();
        String interview = request.getParameter("interview");
        Status status = (Status) session.getAttribute("status");

        if (interview != null) {
            switch (interview) {
                case "hello" -> {
                    if (status.equals(Status.HELLO)) {
                        session.setAttribute("name", true);
                        session.setAttribute("mute", true);
                    }
                }
                case "knowledge of java" -> {
                    if (status.equals(Status.KNOWJAVA)) {
                        session.setAttribute("yesIKnow", true);
                        session.setAttribute("iDontKnow", true);
                    }
                }
                case "experience" -> {
                    if (status.equals(Status.EXPERIENCE)) {
                        session.setAttribute("yes", true);
                        session.setAttribute("no", true);
                    }
                }
                case "job selection" -> {
                    if (status.equals(Status.POSITION)) {
                        session.setAttribute("junior", true);
                        session.setAttribute("midle", true);
                        session.setAttribute("senior", true);
                    }
                }
                case "junior" -> {
                    if (status.equals(Status.JUN)) {
                        session.setAttribute("ready", true);
                        session.setAttribute("notReady", true);
                    }
                }
                case "midle" -> {
                    if (status.equals(Status.MIDLE)) {
                        session.setAttribute("yesPortfolio", true);
                        session.setAttribute("notPortfolio", true);
                    }
                }
                case "senior" -> {
                    if (status.equals(Status.SENIOR)) {
                        session.setAttribute("yesRecommend", true);
                        session.setAttribute("notRecommend", true);
                    }
                }
                case "welcome" -> {
                    if (status.equals(Status.WELCOME)) {
                        session.setAttribute("welcome", true);
                        session.setAttribute("restart", true);
                    }
                }
                case "loose" -> {
                    if (status.equals(Status.LOOSE)) {
                        session.setAttribute("restart", true);
                    }
                }

                response.sendRedirect("/start");

            }
        }

    }
}

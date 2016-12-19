package fr.formation.model;

public class Menu {
    final private String title;
    final private String url;

    /**
     *
     * @param title titre du menu
     * @param url url vers le form
     */
    public Menu(String title, String url) {
        this.title = title;
        this.url = url;
    }

    /**
     *
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     *
     * @return url
     */
    public String getUrl() {
        return url;
    }
}

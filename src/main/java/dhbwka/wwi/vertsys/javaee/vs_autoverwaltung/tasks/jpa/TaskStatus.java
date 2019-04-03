/*
 * Copyright © 2018 Dennis Schulmeister-Zimolong
 * 
 * E-Mail: dhbw@windows3.de
 * Webseite: https://www.wpvs.de/
 * 
 * Dieser Quellcode ist lizenziert unter einer
 * Creative Commons Namensnennung 4.0 International Lizenz.
 */
package dhbwka.wwi.vertsys.javaee.vs_autoverwaltung.tasks.jpa;

/**
 * Statuswerte einer Aufgabe.
 */
public enum TaskStatus {
    KOMBI, COUPE, CABRIO, STUFENHECK, LIMOUSINE;

    /**
     * Bezeichnung ermitteln
     *
     * @return Bezeichnung
     */
    public String getLabel() {
        switch (this) {
            case KOMBI:
                return "Kombi";
            case COUPE:
                return "Coupe";
            case CABRIO:
                return "Cabrio";
            case STUFENHECK:
                return "Stufenheck";
            case LIMOUSINE:
                return "Limousine";
            default:
                return this.toString();
        }
    }

}

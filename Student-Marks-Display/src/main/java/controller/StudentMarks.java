package controller;

public class StudentMarks {
    private String name;
    private String regNo;
    private int tamil;
    private int english;
    private int maths;
    private int science;
    private int history;

    public StudentMarks(String name, String regNo, int tamil, int english, int maths, int science, int history) {
        this.name = name;
        this.regNo = regNo;
        this.tamil = tamil;
        this.english = english;
        this.maths = maths;
        this.science = science;
        this.history = history;
    }

    public String getName() {
        return name;
    }

    public String getRegNo() {
        return regNo;
    }

    public int getTamil() {
        return tamil;
    }

    public int getEnglish() {
        return english;
    }

    public int getMaths() {
        return maths;
    }

    public int getScience() {
        return science;
    }

    public int getHistory() {
        return history;
    }
}

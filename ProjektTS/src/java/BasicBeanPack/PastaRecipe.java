
package BasicBeanPack;


public class PastaRecipe {
    private String dishName;
    private String dishID;
    private String dishIngredients;
    private String dishPreparation;
    private String dishPortions;
    private String dishTime;
    private String dishImage;

    public PastaRecipe(String dishName, String dishID, String dishIngredients, String dishPreparation, String dishPortions, String dishTime,String dishImage) {
        this.dishName = dishName;
        this.dishID = dishID;
        this.dishIngredients = dishIngredients;
        this.dishPreparation = dishPreparation;
        this.dishPortions = dishPortions;
        this.dishTime = dishTime;
        this.dishImage = dishImage; 
    }

    
    
    public String getDishName() {
        return dishName;
    }

    public void setDishName(String dishName) {
        this.dishName = dishName;
    }

    public String getDishID() {
        return dishID;
    }

    public void setDishID(String dishID) {
        this.dishID = dishID;
    }

    public String getDishIngredients() {
        return dishIngredients;
    }

    public void setDishIngredients(String dishIngredients) {
        this.dishIngredients = dishIngredients;
    }

    public String getDishPreparation() {
        return dishPreparation;
    }

    public void setDishPreparation(String dishPreparation) {
        this.dishPreparation = dishPreparation;
    }

    public String getDishPortions() {
        return dishPortions;
    }

    public void setDishPortions(String dishPortions) {
        this.dishPortions = dishPortions;
    }

    public String getDishTime() {
        return dishTime;
    }

    public void setDishTime(String dishTime) {
        this.dishTime = dishTime;
    }

    public String getDishImage() {
        return dishImage;
    }

    public void setDishImage(String dishImage) {
        this.dishImage = dishImage;
    }
    
    //idk czy to zadziala
    
    
}

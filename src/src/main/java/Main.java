import com.vk.api.sdk.exceptions.ApiException;
import com.vk.api.sdk.exceptions.ClientException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        var scanner = new Scanner(System.in);

        System.out.println("Enter you vk id:");
        var vkId = scanner.nextInt();

        System.out.println("Enter you token:");
        var token = scanner.next();
        var dataGetter = new DataGetter(vkId,token);

        System.out.println("Enter group id, to get subs count:");
        var groupId = scanner.next();
        try {
            System.out.println(dataGetter.getCountOfUsersInVkGroup(groupId));
        }
        catch (ClientException e) {
            System.out.println("Authorize error");
            e.printStackTrace();
        } catch (ApiException e) {
            System.out.println("Data get error");
            e.printStackTrace();
        }
    }
}



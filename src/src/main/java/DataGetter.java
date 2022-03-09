import com.vk.api.sdk.client.TransportClient;
import com.vk.api.sdk.client.VkApiClient;
import com.vk.api.sdk.client.actors.UserActor;
import com.vk.api.sdk.exceptions.ApiException;
import com.vk.api.sdk.exceptions.ClientException;
import com.vk.api.sdk.httpclient.HttpTransportClient;
import com.vk.api.sdk.objects.users.Fields;
import org.json.JSONObject;

public class DataGetter {

    private int userId;
    private String token;

    public DataGetter(int userId, String token) {
        this.userId = userId;
        this.token = token;
    }

    public String getCountOfUsersInVkGroup(String groupId) throws ClientException, ApiException {
        TransportClient transportClient = HttpTransportClient.getInstance();
        VkApiClient vk = new VkApiClient(transportClient);
        UserActor actor = new UserActor(userId, token);
        var fields = new Fields[]{Fields.PERSONAL};

        var jsonString = vk.groups()
                .getMembers(actor)
                .groupId(groupId)
                .count(1).offset(0)
                .fields(fields)
                .executeAsString();

        int count = new JSONObject(jsonString)
                .getJSONObject("response")
                .getInt("count");

        return String.valueOf(count);
    }
}

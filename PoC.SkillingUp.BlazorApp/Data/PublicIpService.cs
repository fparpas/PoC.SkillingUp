namespace PoC.SkillingUp.BlazorApp.Data
{
    public class PublicIpService
    {
        public async Task<string> GetPublicIp()
        {
            using (var client = new HttpClient())
            {
                var content = await client.GetStringAsync("https://api.ipify.org");

                return content;
            }
        }

    }
}
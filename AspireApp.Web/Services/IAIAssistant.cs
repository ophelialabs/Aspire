using System.Threading.Tasks;

namespace AspireApp.Web.Services
{
    public interface IAIAssistant
    {
        Task<string> ProcessMessageAsync(string message, string context = "");
        Task<string> UpdateMapSettingsAsync(string instructions);
        Task<string> ProcessDataQueryAsync(string query);
    }
}
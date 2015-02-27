import de.jetwick.snacktory.ArticleTextExtractor;
import de.jetwick.snacktory.HtmlFetcher;
import de.jetwick.snacktory.JResult;


public class TestReadability {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		HtmlFetcher fetcher = new HtmlFetcher();
		 // set cache. e.g. take the map implementation from google collections:
		 // fetcher.setCache(new MapMaker().concurrencyLevel(20).maximumSize(count).
		 //    expireAfterWrite(minutes, TimeUnit.MINUTES).makeMap();
		//String articleUrl ="http://www.cnblogs.com/sysuys/p/3460614.html";
		String articleUrl ="http://www.w3cplus.com/css/twitter-bootstrap-tutorial.html";
		int resolveTimeout = 600;
		 JResult res = fetcher.fetchAndExtract(articleUrl, resolveTimeout, true);

		 String text = res.getText(); 
		 String title = res.getTitle(); 
		 String imageUrl = res.getImageUrl();
		 
		 System.out.println("text==="+text);
		 System.out.println("title==="+title);
		 System.out.println("imageUrl==="+imageUrl);
		 

		 
	}

}

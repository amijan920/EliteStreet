import java.util.*;

public class CSVParser {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		sc.nextLine();

		String parameters[] = new String[] {
			"age",
			"enrolled",
			"allowance",
			"salary",
			"freq_1",
			"freq_2",
			"freq_3",
			"freq_4",
			"freq_5",
			"freq_6",
			"place_1",
			"place_2",
			"place_3",
			"place_4",
			"place_5",
			"place_6",
			"place_7",
			"place_8",
			"much_1",
			"flavor_1",
			"flavor_2",
			"flavor_3",
			"willingness",
			"much_2",
			"qual_1",
			"qual_2",
			"qual_3",
			"qual_4",
			"qual_5",
			"qual_6"
		};

		while(sc.hasNextLine()) {
			String query = "Surveyresult.create(";
			String params = "";
			String line = sc.nextLine();
			String parsed[] = line.split(",");

			for(int i = 0; i < parameters.length; i++) {
				if(i == 0)
					query = query + parameters[i] +": " + "\""+parsed[i]+"\"";
				else
					query = query + ", "+parameters[i] +": " + "\""+parsed[i]+"\"";
			}

			query += ")";

			System.out.println(query);
		}
	}
}
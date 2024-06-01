// 
// QtQuick.LocalStorage
//      openDatabaseSync(string name, string version, string description, int estimated_size, jsobject callback(db)): object
//      db.transaction(callback(tx))
//      db.readTransaction(callback(tx))
//      tx.executeSql(statement, values): results
//          rows.item(i): var
//          rows.length: int
//          rowsAffected: int
//          insertId: string
// 
/**
 * var db = LocalStorage.openDatabaseSync("QDeclarativeExampleDB", "1.0", "The Example QML SQL!", 1000000);
 * db.transaction(
 *      function(tx) {
 *          // Create the database if it doesn't already exist
 *          tx.executeSql('CREATE TABLE IF NOT EXISTS Greeting(salutation TEXT, salutee TEXT)');
 *          // Add (another) greeting row
 *          tx.executeSql('INSERT INTO Greeting VALUES(?, ?)', [ 'hello', 'world' ]);
 *          // Show all added greetings
 *          var rs = tx.executeSql('SELECT * FROM Greeting');
 *          var r = ""
 *          for (var i = 0; i < rs.rows.length; i++) {
 *              r += rs.rows.item(i).salutation + ", " + rs.rows.item(i).salutee + "\n"
 *          }
 *          text = r
 *      }
 * )
**/
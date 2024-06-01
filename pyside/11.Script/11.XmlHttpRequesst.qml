// 
// XMLHttpRequest(QtQml):
//      property:
//          onreadystatechange: function
//          readyState: enumeration
//              XMLHttpRequest.UNSENT
//              XMLHttpRequest.OPENED
//              XMLHttpRequest.HEADERS_RECEIVED
//              XMLHttpRequest.LOADING
//              XMLHttpRequest.DONE
//          responseType: string
//          responseURL: string
//          status: int
//          statusText: string
//          response: var
//          responseText: string
//          responseXML: var
//      method:
//          open(method, url, async): void
//          setRequestHeader(header, value): void
//          overrideMimeType(mime): void
//          send(data): void
//          getResponseHeader(headerName): string
//          getAllResponseHeaders(): string
//          abort(): void
// 
/**
 * function sendRequest(url, callback) {
 *      let request = new XMLHttpRequest();
 *      request.onreadystatechange = function() {
 *          if (xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED) {
 *              // HEADERS_RECEIVED
 *          } else if (request.readyState === XMLHttpRequest.DONE) {
 *              let response = {
 *                  status : request.status,
 *                  headers : request.getAllResponseHeaders(),
 *                  contentType : request.responseType,
 *                  content : request.response
 *              };
 *              // JSON.parse(xhr.responseText.toString())
 *          }
 *      }
 *      request.open("GET", url);
 *      // JSON.stringify(object, null, 2)
 *      request.send();
 * }
 */
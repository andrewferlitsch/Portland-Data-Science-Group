
#----------------------------------------------------------------------
# Web
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is a CDN?',
    'A content delivery network (CDN) is a system of distributed servers (network) that deliver webpages and other Web content to a user based on the geographic locations of the user.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'Name the most common HTTP request methods.',
    'GET, POST, PUT, DELETE',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'How are parameters passed in a GET method?',
    'They''re are passed as URL parameters.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is a Single Page Application (SPA)?',
    'SPA web application loads a single HTML page. As the user interacts with the page, the page is updated by modifying the DOM and new content is obtained by AJAX calls.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is AJAX?',
    'AJAX is an asynchronous method in Javascript to make calls to server side scripts. It uses the XMLHttpRequest object. Responses to the call typically are in JSON or XML format. The method is used to send or receive data to/from a server without refreshing the whole page.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'What is Model View Controller (MVC)?',
    'Model–view–controller (MVC) is a software design pattern for implementing user interfaces on computers. It divides the application into three interconnected components: 1) Model - represents the data, 2) View - how the data is visualized, and 3) Controller - how the data is manipulated and bound to the UI.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Web',
    'Describe what a REST API does. What is meant by stateless?',
    'A REST API call is made between a web application and a server via a HTTP request. The endpoint identifies the call or service being requested and the arguments are passed as query string (?parameters) appended to the URL. A REST API is considered stateless in that no state change persist across calls.',
    3
  );


#----------------------------------------------------------------------
# HTML
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is an element, tag and attribute?',
    'An element is a divisible item in HTML that starts with a start tag and ends with an end tag: e.g., <div></div> A tag is the name following the closed angle bracket < which identifies the type of element. An attribute modifies the element. The type attribute makes this element a text input box <input type=''text''>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What kind of elements go inside a form element?',
    'input and select',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'Give two examples of attributes.',
    'e.g., type, name, id, class, readonly, onclick, style',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'Describe how to load an external javascript file and CSS file.',
    '<script src=''...''/> for Javascript and <link href=''...''/>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'HTML stands for what?',
    'Hypertext Markup Language',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the element for the largest heading?',
    '<h1>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the element for a line break?',
    '<br/>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is attribute in a hyperlink (a) to specify the target web address?',
    'href',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'In a hyperlink, how do you specify opening a web page in another browser?',
    'target=''_blank''',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What attribute/value do you use to define a checkbox?',
    'type=''checkbox''',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What elements are used for a numbered list and a bullet list?',
    '<ol> and <ul>, respectively',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the element for indicating text is important?',
    '<strong>',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the DOM? Can it be manipulated by the browser?',
    'Document Object Model defines how an HTML page is defined and parsed into elements. The DOM maybe accessed and modified by the browser using Javascript or CSS3.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'Explain what happens in a form POST method and a form GET method.',
    'The values of the input elements are sent to the web page specified in the action attribute. In the GET method, they are sent as URL parameters. In the POST method, they are sent in the body of the HTTP request.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'How do I capture a click event on an element?',
    'attribute: onclick='''', where JS code is placed within the single quotes.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What element is used to define emphasised text?',
    '<em>',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What event is used to detect a hover over an element?',
    'attribute: onmouseover='''', where JS code is placed within the single quotes.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML',
    'What is the difference between an inline and block element? Give an example of each.',
    'An inline element does not cause a line break and a block element does. <span> is an example of an inline element, and <p> is a block element.',
    3
  );


#----------------------------------------------------------------------
# HTML5
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Name some HTML5 new features.',
    'Geolocation, Canvas, Structural elements, embedding Audio/Video, Progess Bar, Datalists',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Name some input types added by HTML5',
    'color, date, datetime, datetime-local, email, month, number, range',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is the DOCTYPE declaration in HTML5?',
    '<!DOCTYPE html>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is the placeholder attribute, and where is it used?',
    'Provides a hint that appears in light gray in a input text or textarea element.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is or are the elements for embedding a video and audio file respectively?',
    '<video> and <audio>.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'An SVG graphic is specified in what format?',
    'XML',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What does the contenteditable attribute do?',
    'It can be set to true or false, indicating if the content within the element start/end tags can be edited.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is geolocation in HTML5?',
    'The HTML Geolocation API is used to locate a user''s geographical position. It will use the GPS information from a user''s device, if available, otherwise it use the IP address to determine the location of the user''s ISP.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Name the new structural elements added?',
    '<header>, <footer>, <section>, <article>, <nav>, <aside>, <main>, <summary>, <mark> and <time>',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What is the syntax of a custom data attribute?',
    'data-some-name=''some-value'', where some-name is name of the attribute.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'What does the required attribute do?',
    'Forces an input element to be non-empty. If a submit occurs and the element is empty, the submit is disabled and the input box is red highlighted.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Describe the File Drag and Drop API.',
    '',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'Describe how the <output> element works.',
    'The <output> tag represents the result of a calculation (like one performed by a script).',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'HTML5',
    'How do you specify a number input element to take input in dollar and cents?',
    'Add attribute step=0.01',
    3
  );


#----------------------------------------------------------------------
# CSS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What does CSS stand for?',
    'Cascading Style Sheets',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Where in an HTML doc can you place a link to an external style sheet?',
    '<head>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Which HTML attribute is used to specify an inline style for an element?',
    'style',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Which CSS property is used to change the color of text?',
    'color',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What element is used to specify CSS properties in a web page?',
    '<style></style>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you specify a CSS rule for a class and for an id?',
    '#name {} and .name {} , respectively',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you specify that hyperlinks are displayed without an underline?',
    'a { text-decoration: none; }',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Can you use negative values for margin? Can you use negative values for padding?',
    'yes for margins, no for padding',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you left-justify a group of block elements?',
    'set style=''float:left;'' on each block element, and then a style=''clear:both'' on the next element that is not to be left-justified.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What is the default value for the position property?',
    'static',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you select all elements inside a div?',
    'div p',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What is the order of values in border-width to define a width for each side?',
    'top, right, bottom, left',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'Explain the difference between visibility:hidden; and display:none?',
    'Both hide the element from being displayed. For visibility, the space consumed by the element is still rendered (blank), while for display the space is not rendered (folded)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'What are three things (property values) you can do with the text-transform property?',
    'uppercase words, lowercase words, capitalize words',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'CSS',
    'How do you make a list that lists its items with squares?',
    'list-style-type: square;',
    3
  );


#----------------------------------------------------------------------
# Javascript
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How can you declare an empty array?',
    'var arr = new Array()  or  var arr = [];',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How do you add (expand) a new element to an array?',
    'arr.push( newitem );',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'Which HTML element is used to embed Javascript code?',
    '<script></script>',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'What type of class is supported in Javascript?',
    'Prototyped classes',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How do you round the number 7.5 to the nearest integer?',
    'Math.round( 7.5)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'Describe two types of function declarations.',
    'Named functions: function myfuncI() { ... }, and anonymous(unnamed)functions used in callbacks and event handlers.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'How can you get an HTML element?',
    'getElementById(), getElementByName(), getElementByClassName(), getElementByTagName()',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'What is the largest supported bit-size of an integer?',
    '32-bits',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'Give an example of a regular expression pattern in Javascript.',
    'var pat = /hello/i;  // matches all case-insensitive instances of the string hello. str.replace( /hello/i, "goodbye"); replaces hello with goodbye in string str.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Javascript',
    'What tool do you use to debug javascript errors in FireFox? How do you write to the console log?',
    'FireFox Options Menu->Developer Tools->Browser Console. You can write to the browser console with console.log().',
    3
  );


#----------------------------------------------------------------------
# JQuery
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What is the shortcut for loading jQuery code after the document ready event?',
    '$(function() { }',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What does jQuery use for selectors?',
    'CSS selectors and some custom selectors',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What does this select: $("div.cat")',
    'All div elements with class = cat',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What symbol is used for a JQuery shortcut?',
    '$',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'How do you get the inner HTML code for an element?',
    '$("div").html()',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What method is used to hide an element?',
    'hide()',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What syntax is used to change the style of div element?',
    '$("div").css(property,value)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What method is used to make an AJAX call?',
    '$.ajax({ ... })',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What does $("div p") select?',
    'All p elements (paragraph) inside all div elements.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'Which jQuery method is used to switch between adding/removing one or more classes (for CSS) from selected elements?',
    'toggleClass()',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'JQuery',
    'What methods are used to remove selected items?',
    'remove() and detach()',
    3
  );


#----------------------------------------------------------------------
# Java
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What are the builtin scalar data types in Java?',
    'int, short, long, float, double, char, string, byte, boolean',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'Describe what the keyword import is used for.',
    'Used to import a library, where each item in the library is uniquely identified by a namespace.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is the program entry point into a Java application?',
    'The class with a ''public static void main( String args[] )'' definition.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How do you exit from a Java application?',
    'System.exit( exit_code )',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How do you output to standard out and standard error?',
    'System.out.println() and System.err.println()',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How do you specify a class path when compiling a java file?',
    'javac -cp path javafile',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'In a String, how do you get the 3rd character?',
    'string.charAt(2)',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How does garbage collection work?',
    'Java uses lazy garbage collection. There is no explicit method to delete an allocated item or to force garbage collection.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'How is polymorphism supported in Java?',
    'Supported only in interface definition.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is the difference between an abstract class and interface?',
    'Interface supports polymorphism and classes do not. Data declarations in an interface is static.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is a package? How is a package created?',
    'A package is a library. Each file in the library contains the line ''package somename;'', where somename is the name of the package.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is an ArrayList and how do you access the elements?',
    'An ArrayList is a derived type for dynamic sizing of an array. It can take any type specified by the template argument ArrayList<type>. An item is added with the add() method and accessed with the get() method.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'Is the keyword abstract required for abstract methods declared in an interface?',
    'No',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What does a default method do in an interface definition?',
    'It is a default implementation of a method if not defined in an implementation.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What is a lambda expression?',
    'A form of functional programming added in Java 8. Lambda expressions are used primarily to define inline implementation of a functional interface, i.e., an interface with a single method only.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Java',
    'What does it mean when you get a compiler error message about two methods having the same erasure?',
    'It means that both functions have the same name (overloaded), but the types only differ by a type template (between the <> brackets). public void Foo( List<String> ) and public void Foo( List<Integer> )',
    3
  );


#----------------------------------------------------------------------
# C#
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'Name two ways the using statement is used.',
    'As a directive, it is used to create an alias for a namespace or to import types defined in other namespaces. As a statement, it defines a scope at the end of which an object will be disposed.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is the scope of the variable ''i'': for (int i = 0; i<10;i++) {} ?',
    'The scope is within the for loop. It has not scope outside of the for loop.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is the program entry point of a C# application?',
    'The class that contains a static Main() definition.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'Describe how try, catch and finally work.',
    'These constructs are used for exception handling. If an exception occurs in a try block, then the the code in the corresponding catch block is executed; otherwise it is not. Regardless of whether an exception occurs in a try/catch block, the code in the finally block is always executed. If a return occurs, the code in the finally is executed before the return.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is managed code?',
    'The distinction between managed and unmanaged code is prevalent and only relevant when developing applications that interact with the .NET Framework or other Common Language Runtime (CLR) implementations. Managed code prevents typical mistakes that lead to security holes, handles memory management, type checking and releasing unneeded objects.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'How are objects deleted?',
    'There is no explicit delete call in C#. A reference count is instead maintained. Periodically, a garbage collection task happens in the background which releases all memory with zero reference counts (unused).',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What is the method to automatically enforce garbage collection?',
    'System.GC.Collect()',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'What does a LINQ statement do?',
    'LINQ provides a consistent query model across different data stores and formats. All LINQ query operations consist of three distinct actions: 1. Obtain the data store, 2. Create the query, 3. Execute the query.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C#',
    'Explain Reflection.',
    'Reflection reads an object''s metadata information (type, parameters, etc). This allows creating and invoking methods on objects not known at compile time.',
    3
  );


#----------------------------------------------------------------------
# C++
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'How is a method overloaded?',
    'Number and data types of arguments.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'What is the difference between a struct and class?',
    'Methods/data default to public in a struct.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'Where in a function can a variable be declared?',
    'A variable can be declared anywhere a statement would be valid, and can be declared in the initializer part of a for loop.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'What are the four OOP constructs that C++ introduced?',
    'abstraction, data encapsulation, inheritance, polymorphism.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'What is a virtual method?',
    'A method in a base class that may be overridden in a derived class.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'Give an example of operator overloading.',
    'Box operator+(const Box& b)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'How is char and wchar_t differ?',
    'char holds a single byte character, while wchar_t are multi-byte for large character sets (e.g., UNICODE).',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C++',
    'What are all the storage class types?',
    'auto, extern, register, static, mutable',
    3
  );


#----------------------------------------------------------------------
# C
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is a #include?',
    'Includes header file definitions into the C source file.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'Give an example of allocating and freeing memory.',
    'char *p = malloc(10) and free(p)',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is the difference between a signed and unsigned int',
    'Signed integers represent only positive numbers starting at zero. An unsigned integer represents both signed unsigned numbers with a range in each direction of half that of a signed integer.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What is the program entry point into a C application?',
    'The function main()',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'Explain an example of reading/writing a file.',
    'A file can be opened with a file descriptor (open) or file pointer (fopen), with the latter doing buffered I/O. A file is then read/written using read()/write() for a file descriptor, and fread()/fwrite() for a file pointer.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'How many bits are in a long long integer?',
    'It typically is 128 bits, but must be at least 64 bits.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What does a typedef do? Give an example.',
    'A typedef is a name that is used as an alias for a type definition. Ex. typedef int Length;',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'What does the keyword volatile mean?',
    'Tells the compiler to disable optimizations for the variable. This is typically used when that the variable could be modified asynchronously, such as by a hardware interface.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'C',
    'Describe what a setjmp/longjmp do.',
    'A setjmp() call saves the location of the current stack frame. When a longjmp() is issued, a jump is made to the saved stack frame location and continues processing without unwinding the stack.',
    3
  );


#----------------------------------------------------------------------
# R
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What is R?',
    'A statistical programming language.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What are the three assignment operators in R?',
    'equal, leftward (<-), and rightward (->)',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What is a data frame?',
    'Data frames are tabular data objects. Unlike a matrix in data frame each column can contain different modes of data. The first column can be numeric while the second column can be character and third column can be logical. It is a list of vectors of equal length.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What are the common builtin types of R-objects?',
    'vectors, arrays, matrices, lists, factors, data frames',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'What are the six data types of a vector?',
    'logical, numeric, integer, complex, character, raw',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'How do you create a data frame?',
    'Data Frames are created using the data.frame() function.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'How do I find all variables starting with the pattern "ab"?',
    'ls(pattern = "ab")',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'R',
    'Describe Data Shaping',
    '',
    3
  );


#----------------------------------------------------------------------
# Python
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'How are blocks of code delineated (e.g, statements for an if block)?',
    'Blocks of code are denoted by line indentation.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What is the syntax of a comment?',
    '#',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What are the five standard data types?',
    'Numbers, String, List, Tuple, Dictionary',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What does the keyword yield do?',
    '',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What is a dictionary?',
    'A dictionary is an associative array (or hash). The key can be any data type. Dictionaries are enclosed in {} braces and values are accessed thru square [] brackets.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Python',
    'What does the keyword lambda do?',
    '',
    3
  );


#----------------------------------------------------------------------
# Data Science
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Linear Regression?',
    'Linear regression is a statistical technique where the score of a variable Y is predicted from the score of a second variable X. X is referred to as the predictor variable and Y as the criterion variable.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is data wrangling?',
    'Cleaning up messy (bad) data before it is used in an analysis.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What are Recommender Systems?',
    'A subclass of information filtering systems that are meant to predict the preferences or ratings that a user would give to a product.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'Which technique is used to predict categorical responses?',
    'Classification technique is used widely in mining for classifying data sets.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is interpolation?',
    'A method of constructing new data points within the range of a discrete set of known data points.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is extrapolation?',
    'Estimating a value based on extending a known sequence of values or facts beyond the area that is certainly known.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is the difference between univariate, bivariate and multivariate analysis?',
    'These are descriptive statistical analysis techniques which can be differentiated based on the number of variables involved: univariate (one), bivariate (two), multivariate (three or more)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is Collaborative filtering?',
    'The process of filtering used by most of the recommender systems to find patterns or information by collaborating viewpoints, various data sources and multiple agents.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What does P-value signify about the statistical data?',
    'P-value is used to determine the significance of results after a hypothesis test in statistics. P-value helps the readers to draw conclusions and is always between 0 and 1.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'Do gradient descent methods always converge to same point?',
    'No, in some cases it reaches a local minima or a local optima point.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is A/B Testing?',
    'A randomized experiment of switching between two variables A and B, and measuring for an increased outcome, such as a higher click thru rate on a web page.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is the formula for R-square?',
    '1 - (Residual Sum of Squares/ Total Sum of Squares)',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is an Eigenvalue and Eigenvector?',
    'An eigenvector non-zero vector that does not change its direction when that linear transformation is applied to it. Geometrically an eigenvector, corresponding to a real nonzero eigenvalue, points in a direction that is stretched by the transformation and the eigenvalue is the factor by which it is stretched.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is the difference between Supervised Learning an Unsupervised Learning?',
    'If an algorithm learns something from the training data so that the knowledge can be applied to the test data, then it is referred to as Supervised Learning. If the algorithm does not learn anything beforehand because there is no response variable or any training data, then it is referred to as unsupervised learning.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Data Science',
    'What is the difference between Cluster and Systematic Sampling?',
    'Cluster Sample is a probability sample where each sampling unit is a collection, or cluster of elements. Systematic sampling is a statistical technique where elements are selected from an ordered sampling frame. ',
    3
  );


#----------------------------------------------------------------------
# OS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is a stack frame?',
    'The stack frame is a part of the program''s memory address space for holding the the values of parameters and local variables per function call. Each time a function is called, a stack frame is pushed into this memory space, usually in sequential order. When the function returns, the stack frame is popped, releasing memory.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'How many bytes are in a Unicode character?',
    '2 bytes',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'Explain how a pointer is dereferenced.',
    'The value of the pointer (an address of another section of memory) is loaded into a register. The register is then used as an argument to an assembly language instruction to fetch the value at the location specified by the register and place it into another register or variable.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'Describe UTF-8 encoding',
    'A encoding consisting of one to four bytes. If the first byte has a leading zero bit, it is one byte long (ANSI). If it has two leading one bits, it is two bytes long, three leading one bits it is three bytes long, and four leading one bits it is four bytes long.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is a GPU? How is it different from a CPU?',
    '',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What does the MMU do when a page fault occurs in a virtual address space?',
    'The memory management unit (MMU) will map the physical memory page into the virtual address space.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is SDRAM? How is it different from DRAM?',
    'Synchronous Dynamic RAM. SDRAM is an improvement because it synchronizes data transfer between the CPU and memory. SDRAM allows the CPU to process data while another process is being queued.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OS',
    'What is a Mutex?',
    'Short for Mutually Exclusion Object. A mutex is a program object that allows multiple program threads to share the same resource, but not simultaneously. If a thread places a lock on the mutex, then all other threads will block attempting to lock the mutex until it is released.',
    3
  );


#----------------------------------------------------------------------
# OOP Design
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is data encapsulation?',
    'Data encapsulation is where the data in a class is hidden from external objects. The data is only accessible by the class methods.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'Describe how public, protected and private scope work.',
    'public - data or method is accessible to all external objects. protected - data or method is accessible only by the class and objects that inherit the class. private - data or method is accessible only by the class.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is an abstract class?',
    'An abstract class is a class where one or more declared methods require an implementation. A derived (subclass, extended) that inherits the abstract class must implement all the methods that do not have an implementation. An abstract class cannot be instantiated.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is polymorphism? Give an example.',
    'Multiple inheritance of classes. For example, an OOP design for a vehicle might have a base class for wheels, and a base class for engine. The wheels base class may have derived classes for truck-wheels and passenger-wheels, and the engine base class may have derived classes for gas and diesel engine. A truck object might inherit the diesel engine and truck wheels derived classes, while a passenger vehicle might inherit the gas engine and passenger wheel derived classes.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is a Singleton design pattern?',
    'A design pattern where only one instance of an object (class) can be instantiated.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What does a static field (variable) in a class do?',
    'There is only one instance of the field (variable) across all instances of the class.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is a Factory design pattern?',
    'The Factory Method defines an interface for creating objects, but lets subclasses decide which classes to instantiate.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'OOP Design',
    'What is an Iterator design pattern?',
    'Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.',
    3
  );


#----------------------------------------------------------------------
# DOS
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you keep command strings being executed in a script from being echoed to the console?',
    'echo off',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you redirect output from standard out and standard error to a file?',
    '>file and 2>file',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you set a variable?',
    'set var=value',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you remove a directory and all its contents?',
    'rmdir dirname \s',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you test in an IF statement if the last command exited with a non-zero exit code?',
    'IF %ERRORLEVEL% NEQ 1',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'What is the syntax for a goto and the target?',
    'goto label  and  :label',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'DOS',
    'How do you count the number of occurrences of the word hello in a file?',
    'find "hello" file /c , where the pattern to search for must be in double quotes.',
    3
  );


#----------------------------------------------------------------------
# MySQL
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you select all columns from a table named mytable?',
    'SELECT * FROM mytable;',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you select only the columns field1 and field2 from a table named mytable?',
    'SELECT field1,field2 FROM mytable;',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you select only rows where field year is 2015?',
    'SELECT * FROM mytable where year=2015;',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you create a database?',
    'CREATE DATABASE databasename;',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you login to a password protected database?',
    'mysql -u username -p  , then you will be prompted for password',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you set which database to use?',
    'USE databasename;',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'What does RDBMS stand for?',
    'Relational Database Management System',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you count how many rows have year = 2015?',
    'SELECT COUNT(*) FROM mytable WHERE year=2015;',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you change a field (column) name?',
    'ALTER TABLE mytable CHANGE oldname newname;',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you make an existing column unique? What does it mean?',
    'ALTER TABLE mytable ADD UNIQUE (ColumnName); It means that the field value in each row must be unique; otherwise an error will occur.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'How do you drop a table?',
    'DROP TABLE tablename;',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'What is a foreign key? How does it work?',
    'A foreign key points to a primary key in another table. It is used to maintain referential integrity between the tables. You cannot insert a row with a foreign key value if there does not exist a primary key entry in the other table.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'What is the difference between an INNER and OUTER JOIN?',
    'An INNER JOIN is the intersection of the two tables, and OUTER JOIN is the union of the two tables.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'What is the difference between a LEFT JOIN and a RIGHT JOIN',
    'A LEFT JOIN is the contents of the first table plus the intersection with the second table. A RIGHT JOIN is the contents of the second table plus the intersection with the first table.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL',
    'Describe a parent/child hierachy relationship in a table',
    'A table that two identifiers with one identifier being a primary key, and the second identifier references the first (primary key) identifier. Ex. ( ManagerID int Primary Key, EmployeeID int REFERENCES( ManagerID ))',
    3
  );


#----------------------------------------------------------------------
# MySQL DBA
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do you stop mysql?',
    '1. sudo service mysql stop , or 2. /etc/init.d stop, or 3. mysqladmin stop',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do tell what version of mysql is running?',
    '1. mysql>\s , or 2. mysql>status , or 3. mysql --version, or 4. mysqladmin --version',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'Users are complaining about their queries taking too long. You look at the server and find there are about 50 active queries running at once. Which one would you look at first?',
    'The longest-running query.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What was the default storage engine in MySQL prior to MySQL 5.5? What is it from 5.5 and later?',
    'MyISAM before and InnoDB after.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What do you put before a SELECT clause to get MySQL to show you what indexes MySQL will consider using?',
    'EXPLAIN',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'Where is mysql TMP located?',
    'mysql>show global variables like ''tmpdir'';',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'where does the my.cnf file live?',
    '#locate my.cnf',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'Where is the mysql error.log located?',
    'mysql>show global variables like ''log_error'';',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What command will show an administrator what the most recent deadlock was in InnoDB?',
    'SHOW ENGINE INNODB STATUS',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'You''re setting up replication between a master and a slave. What command would you use to tell the slave what master to connect to?',
    'CHANGE MASTER TO ...',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What command will show you the current state of replication on a slave? ',
    'SHOW SLAVE STATUS',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What command will show you the current binary log position on a master server?',
    'SHOW MASTER STATUS',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do you kill a query?',
    'mysql>show full processlist\G kill id;',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'How do you check replication status?',
    '1. mysql>show slave status\G , or 2. mysql>show master status;',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'MySQL DBA',
    'What is the default transaction isolation level for MySQL 5.5 servers if its left unconfigured in my.cnf?',
    'REPEATABLE-READ',
    3
  );


#----------------------------------------------------------------------
# Agile
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What is Agile Product Management?',
    'An iterative, incremental method of managing the design and build activities of engineering, information technology and other business areas that aim to provide new product or service development in a highly flexible and interactive manner',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What is the product owner''s role',
    'A product owner decides which stories go into a sprint.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What are story points?',
    'For each task in a sprint, it is the estimate of the amount of time to complete the task. Typically 1 story point is 1/2 day, 2 story points is 1 day, 3 story points is 2 days, 5 story points is a 5 days.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What does a scrum master do?',
    'A scrum master manages the sprint process, which includes sprint planning, scrums, and sprint reviews.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What is a scrum?',
    'A scrum is all hands meeting on a periodic schedule (e.g. daily) throughout a sprint. It is generally short and is used to synchronize work by each person saying what their status is, what they plan to do, and what resources or help they need.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What is the technical backlog?',
    'Any task, or portion of it, not completed in a sprint is put into the technical backlog.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What does a sprint consist of?',
    'A sprint consists of a sprint planning session, execution of tasks, followed by a sprint review and sometimes a sprint retrospective.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What is the purpose of a standup scrum',
    'To give a quick round of status and expected tasks for the day by each member. It is called a standup to emphasize keeping the sprint as short as possible.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'Describe Kanban board.',
    'A Kanban board is a workflow process where tasks are reviewed and moved from various progressive states of completion. These typically include: unassigned, assigned, in progress, in test, in review, accepted (or completed).',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Agile',
    'What is Extreme Programming',
    'A development process consisting of frequent releases in short development cycles. Other elements include: programming in pairs or doing extensive code review, unit testing of all code, avoiding programming of features until they are actually needed.',
    3
  );


#----------------------------------------------------------------------
# Network
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is DNS? How does it work?',
    'Domain Name Service. A DNS Server takes a domain name and resolves it into an IP addresses via a lookup directory.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'Describe the difference between UDP and TCP.',
    'UDP (User Datagram Protocol) and TCP (Transmission Control Protocol) both send data packets over a network. UDP does not guarantee delivery. TCP does. When the receiver receives a packet, it sends back an acknowledgement to the sender.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'In IPv4, what is a C-subnet? What are the max number of addresses?',
    'A C-subnet is the address range of the lower 8 bits of an IPv4 address range. It can hold 256 addresses.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is WireShark?',
    'An application that is used by developers to view packets on the network.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is IPv6?',
    'The IPv6 replaces the IPv4 Internet Address space. IPv4 was limited to 4 billion addresses (32-bits). IPv6 uses a 128-bit address, theoretically allowing 2^128, or approximately 3.4×1038 addresses.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'What is the difference between unicast, multicast and broadcast?',
    'Unicast sends a message to a single IP address. Multi-cast sends a message to all IP addresses registered for the multicast on a subnet. Broadcast sends a message to all IP addresses on the subnet.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Network',
    'Explain the FTP protocol.',
    '',
    3
  );


#----------------------------------------------------------------------
# Security
#----------------------------------------------------------------------

INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is the difference between http:// and https:// ?',
    'http sends data unencrypted. https sends it encrypted using SSL',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is SSL?',
    'Secured Sockets Layer. It is a form of encryption over TCP/IP +networks between clients and servers. The server will have an SSL certificate which contains a public/private key used for the encryption. The SSL certificate is obtained and authenticated by a Certificate Authority (CA).',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is a Trojan Horse?',
    'Malicious software that is hidden inside what might appear inside something that might otherwise appear legitimate, in an email message, social media, or web site.',
    1
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is a one-way hash? Name at least one popular method.',
    'A type of encryption where once something is encrypted it cannot be decrypted back to the original form. It is commonly used for encrypting passwords. The one-way hashed version of the password is stored instead of the original password. Popular methods are SHA1 and MD5.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is two factor authentication?',
    'An additional authentication device that produces an access token which has a short life (e.g., 60 seconds), which must be used in conjunction with a password.',
    2
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'Describe how Public Key Encryption works.',
    'Public Key Encryption (PKE) is a form of encryption where one key (public) is used to encrypt a message, while a another key (private) is used to decrypt the message. The receiver has a public key which the sender uses to encrypt the message, and the receiver then decrypts it using the private key. As long as the receiver makes their public key available, then anybody can send an encrypted message to the receiver, but only the receiver can decrypt it.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is a Certificate Authority (CA)?',
    'A certificate authority (CA) is an entity that issues digital certificates. A digital certificate certifies the ownership of a public key by the named subject of the certificate.',
    3
  );


INSERT INTO questions (category, question, answer, rank) 
  VALUES (
    'Security',
    'What is Cross Site Scripting?',
    'XSS attacks occur when malicious code is injected into a website, generally through an input control.',
    3
  );


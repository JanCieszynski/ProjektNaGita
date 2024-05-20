<?php
class Post {
    private $id;
    private $author;
    private $title;
    private $timestamp;
    private $imgUrl;
     
    public function __construct(int $id, int $author, int $title, int $timestamp, int $imgUrl){
        $this->id = $id;
        $this->author = $author;
        $this->title = $title;
        $this->timestamp = $timestamp;
        $this->imgUrl = $imgUrl;
    }
    
        
    }
     
    function fetchPosts() : array {
        // Connect to the database
        $db = new mysqli('localhost', 'root', '', 'database_name');
    
        // Prepare the SQL query
        $sql = "SELECT * FROM post";
        $query = $db->prepare($sql);
    
        // Execute the query
        $query->execute();
    
        // Fetch the results
        $result = $query->get_result();
    
        // Create an array to store the Post objects
        $posts = [];
    
        // Loop through the results and create a Post object for each row
        while ($row = $result->fetch_assoc()) {
            $post = new Post($row['ID'], $row['author'], $row['title'], $row['timestamp'], $row['imgUrl']);
            $posts[] = $post;
        }
    
        // Close the database connection
        $db->close();
    
        // Return the array of Post objects
        return $posts;
}



?>
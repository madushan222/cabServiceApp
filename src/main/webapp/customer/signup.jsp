<%-- 
    Document   : signup
    Created on : 22 Aug 2022, 18:04:30
    Author     : shanr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <style>
            body{
                background-image: url("../media/index_01.jpg");
            }
            
            label,p{
                color:white;
            }
        </style>
    </head>
    <body>
        <div class="row" style="margin-top:20px;">
            <div class="col-md-8">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut leo iaculis, bibendum libero vitae, iaculis sem. Quisque consequat hendrerit arcu, eget mollis sem iaculis in. Mauris pretium sem erat, nec dapibus lacus efficitur sit amet. Fusce risus turpis, mattis et velit et, posuere bibendum orci. Maecenas pulvinar placerat feugiat. Quisque iaculis, ligula eu faucibus vehicula, tortor quam rutrum diam, finibus maximus orci massa vel massa. Fusce efficitur, nunc sit amet ornare dignissim, risus sem facilisis est, ac euismod justo ex sed enim.

Cras eget faucibus nisi, vel elementum risus. Donec neque leo, viverra non feugiat sit amet, efficitur ac ex. Donec interdum, turpis eget iaculis rutrum, erat ligula mollis tortor, ut scelerisque arcu enim eu sem. Vestibulum vel nulla nibh. Sed bibendum lacinia aliquam. Aliquam consectetur eu leo non tempus. Fusce ut laoreet sem. Nullam sapien massa, vestibulum ut aliquet ut, finibus eget urna. Maecenas dignissim felis eget felis tempus porttitor. Pellentesque vitae arcu luctus, luctus sem in, efficitur erat. Nunc dignissim nisi sit amet sapien vehicula pharetra. Quisque ac libero ornare, scelerisque neque eu, dictum lorem. Donec metus justo, fermentum ut quam ut, accumsan hendrerit urna. Duis feugiat commodo tellus eu pretium. Quisque venenatis lacinia risus a suscipit. Ut tristique varius tempor.

Etiam eu bibendum purus. Nulla sed mollis ex, sed molestie turpis. In eu tortor tincidunt leo egestas suscipit. Cras maximus eros ut felis pretium mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at purus rutrum, lobortis nulla non, faucibus ex. Phasellus venenatis, dui at volutpat imperdiet, libero nisi tincidunt lorem, ornare hendrerit quam mauris in massa. Aenean viverra posuere leo, vitae pulvinar sem scelerisque in. Etiam in mauris ante. Vivamus quis fringilla tellus. Nullam a cursus nisi. Mauris accumsan erat vel purus scelerisque consectetur. Nunc non velit ipsum. Ut pellentesque, lorem a scelerisque porta, ligula ex consectetur nisl, id vestibulum quam erat eu nibh. Donec et ex convallis, vulputate nulla ac, fermentum leo.

Ut imperdiet pretium est in molestie. In tempor erat non ullamcorper porttitor. Aenean cursus tortor in magna consectetur interdum. Integer imperdiet varius tincidunt. Sed ornare id ex vel vehicula. Aliquam porta augue vitae justo sodales, eu ornare quam lobortis. Fusce gravida suscipit nisl, ut lobortis enim gravida laoreet. Ut vitae augue tortor. Pellentesque ultricies accumsan sagittis. Donec feugiat dui pulvinar velit ultricies dictum. Curabitur nec elit ac lorem viverra imperdiet.

Ut commodo sapien quis dui pulvinar, non porta orci congue. Morbi elementum, erat ut ornare pretium, lacus ex laoreet libero, sit amet auctor enim turpis quis libero. Curabitur et nulla tempor, hendrerit quam quis, pretium tellus. Vivamus venenatis quam id diam iaculis mattis. Proin vel purus orci. Sed erat purus, condimentum eu facilisis quis, fringilla sit amet felis. Aliquam molestie ac sapien consequat imperdiet. Etiam risus ipsum, pretium nec pharetra quis, mattis a risus. Ut tincidunt mollis pellentesque. Aenean bibendum lacinia ultricies. Phasellus convallis lectus id ultricies consequat. Vivamus finibus massa magna, eu molestie metus rhoncus vitae. Aliquam ut est risus. Praesent laoreet rutrum fringilla.</p>
            </div>
             <div class="col-md-4">    
                <form action="/action_page.php">
                    <div class="form-group">
                      <label for="email">First Name:</label>
                      <input type="email" class="form-control" id="email" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                      <label for="email">Last Name:</label>
                      <input type="email" class="form-control" id="email" autocomplete="off" required>
                    </div>
                     <div class="form-group">
                      <label for="email">Address Line 1:</label>
                      <input type="email" class="form-control" id="email" autocomplete="off" required>
                    </div>
                     <div class="form-group">
                      <label for="email">Address Line 2:</label>
                      <input type="email" class="form-control" id="email" autocomplete="off">
                    </div>
                    <div class="form-group">
                      <label for="email">Mobile:</label>
                      <input type="email" class="form-control" id="email" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                      <label for="email">Email address:</label>
                      <input type="email" class="form-control" id="email" autocomplete="off" required> 
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-warning">Clear</button>
                </form>  
            </div>
        </div>
    </body>
</html>

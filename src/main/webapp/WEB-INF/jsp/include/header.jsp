<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap 4 Website Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <!-- Bootstrap -->
        <link rel="stylesheet" href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
        <script src="/webjars/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        
        <!-- member js -->
        <script src="/js/member/member.js"></script>

    </head>
    <body>
    
    
      <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <div class="container">
        <a class="navbar-brand" href="#">First Web</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">about</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>    
          </ul>
    
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">로그인</a>
              <div class="dropdown-menu dropdown-menu-right" style="width: 300px; height: 300px; padding: 30px;">
                <form>
                  <div class="form-group" style="margin-bottom: 0;">
                    <div class="row">
                      <div class="col-sm"> 
                        <div class="input-group mb-3">
                          FirstWeb
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="form-group" style="margin-bottom: 0;">
                    <div class="row">
                      <div class="col-sm"> 
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                              </svg>
                            </span>
                          </div>
                          <input type="text" class="form-control" id="memberId" name="memberId" placeholder="ID">
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="form-group" style="margin-bottom: 0;">
                    <div class="row">
                      <div class="col-sm">
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-lock" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M11.5 8h-7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1zm-7-1a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-7zm0-3a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                              </svg>
                            </span>
                          </div>
                          <input type="password" class="form-control" id="memberPw" name="memberPw" placeholder="Password">
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="form-group" style="margin-bottom: 0;">
                    <div class="row">
                      <div class="col-sm">
                        <div class="input-group mb-3">
                          <div class="form-check">
                            <label class="form-check-label">
                              <input class="form-check-input" type="checkbox"> Remember me
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="form-group" style="margin-bottom: 0;">
                    <div class="row">
                      <div class="col-sm">
                        <div class="input-group mb-3">
                          <input class="btn btn-info btn-block" type="submit" name="commit" value="로그인"/>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </form>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="modal" data-target="#signupModal">회원가입</a>
              <div class="modal fade" id="signupModal">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">회원가입</h4>
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="margin:0 auto;">
                      <form>
                        <div class="form-group">
                          <div class="row" style="margin-top:20px;">
                            <div class="col-sm"> 
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                                    </svg>
                                  </span>
                                </div>
                                <input type="text" class="form-control" id="memberId" name="memberId" placeholder="ID">
                                <div class="input-group-prepend">
                                <button class="btn btn-success" type="submit">중복 확인</button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="form-group">
                          <div class="row">
                            <div class="col-sm">
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-lock" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M11.5 8h-7a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1zm-7-1a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-7zm0-3a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
                                    </svg>
                                  </span>
                                </div>
                                <input type="password" class="form-control" id="memberPw" name="memberPw" placeholder="Password">
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="form-group">
                          <div class="row">
                            <div class="col-sm">
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                    </svg>
                                  </span>
                                </div>
                                <input type="text" class="form-control" id="memberName" name="memberName" placeholder="Name">
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="form-group">
                          <div class="row">
                            <div class="col-sm">
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                                    </svg>
                                  </span>
                                </div>
                                <input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="Email">
                              </div>
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>  
                    <div class="modal-footer">
                      <button type="button" class="btn btn-primary" id="memberRegisterBtn">가입하기</button>
                      <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
              </div>
            </li>  
          </ul>
        </div> 
        </div>
      </nav>
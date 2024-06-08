<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="../menu.jsp" %>
<!doctype html>
<html lang="ko" data-bs-theme="auto">
  <head>
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    
    <script>
    const districts = {
    		seoul: [
    		    { value: "강남구", text: "강남구" },
    		    { value: "강동구", text: "강동구" },
    		    { value: "강북구", text: "강북구" },
    		    { value: "강서구", text: "강서구" },
    		    { value: "관악구", text: "관악구" },
    		    { value: "광진구", text: "광진구" },
    		    { value: "구로구", text: "구로구" },
    		    { value: "금천구", text: "금천구" },
    		    { value: "노원구", text: "노원구" },
    		    { value: "도봉구", text: "도봉구" },
    		    { value: "동대문구", text: "동대문구" },
    		    { value: "동작구", text: "동작구" },
    		    { value: "마포구", text: "마포구" },
    		    { value: "서대문구", text: "서대문구" },
    		    { value: "서초구", text: "서초구" },
    		    { value: "성동구", text: "성동구" },
    		    { value: "성북구", text: "성북구" },
    		    { value: "송파구", text: "송파구" },
    		    { value: "양천구", text: "양천구" },
    		    { value: "영등포구", text: "영등포구" },
    		    { value: "용산구", text: "용산구" },
    		    { value: "은평구", text: "은평구" },
    		    { value: "종로구", text: "종로구" },
    		    { value: "중구", text: "중구" },
    		    { value: "중랑구", text: "중랑구" }
    		],
    		gyeonggi: [
    		    { value: "가평군", text: "가평군" },
    		    { value: "고양시 덕양구", text: "고양시 덕양구" },
    		    { value: "고양시 일산동구", text: "고양시 일산동구" },
    		    { value: "고양시 일산서구", text: "고양시 일산서구" },
    		    { value: "과천시", text: "과천시" },
    		    { value: "광명시", text: "광명시" },
    		    { value: "광주시", text: "광주시" },
    		    { value: "구리시", text: "구리시" },
    		    { value: "군포시", text: "군포시" },
    		    { value: "김포시", text: "김포시" },
    		    { value: "남양주시", text: "남양주시" },
    		    { value: "동두천시", text: "동두천시" },
    		    { value: "부천시 소사구", text: "부천시 소사구" },
    		    { value: "부천시 원미구", text: "부천시 원미구" },
    		    { value: "부천시 오정구", text: "부천시 오정구" },
    		    { value: "성남시 분당구", text: "성남시 분당구" },
    		    { value: "성남시 수정구", text: "성남시 수정구" },
    		    { value: "성남시 중원구", text: "성남시 중원구" },
    		    { value: "수원시 권선구", text: "수원시 권선구" },
    		    { value: "수원시 영통구", text: "수원시 영통구" },
    		    { value: "수원시 장안구", text: "수원시 장안구" },
    		    { value: "수원시 팔달구", text: "수원시 팔달구" },
    		    { value: "시흥시", text: "시흥시" },
    		    { value: "안산시 단원구", text: "안산시 단원구" },
    		    { value: "안산시 상록구", text: "안산시 상록구" },
    		    { value: "안성시", text: "안성시" },
    		    { value: "안양시 동안구", text: "안양시 동안구" },
    		    { value: "안양시 만안구", text: "안양시 만안구" },
    		    { value: "양주시", text: "양주시" },
    		    { value: "양평군", text: "양평군" },
    		    { value: "여주시", text: "여주시" },
    		    { value: "연천군", text: "연천군" },
    		    { value: "오산시", text: "오산시" },
    		    { value: "용인시 기흥구", text: "용인시 기흥구" },
    		    { value: "용인시 수지구", text: "용인시 수지구" },
    		    { value: "용인시 처인구", text: "용인시 처인구" },
    		    { value: "의왕시", text: "의왕시" },
    		    { value: "의정부시", text: "의정부시" },
    		    { value: "이천시", text: "이천시" },
    		    { value: "파주시", text: "파주시" },
    		    { value: "평택시", text: "평택시" },
    		    { value: "포천시", text: "포천시" },
    		    { value: "하남시", text: "하남시" },
    		    { value: "화성시", text: "화성시" }
    		]


    };
	</script>

    <title>addProperty</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap">
    
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }
      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }
      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }
      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }
      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;
        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }
      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
      .mb-custom1 {
        margin-bottom: 0.7rem; /* 원하는 간격으로 조정하세요 */
      }
      .mb-custom2 {
        margin-bottom: 1.0rem; /* 원하는 간격으로 조정하세요 */
      }
      .input-group .form-control {
        flex: 1 1 auto;
      }
      .input-group .btn {
        flex: 0 1 auto;
      }
    </style>
    
    <link href="checkout.css" rel="stylesheet">
  </head>
  <body class="bg-body-tertiary">
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    <div class="container">
      <div class="py-5 text-center">
        <h2>매물 등록</h2>
        <p class="lead">매물 등록 페이지</p>
      </div>
      <div class="container">
        <main>
          <div class="row g-3 mb-3">
            <div class="col-6">
              <label for="propertyID" class="form-label">매물 ID</label>
              <div class="input-group">
                <input type="text" class="form-control custom-width" id="propertyID" placeholder="propertyID" required>
                <button class="btn btn-outline-secondary" type="button" id="username-check">중복 검색</button>
              </div>
              <div class="invalid-feedback">
                Your username is required.
              </div>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-6">
              <label for="password" class="form-label">비밀번호<span class="text-body-secondary"></span></label>
              <input type="password" class="form-control custom-width" id="password" placeholder="Password" required>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-6">
              <label for="password_check" class="form-label">비밀번호 확인<span class="text-body-secondary"></span></label>
              <input type="password" class="form-control custom-width" id="password_check" placeholder="Password" required>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-sm-6">
              <label for="lastName" class="form-label">성명</label>
              <input type="text" class="form-control custom-width" id="lastName" placeholder="Name" value="" required>
            </div>
          </div>
          <div class="mb-3 row flex-column">
            <label class="col-sm-2">성별</label>
            <div class="col-sm-2">
              <input name="gender" type="radio" value="남"> 남
              <input name="gender" type="radio" value="여"> 여
            </div>
          </div>
          <div class="mb-3 row flex-column">
            <label class="col-sm-2">생일</label>
            <div class="col-sm-10">
              <div class="row">
                <div class="col-sm-2">
                  <input type="text" name="birthyy" maxlength="4" class="form-control" placeholder="년(4자)" size="6">
                </div>
                <div class="col-sm-2">
                  <select name="birthmm" class="form-select">
                    <option value="">월</option>
                    <option value="01">1</option>
                    <option value="02">2</option>
                    <option value="03">3</option>
                    <option value="04">4</option>
                    <option value="05">5</option>
                    <option value="06">6</option>
                    <option value="07">7</option>
                    <option value="08">8</option>
                    <option value="09">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                  </select>
                </div>
                <div class="col-sm-2">
                  <input type="text" name="birthdd" maxlength="2" class="form-control" placeholder="일" size="4">
                </div>
              </div>
            </div>
          </div>
          <div class="mb-3 row flex-column">
            <label class="col-sm-2">이메일</label>
            <div class="col-sm-10">
              <div class="row">
                <div class="col-sm-4">
                  <input type="text" name="mail1" maxlength="50" class="form-control" placeholder="email">
                </div> @
                <div class="col-sm-3">
                  <select name="mail2" class="form-select">
                    <option>naver.com</option>
                    <option>daum.net</option>
                    <option>gmail.com</option>
                    <option>nate.com</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-6">
              <label for="address" class="form-label">주소<span class="text-body-secondary"></span></label>
              <input type="text" class="form-control custom-width mb-custom" id="address2" placeholder="주소" required>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-6">
              <input type="text" class="form-control custom-width" id="address3" placeholder="상세주소" required>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-md-12">
              <label for="phone1" class="form-label">전화번호<span class="text-body-secondary"></span></label>
              <div class="d-flex">
                <select class="form-select custom-width" id="num1" required>
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="019">019</option>
                </select>
                <span class="mx-2">-</span>
                <input type="text" maxlength="4" size="4" name="phone2" class="form-control custom-width me-2" id="num2" required>
                <span class="mx-2">-</span>
                <input type="text" maxlength="4" size="4" name="phone3" class="form-control custom-width" id="num3" required>
              </div>
            </div>
          </div>
        </main>
      </div>
      <hr class="my-4">
      <h4 class="mb-3">결제정보(선택)</h4>
      <div class="my-3">
        <div class="form-check">
          <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
          <label class="form-check-label" for="credit">신용카드</label>
        </div>
        <div class="container">
          <div class="row my-3">
            <div class="col-md-6">
              <label for="card-type" class="form-label">카드 종류<span class="text-body-secondary"></span></label>
              <select class="form-select" id="card-type" required>
                <option value="KB">KB국민카드</option>
                <option value="SH">신한카드</option>
                <option value="HA">하나카드</option>
                <option value="RD">롯데카드</option>
                <option value="BC">BC카드</option>
                <option value="NH">NH농협카드</option>
                <option value="SS">삼성카드</option>
                <option value="HD">현대카드</option>
              </select>
            </div>
          </div>
          <div class="row gy-3 my-3">
            <div class="col-md-3">
              <label for="cc-name" class="form-label">카드 별명</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>
            <div class="col-md-6">
              <label for="cc-number" class="form-label">카드 번호</label>
              <div class="d-flex">
                <input type="text" maxlength="4" size="4" name="cc-number-1" class="form-control me-2" id="cc-number-1" required>
                <span class="mx-2">-</span>
                <input type="password" maxlength="4" size="4" name="cc-number-2" class="form-control me-2" id="cc-number-2" required>
                <span class="mx-2">-</span>
                <input type="password" maxlength="4" size="4" name="cc-number-3" class="form-control me-2" id="cc-number-3" required>
                <span class="mx-2">-</span>
                <input type="text" maxlength="4" size="4" name="cc-number-4" class="form-control" id="cc-number-4" required>
              </div>
            </div>
          </div>
          <div class="row gy-3 my-3">
            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">만기일</label>
              <div class="d-flex">
                <select class="form-select me-2" id="cc-expiration-year" required>
                  <option value="">년</option>
                  <option value="2024">2024</option>
                  <option value="2025">2025</option>
                  <option value="2026">2026</option>
                  <option value="2027">2027</option>
                  <option value="2028">2028</option>
                </select>
                <select class="form-select" id="cc-expiration-month" required>
                  <option value="">월</option>
                  <option value="01">01</option>
                  <option value="02">02</option>
                  <option value="03">03</option>
                  <option value="04">04</option>
                  <option value="05">05</option>
                  <option value="06">06</option>
                  <option value="07">07</option>
                  <option value="08">08</option>
                  <option value="09">09</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
              </div>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>
            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVC</label>
              <input type="text" maxlength="3" size="3" name="cvc-number" class="form-control me-2" id="cc-cvv" required pattern="\d{3}" inputmode="numeric">
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>
        </div>
        <div class="form-check">
          <input type="checkbox" class="form-check-input" id="save-info">
          <label class="form-check-label" for="save-info">기본결제정보로 저장합니다.</label>
        </div>
        <hr class="my-4">
        <div class="d-flex gap-2">
          <input type="button" class="btn btn-primary flex-fill" value="등록" onclick="register()">
          <input type="reset" class="btn btn-primary flex-fill" value="취소" onclick="reset()">
        </div>
      </div>
      <jsp:include page="footer.jsp" />
    </div>
    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="checkout.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  </body>
</html>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="../menu.jsp" %>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="ko" data-bs-theme="auto">
<head>
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <title>addProperty</title>
    <script>
    const districts = {
        서울시: [
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
        경기도: [
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

    function updateDistricts() {
        const city = document.getElementById('city').value;
        const districtSelect = document.getElementById('district');

        // 기존 옵션 삭제
        districtSelect.innerHTML = '<option value="">구/군 선택</option>';

        // 새로운 옵션 추가
        if (city && districts[city]) {
            districts[city].forEach(district => {
                const option = document.createElement('option');
                option.value = district.value;
                option.text = district.text;
                districtSelect.add(option);
            });
        }
    }
    </script>

    <style>
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
        .form-select, .btn {
            font-size: 0.875rem; /* 폰트 크기 조정 */
            padding: 0.25rem 0.5rem; /* 패딩 조정 */
            height: auto; /* 높이 자동 조정 */
        }
        .btn-outline-secondary {
            font-size: 0.875rem;
            padding: 0.25rem 0.5rem;
            height: auto;
        }
        .logout-btn {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>

    <link href="checkout.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary">
	<!-- 관리자 로그아웃 -->
	<div class="row align-items-md-strech">
		<div class="text-end">
			<a href="logout.jsp" class="btn btn-sm btn-success pull right">관리자 로그아웃</a>
		</div>
	</div>
	
	<fmt:setLocale value='<%=request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message">
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
    <form name="newProperty" action="./processAddproperty.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
      <div class="py-5 text-center">
        <h2><fmt:message key="title" /></h2>
      </div>
      <div class="container">
    <div class="container form-container">
        <div class="row my-3">
                <div class="row g-3 mb-3">
                    <div class="col-12">
                        <label class="form-label"><fmt:message key="name" /></label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="property Name" value="" required>
                    </div>
                </div>
                <div class="row g-3 mb-3">
                    <div class="col-12">
                        <label class="form-label"><fmt:message key="propertyID" /></label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="propertyId" id="propertyId" placeholder="propertyID" required>
                            <button class="btn btn-outline-secondary" type="button" id="propertyID-check">중복 검색</button>
                        </div>
                        <div class="invalid-feedback">
                            Your username is required.
                        </div>
                    </div>
                </div>
                <div class="row g-3 mb-3">
                    <div class="col-12">
                        <label for="cityselect" class="form-label"><fmt:message key="propertylocation" /></label>
                        <div class="d-flex">
                            <select class="form-select form-select-sm me-2" id="city" name="city" required onchange="updateDistricts()">
                                <option value=""><fmt:message key="cityselect" /></option>
                                <option value="서울시"><fmt:message key="seoul" /></option>
                                <option value="경기도"><fmt:message key="gyeonggi" /></option>
                            </select>
                            <select class="form-select form-select-sm me-2" id="district" name="district" required>
                                <option value=""><fmt:message key="districtselect" /></option>
                            </select>
<!--                             <button type="submit" class="btn btn-sm btn-outline-secondary">확인</button>  -->
                        </div>
                    </div>
                </div>
                <div class="row g-3 mb-3">
                    <div class="col-12">
                        <label for="condition" class="form-label"><fmt:message key="condition" /><span class="text-body-secondary"></span></label>
                        <div class="mt-2">
                            <div class="d-inline-block me-3">
                                <input type="radio" name="condition" value="매매" id="sale">
                                <label for="sale"><fmt:message key="sale" /></label>
                            </div>
                            <div class="d-inline-block me-3">
                                <input type="radio" name="condition" value="전세" id="jeonse">
                                <label for="jeonse"><fmt:message key="jeonse" /></label>
                            </div>
                            <div class="d-inline-block me-3">
                                <input type="radio" name="condition" value="월세/렌트" id="monthly">
                                <label for="monthly"><fmt:message key="monthly/rent" /></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-3 mb-3">
                    <div class="col-12">
                        <label for="kind" class="form-label"><fmt:message key="kind" /><span class="text-body-secondary"></span></label>
                        <div class="mt-2">
                            <div class="d-inline-block me-3">
                                <input type="radio" name="kind" value="아파트" id="rent">
                                <label for="apartment"><fmt:message key="apartment" /></label>
                            </div>
                            <div class="d-inline-block me-3">
                                <input type="radio" name="kind" value="상가" id="pre-sale">
                                <label for="shoppingdistrict"><fmt:message key="shoppingdistrict" /></label>
                            </div>
                            <div class="d-inline-block me-3">
                                <input type="radio" name="kind" value="주택/전원주택/상가주택" id="urgent-sale">
                                <label for="house/countryhouse/flatswithshops"><fmt:message key="house/countryhouse/flatswithshops" /></label>
                            </div>
                            <div class="d-inline-block me-3">
                                <input type="radio" name="kind" value="토지" id="urgent-sale">
                                <label for="ground"><fmt:message key="ground" /></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-3 mb-3">
                    <div class="col-6">
                        <label for="propertyprice" class="form-label"><fmt:message key="unitPrice" /><span class="text-body-secondary"></span></label>
                        <input type="text" class="form-control custom-width mb-custom" name="unitPrice" id="unitPrice" placeholder="price" required>
                    </div>
                </div>
                <div class="row g-3 mb-3">
                <div class="col-6">
                      <label for="area" class="form-label"><fmt:message key="area" /><span class="text-body-secondary"></span></label>
                      <input type="text" class="form-control custom-width mb-custom" id="area" name="area" placeholder="Land area / Total Land area" class="form-control">
                </div>
                </div>
                <div class="row g-3 mb-3">
                    <div class="col-6">
                        <label for="description" class="form-label"><fmt:message key="description" /><span class="text-body-secondary"></span></label>
                        <textarea name="description" cols="50" rows="2" class=form-control id="description" name="description" placeholder="100자 이상 입력"> </textarea>
                    </div>
                </div>
                <div class="col-6">
                      <label for="filename" class="form-label"><fmt:message key="image" /><span class="text-body-secondary"></span></label>
                      <input type="file" class="form-control custom-width mb-custom" name="filename" id="filename" class="form-control">
                </div>
                </div>
                <hr class="my-4">
                <div class="d-flex gap-2">
                    <input type="submit" class="btn btn-primary flex-fill" value="<fmt:message key="button" />" onclick="CheckAddProperty()">
                    <input type="reset" class="btn btn-primary flex-fill" value="취소">
                </div>
                <jsp:include page="footer.jsp" />
            </form>
        </div>
    </div>
    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="checkout.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </fmt:bundle>
</body>
</html>

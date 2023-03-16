<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<main class="main">
	<div class="container center">
		<div class="info__title">
			<h1 class="info__title-txt">CLEANER�� �Բ� �Ͻʽÿ�! ������ ��ģ ���Դϴ�!</h1>
		</div>
		<form action="../fileupload" method="POST" enctype="multipart/form-data">
			<div class="info__contents-table">
				<div class="item">
					<span class="info-txt">����</span>
					<input type="text" class="title-input title" name="title" placeholder="������ �Է� �� �ּ���.">
				</div>
				<div class="item">
					<span class="category">ī�װ�</span>
					<select name="category">
						<option value="bigbang">bigbang</option>
						<option value="classic fusion">classic fusion</option>
						<option value="deep sea">deep sea</option>
					</select>
				</div>
				<div class="item">
					<span>depth</span>
					<input type="text" name="depth" class="" placeholder="��� ���̸� �Է��ϼ���.">
				</div>
					<div class="item">
					<span>price</span>
					<input type="text" name="price" class="" placeholder="������ �Է��ϼ���.">
				</div>
					<div class="item">
					<span>image</span>
					<input type="file" name="file" class="" placeholder="��ǥ �̹����� ���ε��ϼ���.">
				</div>
			</div>
			<div class="info__contents-btns">
				<button class="btn confirm">ȸ������</button>
				<button type="reset">���</button>
			</div>
		</form>
	</div>

	</main>
	
	<script>
        
        $(".confirm").on("click", function() {
            console.log("QUERY!!!");
			if ($(".info-id").val() === "") {
				alert("���̵� �Է� �� �ּ���.");
                $('info-id').focus();
				return false;
			}else
			if ($(".info-pw").val() === "") {
				alert("��й�ȣ�� �Է� �� �ּ���.");
                $('info-pw').focus();
				return false;
			}else
			if ($(".info-pw-confirm").val() !== $(".info-pw").val()) {
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
                $('info-pw-confirm').focus();
				return false;
			}
		});       

	</script>

</body>
</html>


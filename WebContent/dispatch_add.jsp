﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>発送先登録画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/dispatch_add.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">

</style>
</head>
<body>
  <!-- 全体ラッパー -->
<div class="wrapper">
    <!-- ヘッダー //共通項目-->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
    <article class="guest_buy_wrapper">
      <section class="guest_buy">

        <h2 class="guest_buy_title">発送先の新規登録</h2>
        <div class="form_wrapper">
          <form action="DispatchAdd" method="post">
            <dl>
              <dt>氏名</dt>
                <dd>
                  <input type="text" size="40" placeholder="氏名を入力" name="name" pattern=".{1,}" />
                </dd>
            </dl>
            <dl>
              <dt>フリガナ</dt>
                <dd>
                  <input type="text" size="40" placeholder="フリガナを入力" name="kana" pattern="^([ァ-ン]{1,})$"  title="※カタカタのみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>郵便番号</dt>
                <dd>
                  <input type="text" size="40" maxlength="7" placeholder="郵便番号を入力" name="zipcode" pattern="^([0-9]{7})$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <dl>
              <dt>住所</dt>
                <dd>
                  <input type="text" size="40" placeholder="住所を入力" name="address" pattern=".{1,}"/>
                </dd>
            </dl>
            <dl>
              <dt>電話番号</dt>
                <dd>
                  <input type="tel" size="40" maxlength="11" placeholder="電話番号を入力" name="phone" pattern="^([0-9]{10,})$" title="※数字のみ入力できます"/>
                </dd>
            </dl>
            <div class="btn_next">
                  <input type="submit" name="act" value="" class="conf" >
            </div>
          </form>
        </div><!--form_wrapper終了-->
      </section>
    </article>
    <!--フッター　//共通項目-->
<%@ include file="footer.jsp" %>
</div>

</body>
</html>

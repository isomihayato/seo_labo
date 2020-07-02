$(".dropdown-item").on('click', (e) => {
  //ターゲットの内容をoutputとinput.hiddenに入れる
  const name = $(e.currentTarget).val();
  const id   = $(e.currentTarget).attr('id');

  console.log(name);
  console.log(id);
  $(".output").append(name);
  //dropdownから名前を削除
});

//resetボタンでoutput内にあるのをdropdownに追加。output,hiden削除

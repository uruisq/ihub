$(function(){
  // buttonがclickされたとき、変数に検索する値を代入
  $('#search_button').on('click', function(){
    var keyword = $('#search_area').val();
    // リクエストURLを設定する
    $.get('https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706?', {
      applicationId: gon.pon,
      keyword: keyword,
      hits: 1

    // 結果が帰ってきたらここでそれを受け取り、空でなければ順番に出力していく
    }, function(data){
      if (data.count > 0){
        // console.log(data);
        $('ul').empty();
        $.each(data.Items, function(i, item){
          var temp = $(`<b><a href="${item.Item.itemUrl}"><img src="${item.Item.mediumImageUrls[0].imageUrl}"><br>${item.Item.itemName}</a></b>`);
          var mono = $(`<b><a href="${item.Item.itemUrl}"><img src="${item.Item.mediumImageUrls[0].imageUrl}"><br>${item.Item.itemName}</a></b>`);
          $('ul').append(temp);
          $("#isbn").val(keyword);
          $("#code").val(mono.html());
        }) // each
      } // if
    }); // function(data)
  }); // clickイベント
}); // function
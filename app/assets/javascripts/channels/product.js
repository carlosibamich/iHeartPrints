App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data.comment.body);
    receivedComment = $('.alert-info');
    receivedComment.show();
    receivedComment.delay(2400).fadeOut(800);
    $('.ajax-comment-response').prepend(data.comment);
    $("#average-rating").attr('data-score', data.average_rating);
    refreshRating();
  },

  listen_to_comments: function() {
    return this.perform('listen', {
      product_id: $('[data-product-id]').data('product-id')
    });
  }
});

$(document).on('turbolinks:load', function() {
  App.product.listen_to_comments();
});

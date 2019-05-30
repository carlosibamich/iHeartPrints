App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    receivedComment = $('.alert.alert-info');
    receivedComment.show();
    receivedComment.delay(2400).fadeOut(800);
  }
});

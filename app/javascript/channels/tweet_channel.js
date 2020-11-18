import consumer from "./consumer"

consumer.subscriptions.create("TweetChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    const html = `<p>${data.content.text}</p>`;
    const tweets = document.getElementById('tweets');
    const newTweet = document.getElementById('tweet_text');
    tweets.insertAdjacentHTML('afterbegin', html);
    newTweet.value='';
  }
});

document.addEventListener('DOMContentLoaded', init, false);

/** 
* You can manipulate the video here
* For example: Uncomment the code below and in the index to get a Start/Stop button
*/
function init() {
  const rand = Math.random();
  const video_index = Math.floor(number_videos * rand);
  console.log(video_index);
  const vidPlayer = document.getElementById('videoPlayer');
  vidPlayer.innerHTML = `<source src="./goal/${video_index}" type="video/mp4">`;

  window.addEventListener('load', function() {
    console.log('loaded');
    vidPlayer.play();
  }, false);

  // const VP = document.getElementById('videoPlayer')
  // const VPToggle = document.getElementById('butt')

  // VPToggle.addEventListener('click', function() {
  //   if (vidPlayer.paused) vidPlayer.play()
  //   else vidPlayer.pause()
  // })
}

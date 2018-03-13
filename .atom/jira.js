const _ = window.require('lodash');
const cp = require('child_process');

let svg = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 212.53 72.82"><defs><style>.cls-1{fill:#fff;}.cls-2{fill:url(#linear-gradient);}.cls-3{fill:url(#linear-gradient-2);}</style><linearGradient id="linear-gradient" x1="54.46" y1="17.79" x2="39.75" y2="32.96" gradientUnits="userSpaceOnUse"><stop offset="0.18" stop-color="#fff" stop-opacity="0.4"/><stop offset="1" stop-color="#fff"/></linearGradient><linearGradient id="linear-gradient-2" x1="37.83" y1="35.62" x2="20.82" y2="52.16" xlink:href="#linear-gradient"/></defs><title>Jira_1-white</title><g id="Layer_2" data-name="Layer 2"><g id="White"><path class="cls-1" d="M69.82,0H35.23A15.61,15.61,0,0,0,50.84,15.61h6.37v6.15A15.61,15.61,0,0,0,72.82,37.36V3A3,3,0,0,0,69.82,0Z"/><path class="cls-2" d="M52.2,17.73H17.62A15.61,15.61,0,0,0,33.22,33.33h6.37v6.15A15.61,15.61,0,0,0,55.2,55.09V20.73A3,3,0,0,0,52.2,17.73Z"/><path class="cls-3" d="M34.58,35.46H0A15.61,15.61,0,0,0,15.61,51.06H22v6.15A15.61,15.61,0,0,0,37.58,72.82V38.46A3,3,0,0,0,34.58,35.46Z"/><path class="cls-1" d="M109,7.5H117V47.71c0,10.65-4.66,18-15.58,18a28.14,28.14,0,0,1-9.5-1.5V56.51a22.2,22.2,0,0,0,8.18,1.5c6.69,0,9-4,9-9.77Z"/><path class="cls-1" d="M131.4,4.42a4.94,4.94,0,0,1,5.28,5.28,5.28,5.28,0,1,1-10.56,0A4.94,4.94,0,0,1,131.4,4.42Zm-3.87,16.9h7.57v44h-7.57Z"/><path class="cls-1" d="M146.53,21.31h7.39v7.74c2.55-5.19,7-8.89,15.58-8.36v7.39c-9.68-1-15.58,1.94-15.58,11.26v26h-7.39Z"/><path class="cls-1" d="M205,57.39c-2.82,5.81-8.1,8.8-14.87,8.8-11.7,0-17.6-9.94-17.6-22.88,0-12.41,6.16-22.88,18.48-22.88,6.42,0,11.35,2.9,14,8.62V21.31h7.57v44H205Zm-12.85,1.76c6.78,0,12.85-4.31,12.85-14.08V41.55c0-9.77-5.54-14.08-12-14.08-8.54,0-12.94,5.63-12.94,15.84C180.06,53.87,184.28,59.15,192.12,59.15Z"/></g></g></svg>';

function onClick() {
  cp.exec("jira i | grep Progress | awk '{ print $1; }' | xargs", (error, stdout, stderr) => {
    let issues = stdout.split(' ');
    _.forEach(issues, issue => {
      atom.notifications.addInfo(`JIRA issue in progress: ${issue}`);
    });

  });
}

function addJira() {
  let statusBar = atom.workspace.getFooterPanels()[0].getItem();
  let element = document.createElement('a');
  element.innerHTML = svg;
  element.style.width = '35px';
  element.id = 'jira-icon';
  element.onclick = onClick;
  statusBar.rightPanel.appendChild(element);

}

module.exports = {
  addJira
};

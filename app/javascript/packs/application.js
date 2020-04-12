import "bootstrap";
import { openApply, closeApply } from '../components/apply';
import { scroll } from '../components/navbar'
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { hideMap } from '../components/hideMap';
import { dashboard } from '../components/dashboard';
import "../plugins/flatpickr";
import 'select2/dist/css/select2.css';
import { initSelect2 } from '../plugins/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';
import { showJobs} from '../components/showJobs';
import { stickyNavbar} from '../components/stickyNavbar';
import { openMessages } from '../components/inbox';
import { enable} from '../components/sign_up';

if (document.getElementById("open-apps")) {
  openMessages();
}

window.onscroll = () => {
  const nav = document.querySelector('#full-nav');
  if(window.scrollY <= 500) nav.classList.remove('scroll'); else nav.classList.add('scroll');
    const mobNav = document.querySelector('#mob-nav');
  if(window.scrollY <= 500) mobNav.classList.remove('scroll'); else mobNav.classList.add('scroll');
};

initSweetalert('#confirm-job', {
  title: "Done",
  text: "Your shift was successfully posted. You'll recieve applications soon!",
  icon: "success",
  buttons: false
});

initSweetalert('#employee-apply-sweetalert', {
  title: "Done",
  text: "Application sent. You'll hear back shortly!",
  icon: "success",
  buttons: false
});


initSelect2();
openApply();
closeApply();
initMapbox();
initAutocomplete();

enable();



const checkBox = document.querySelector(".user_employer");
const employerSvg = document.querySelector(".employer");
const employeeSvg = document.querySelector(".employee");

if (checkBox) {
  checkBox.addEventListener("click", () => {
    employerSvg.classList.toggle("full-opacity")
    employeeSvg.classList.toggle("full-opacity")
  })
}

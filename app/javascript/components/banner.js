import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Mister Cocktails 123", "Mister Cocktails 123"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };

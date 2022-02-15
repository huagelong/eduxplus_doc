const nav = require("./nav.js");
const htmlModules = require("./htmlModules.js");

// Theme Config
module.exports = {
  nav,
  sidebarDepth: 2,
  logo: "/img/logo.svg",
  repo: "trensy/eduxplus",
  searchMaxSuggestions: 10,
  lastUpdated: "上次更新",

  docsRepo: "trensy/eduxplus_home",
  docsDir: "docs",
  docsBranch: "master",
  editLinks: true,
  editLinkText: "帮助我们改善此页面！",

  // Vdoing Theme Config
  sidebar: { mode: "structuring", collapsable: false },

  updateBar: {
    showToArticle: false
  },

  category: false,
  tag: false,
  archive: true,

  author: {
    name: "Team Trensy",
    href: "https://github.com/trensy"
  },

  social: {
    icons: [
      {
        iconClass: "icon-github",
        title: "GitHub",
        link: "https://github.com/trensy"
      },
      {
        iconClass: "icon-gitee",
        title: "Gitee",
        link: "https://gitee.com/trensy"
      },
      {
        iconClass: "icon-youjian",
        title: "发邮件",
        link: "mailto:hpuwang@gmail.com"
      }
    ]
  },

  footer: {
    createYear: 2016,
    copyrightInfo: [
      '<a href="http://eduxplus.com" target="_blank" style="font-weight:bold">Team eduxplus</a>',
      ' | ',
      'Sponsored by <a href="https://www.jetbrains.com" target="_blank" style="font-weight:bold">JetBrains</a>',
      ' | ',
      '<a href="http://beian.miit.gov.cn/" target=_blank>sss</a>',
      '</p>'
    ].join('')
  },

  htmlModules
};

// nav
module.exports = [
  { text: '首页', link: '/' },
  {
    text: '前端',
    link: '/web/', //目录页链接，此处link是vdoing主题新增的配置项，有二级导航时，可以点击一级导航跳到目录页
    items: [
      { text: '学习笔记',
        items: [
          {
            text: '《ES6 教程》笔记',
            link: '/note/es6/',
          },
          {
            text: '《Git》学习笔记',
            link: '/note/git/',
          },
          {
            text: '《JavaScript教程》笔记',
            link: '/note/js/',
          },
        ]
      }

    ],
  },
  {
    text: '技术',
    link: '/technology/',
    items: [],
  },
  {
    text: '更多',
    link: '/more/',
    items: [
      { text: '面试', link: '' },
      { text: '心情杂货', link: '/pages/70cd74/' },
    ],
  },
  {
    text: '索引',
    link: '/archives/',
    items: [
      { text: '分类', link: '/categories/' },
      { text: '标签', link: '/tags/' },
      { text: '归档', link: '/archives/' },
    ],
  },
]

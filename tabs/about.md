---
layout: about
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_about

# image for page specific usage
img: ":about.jpg"
# publish date (used for seo)
# if not specified, site.time will be used.
#date: 2022-03-03 12:32:00 +0000

# for override items in _data/lang/[language].yml
#title: My title
#button_name: "My button"
# for override side_and_top_nav_buttons in _data/conf/main.yml
#icon: "fa fa-bath"

# seo
# if not specified, date will be used.
#meta_modify_date: 2022-03-03 12:32:00 +0000
# check the meta_common_description in _data/owner/[language].yml
#meta_description: ""

# optional
# please use the "image_viewer_on" below to enable image viewer for individual pages or posts (_posts/ or [language]/_posts folders).
# image viewer can be enabled or disabled for all posts using the "image_viewer_posts: true" setting in _data/conf/main.yml.
#image_viewer_on: true
# please use the "image_lazy_loader_on" below to enable image lazy loader for individual pages or posts (_posts/ or [language]/_posts folders).
# image lazy loader can be enabled or disabled for all posts using the "image_lazy_loader_posts: true" setting in _data/conf/main.yml.
#image_lazy_loader_on: true
# exclude from on site search
#on_site_search_exclude: true
# exclude from search engines
#search_engine_exclude: true
# to disable this page, simply set published: false or delete this file
#published: false
---

{%- comment -%} Please delete below and place your page content here {%- endcomment -%}

{%- include util/auto-content-generator.liquid -%}
{{ website_info_text_first }}

{{ website_info_text_second }}

<div id="github-profile-container">
    <p>Loading GitHub profile...</p>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const username = 'takaakiu';
    const container = document.getElementById('github-profile-container');

    fetch(`https://api.github.com/users/${username}`)
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => {
        // ここで表示したい情報をHTMLとして組み立てます
        const profileHtml = `
          <div style="display: flex; align-items: center; gap: 20px;">
            <img src="${data.avatar_url}" alt="GitHub Avatar" width="120" height="120" style="border-radius: 50%;">
            <div>
              <h3>${data.name} (<a href="${data.html_url}" target="_blank" rel="noopener">@${data.login}</a>)</h3>
              <p>${data.bio || ''}</p>
              <p>
                <strong>${data.followers}</strong> followers &middot; <strong>${data.following}</strong> following
              </p>
              <p>
                Public Repositories: <strong>${data.public_repos}</strong>
              </p>
            </div>
          </div>
        `;
        container.innerHTML = profileHtml;
      })
      .catch(error => {
        console.error('Error fetching GitHub profile:', error);
        container.innerHTML = '<p>Could not load GitHub profile at this time.</p>';
      });
  });
</script>

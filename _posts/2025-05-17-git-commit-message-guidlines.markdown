---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_git-commit-message-guidlines
title: Summary of Git Commit Message Guidelines!

# post specific
author: TakaakiU
category: developer
tags: [git]
img: ":post_pic1.jpg"

# publish date
date: 2025-05-17 01:23:53 +0000

# seo
#meta_modify_date: 2025-05-17 01:23:53 +0000
#meta_description: ""

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
#published: false
---

Since I frequently refer to [How to Write Git Commit Messages (2023 Version)](https://zenn.dev/itosho/articles/git-commit-message-2023), I decided to post this summary for easy reference.

Below is the beginning of the summarized content.

---

## Background and Motivation
- An article on commit message formats that I published a few years ago received an unexpectedly positive response.
- At that time, during the transition from Subversion to Git, the guidelines were developed based on trial and error.
- As development environments and philosophies evolve with the times, the intent is to share the optimal approach for writing commit messages as of now.

## Basic Format of Commit Messages
- Written based on **Semantic Commit Message**
    - **Format example:**  
        `<Type>: <Emoji> #<Issue Number> <Title>`
- **Example:**  
    `feat: ✨ #123 Implement login functionality`

## Meaning of Each Element and Recommended Guidelines
- **Type** 
    - Each type has a defined purpose, ensuring clear classification of the changes. 
    - Indicates the type of commit (e.g., `feat`, `fix`, `docs`, `chore`, `refactor`, `style`, `test`).
        Write a short prefix that immediately indicates the type of commit. Use the same categories as in [Semantic Commit Messages](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716).

        - **chore:**  
            Changes that do not affect production code, such as updates to task files or build configurations.

        - **docs:**  
            Documentation updates and changes.

        - **feat:**  
            Addition or modification of features aimed at end users.

        - **fix:**  
            Bug fixes that resolve issues impacting users.

        - **refactor:**  
            Code restructuring or refactoring changes that improve code quality without altering external behavior.

        - **style:**  
            Formatting and style changes (e.g., code indentation, fixing typos) that do not affect the functionality of production code.

        - **test:**  
            Additions or changes to test code without impacting production code.
- **Emoji**  
    - An emoji used to visually represent the commit type.
    - Inspired by tools like gitmoji, aiming for a more colorful expression.
- **Issue Number**  
    - Links the commit to a related issue, helping to clarify the reason (the "why") behind the change.
    - Although not mandatory, linking commits to issues is recommended whenever possible.
- **Title**  
    - Briefly summarizes the changes.
    - Aim for approximately 20–30 characters to keep it concise and clear.

## Other Considerations
- **Coordination with the Development Workflow**  
    - This approach assumes a development process driven by issues and pull/merge requests.
    - Since a commit message alone may not fully convey the "why," detailed background information should be provided via issues or PR descriptions.
- **Commit Granularity**  
    - It is preferable to have small, focused commits.
    - Merge commits or revert commits may follow a different set of guidelines.
- **Choice of Language**  
    - Depending on the team or project's practices, commit messages can be written in either Japanese or English.
- **Flexibility and Future Changes**  
    - Since the way commit messages are written evolves over time, there is always room for updating what is considered the “best approach” at any given moment.

## Summary
- Commit messages are a vital source of information that enhances the overall value of development history.
- By maintaining consistency and clarity and linking commits to issues, the intent and background behind code changes become apparent.
- Continually seeking and updating the optimal methods in line with evolving development environments is essential.

---

That concludes the summary.

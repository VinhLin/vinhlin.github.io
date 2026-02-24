+++
title = 'Search'
date = 2026-02-24T11:15:21+07:00
draft = true
+++

Công cụ tìm kiếm bài viết trên blog:

<link href="/_pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/_pagefind/pagefind-ui.js"></script>

<div id="search" style="margin-top: 20px;"></div>

<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        new PagefindUI({ 
            element: "#search", 
            showSubResults: true,
            pageSize: 10,
            translations: {
                placeholder: "Tìm kiếm bài viết...",
                clear_search: "Xóa",
                load_more: "Xem thêm kết quả",
                search_label: "Tìm kiếm",
                filters_label: "Lọc",
                zero_results: "Không tìm thấy nội dung cho: [query]",
                many_results: "Tìm thấy [count] kết quả cho: [query]",
                one_result: "Tìm thấy [count] kết quả cho: [query]",
                searching: "Đang tìm kiếm..."
            }
        });
    });
</script>

<style>
    /* Tùy chỉnh nhẹ để giao diện đồng bộ với theme Maverick */
    :root {
        --pagefind-ui-primary: #333;
        --pagefind-ui-text: #333;
        --pagefind-ui-background: #ffffff;
        --pagefind-ui-border: #eeeeee;
    }
    
    #search .pagefind-ui__result-link {
        color: #007bff;
        text-decoration: none;
    }

    #search .pagefind-ui__result-link:hover {
        text-decoration: underline;
    }
</style>
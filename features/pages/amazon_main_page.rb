class AmazonMain
    include BasePage


    def open_url(url)
        visit url
    end

    def search_item(item_name)
        sleep 5
        fill_in 'twotabsearchtextbox', with: item_name
        click_button 'nav-search-submit-button'
    end

end
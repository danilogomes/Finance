module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
<<<<<<< HEAD
    when /the new pagamentos page/
      new_pagamentos_path

    when /the new recebimentos page/
      new_recebimentos_path
=======
    when /the new categoria_do_recebimentos page/
      new_categoria_do_recebimentos_path

    when /the new forma_do_recebimentos page/
      new_forma_do_recebimentos_path
>>>>>>> 5089436a14802a7e5dcc10b0fad9118965b046a4

    when /the new tipo_de_recebimentos page/
      new_tipo_de_recebimentos_path

    when /the new recebimentos page/
      new_recebimento_path
      
    when /the new users page/
      new_users_path

	when /the user page/
	  profile_path

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)

=begin

Exercise 4: Create class HtmlToText has following instance methods:

get_html(html): Input a html as string, HTML tags only are <div> </div> and <br> anything else as text.
show_view: show text as html view.

Input:,

<div>Hello Ruby</div><<<br>>><div>Will</div> be</div>Fun<p></p>

Output:

Hello Ruby
<<
>>
Will
beFun<p></p>

=end

class HtmlToText
  @html

  def get_html(html)
    @html = html
  end

  def show_view
    @html.gsub!('<br>', '<div>')
    @html.gsub!('</br>', '<div>')
    a = @html.split('<div>')
    a.map! do |x| 
      if x.include?('</div>') 
        x.split('</div>')
      else
        x
      end
    end
    a.each do |x|
      if x.class == Array
        if x.length == 2
          p x[0].strip
          p x[1].strip
        else
          p x[0].strip
          p x[1..x.length-1].join.strip
        end
      else
        p x.strip
      end
    end
  end
end

a = HtmlToText.new
a.get_html('<div>Hello Ruby</div><<<br>>><div>Will</div> be</div>Fun<p></p>')
a.show_view

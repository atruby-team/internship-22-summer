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
  end

end

a = HtmlToText.new
a.get_html('<div>Hello Ruby</div><<<br>>><div>Will</div> be</div>Fun<p></p>')
p a.show_view

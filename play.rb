require 'yaml'
speakers = YAML.load_file('_data/speakers.yml')

def html(name, twitter, picture)
  <<-HTML
                            <tr>
                                <td align="left" style="padding: 0px 40px 40px 40px;">

                                    <table width="180" align="left">
                                        <tr>
                                          <td width="70">
                                            <img src="http://scotlandcss.com/assets/email/#{picture}" width="62" height="62" style="margin:0; padding:0; border:none; display:block;" border="0" alt="">
                                          </td>
                                          <td width="110">

                                            <table width="" cellpadding="0" cellspacing="0" border="0">
                                              <tr>
                                                <td align="left" style="font-family: sans-serif; font-size:14px; line-height:20px; color:#222222; font-weight:bold;" class="body-text">
                                                  <p style="font-family: 'Montserrat', sans-serif; font-size:14px; line-height:20px; color:#222222; font-weight:bold; padding:0; margin:0;" class="body-text">#{name}</p>
                                                </td>
                                              </tr>
                                              <tr>
                                                <td align="left" style="font-family: sans-serif; font-size:14px; line-height:20px; color:#666666;" class="body-text">
                                                  <p style="font-family: sans-serif; font-size:14px; line-height:20px; color:#666666; padding:0; margin:0;" class="body-text">#{twitter}</p>
                                                </td>
                                              </tr>
                                            </table>

                                          </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>

HTML
end



speakers.each do |speaker_data|
  name = speaker_data["name"]
  twitter = speaker_data["twitter"]
  picture = speaker_data["image"]

  puts html(name, twitter, picture)
end

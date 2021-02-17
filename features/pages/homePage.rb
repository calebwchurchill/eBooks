require_relative '../actions/Click.rb'
require_relative '../actions/Find.rb'
require_relative '../actions/Type.rb'
require_relative '../actions/Scroll.rb'

class HomePage

  #Local Variables
   @@userIdField = "org.nypl.labs.OpenEbooks.app:id/authBasicUserField"
   @@PassWordId = "org.nypl.labs.OpenEbooks.app:id/authBasicPassField"
   @@logWithClever = "org.nypl.labs.OpenEbooks.app:id/authOAuthIntermediaryLogoImage"
    
   #instances of classes
   @@aFind = FindElements.new
   @@aClick = ClickElements.new
   @@aType = TypeTextClass.new
   @@aScroll = ScrollPage.new
   
   def verifyHomePage
     @@aClick.clickXpath("//android.widget.FrameLayout[@content-desc='Catalog']/android.widget.ImageView")     
	   @@aFind.findId(@@userIdField)     
   end
   
   def sendUser(userid)
     @userId = userid
     @@aType.sendTypeId(@@userIdField, @userId)     
   end
   
   def scrollToXpath(start, finish)
     #@@aClick.clickHeaderLabel("High School")
     @elstart = start
     @elend = finish
     sleep 2
     @@aScroll.scrollToName(@elstart, @elend)

   end

   def scrollToDescription()
     #@@aClick.clickHeaderLabel("High School")
     
     sleep 2
     @@aScroll.scrollToId("org.nypl.labs.OpenEbooks.app:id/bookDetailDescriptionTitle", "org.nypl.labs.OpenEbooks.app:id/bookDetailDescriptionText")

   end

   def clickLabel(labelname)
     @labelname = labelname
     @@aClick.clickHeaderLabel(labelname)    
   end

   def clickId(idname)
     @idname = idname
     @@aClick.clickId(idname)    
   end

   def clickAccessibility(idname)
     @idname = idname
     @@aClick.clickAccessibilityId(idname)    
   end

   def sendPin(pword)
     @pword = pword
     @@aType.sendTypeId(@@PassWordId,@pword)     
   end
   
   def ClickLogin
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/authBasicLogin")
     sleep 15     
   end

   def clickCover
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/coverImage")
   end

   def openCatalog
     @@aClick.clickXpath("//android.widget.FrameLayout[@content-desc='Catalog']/android.widget.ImageView")
   end

   def openListView
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/feedLaneTitle")
   end

   def browseSpecificCategory
     #@@aClick.clickHeaderLabel("High School")
     @@aClick.clickHeaderLabel("Biographies")
   end

   def accessBookDetail(details)
     @details = details
     @@aClick.clickAccessibilityId(@details)
   end

   def logout()
     @@aClick.clickAccessibilityId("Settings")
     #@@aClick.clickXpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.TextView[2]
#{}")
     #@@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/accountTitle")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/authBasicLogin")
     sleep 6
   end
      
   def verifyEbook
     @@aClick.clickAccessibilityId("Catalog")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/feedLaneTitle")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/feedLaneTitle")
     sleep 5
   end
   
  def clickLogClever
     @@aClick.clickId(@@logWithClever)
   end
end
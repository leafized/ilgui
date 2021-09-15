/*
*    Infinity Loader :: The Best GSC IDE!
*
*    Project : ImGuiIL
*    Author : 
*    Game : Call of Duty: WWII
*    Description : An empty canvas for anything you want!
*    Date : 9/15/2021 5:43:33 AM
*
*/

ilgui_controls()
{
    ilgui              = false;
    self.ilguiscroller = 0;
    
    self endon("stop_imgui");
    self endon("node_complete");
    for(;;)
    {
        //if(!isDefined(self.ilgui))
        if(self adsbuttonpressed() && self meleebuttonpressed())
        {
            ilgui = true;
            self thread ilguidemo();
             if(!isDefined(self.ilgui["scrollbar"]))
             self.ilgui["scrollbar"] = self createRectangle("TOPLEFT", "CENTER",self.ilgui["BaseX"],self.ilgui["BaseY"] + 20,2,16,self.ilgui["foreground"],"white",3,1,true);
 
        }
        if( ilgui == true )
        {
            
            if( self AdsButtonPressed() || self AttackButtonPressed() )
            {
                if(self AdsButtonPressed())
                {
                    self.ilguiscroller --;
                    if(self.ilguiscroller < 0)
                    self.ilguiscroller = self.ilguiscroller["optCount"];
                    
                }
                if(self AttackButtonPressed())
                {
                    self.ilguiscroller ++;
                    if(self.ilguiscroller > self.ilgui["optCount"])
                    self.ilguiscroller = 0;
                    
                }
                self.ilgui["scrollbar"] hudMoveY( self.ilgui["BaseY"] + (self.ilguiscroller * 20)  ,.15);
                wait .3;
            }
            if(self UseButtonPressed())
            {
                self notify("window"+"_func_"+self.ilguiscroller);//this will let our functions call!
            }
        }
        wait .05;//quick wait to have responsive ui
    }
}
/*
*    Infinity Loader :: The Best GSC IDE!
*
*    Project : ImGuiIL
*    Author : 
*    Game : Call of Duty: WWII
*    Description : An empty canvas for anything you want!
*    Date : 8/30/2021 12:39:25 AM
*
*/

ilgui_createtabs( window , index , text, function )//button widget!
{
    if(!isDefined(window) || !isDefined(index) ) return;//we can't continue if we have no caller information!
    if(!isDefined(self.ilgui["optCount"])) self.ilgui["optCount"] = 1;//set it to 1 if we have a option!
    else self.ilgui["optCount"]++;//we need to add to the current count of huds!
    
    self.ilgui["opt"+self.ilgui["optCount"]] = self createText("default", 1, "TOPLEFT", "CENTER",self.ilgui["BaseX"] + 6 , self.ilgui["BaseY"] + (20 * index) + 20, self.ilgui["optCount"] + 1,1,text, (1,1,1)); 
    self.ilgui["optBg"+self.ilgui["optCount"]] =  self createRectangle("TOPLEFT", "CENTER",self.ilgui["BaseX"] + 4 , self.ilgui["BaseY"] + (20 * index) + 20, text.size * 8, 16,self.ilgui["foreground"],"white",self.ilgui["optCount"],.6);
    self.ilgui["opt"+self.ilgui["optCount"]].foreground = true;
   
    
    self.ilgui["BackgroundHud"] hudScaleOverTime(.01, self.ilgui["BackgroundHud"].width , ( index * 20 ) + 40);//needs to resize the background, but isn't?
    self waittill(window+"_func_"+index);//we want to call the function once we notify to call the function!
    if(!isDefined(function)) return;
    else self thread [[function]]();
}


ilgui_createbutton( window , index , text, function )//button widget!
{
    if(!isDefined(window) || !isDefined(index) ) return;//we can't continue if we have no caller information!
    if(!isDefined(self.ilgui["optCount"])) self.ilgui["optCount"] = 1;//set it to 1 if we have a option!
    else self.ilgui["optCount"]++;//we need to add to the current count of huds!
    
    self.ilgui["opt"+self.ilgui["optCount"]] = self createText("default", 1, "TOPLEFT", "CENTER",self.ilgui["BaseX"] + 6 , self.ilgui["BaseY"] + (20 * index) + 20, self.ilgui["optCount"] + 1,1,text, (1,1,1)); 
    self.ilgui["optBg"+self.ilgui["optCount"]] =  self createRectangle("TOPLEFT", "CENTER",self.ilgui["BaseX"] + 4 , self.ilgui["BaseY"] + (20 * index) + 20, text.size * 8, 16,self.ilgui["foreground"],"white",self.ilgui["optCount"],.6);
    self.ilgui["opt"+self.ilgui["optCount"]].foreground = true;
   
    
    self.ilgui["BackgroundHud"] hudScaleOverTime(.01, self.ilgui["BackgroundHud"].width , ( index * 20 ) + 40);//needs to resize the background, but isn't?
    self waittill(window+"_func_"+index);//we want to call the function once we notify to call the function!
    if(!isDefined(function)) return;
    else self thread [[function]]();
}

ilgui_createcheckbox( window , index , text, function , variable )//button widget!
{
    if(!isDefined(window) || !isDefined(index) ) return;//we can't continue if we have no caller information!
    if(!isDefined(self.ilgui["optCount"])) self.ilgui["optCount"] = 1;//set it to 1 if we have a option!
    else self.ilgui["optCount"]++;//we need to add to the current count of huds!
    
    self.ilgui["opt"+self.ilgui["optCount"]] = self createText("default", 1, "TOPLEFT", "CENTER",self.ilgui["BaseX"] + 20 , self.ilgui["BaseY"] + (20 * index) + 20, self.ilgui["optCount"] + 1,1,text, (1,1,1)); 
    self.ilgui["optBg"+self.ilgui["optCount"]] =  self createRectangle("TOPLEFT", "CENTER",self.ilgui["BaseX"] + 4 , self.ilgui["BaseY"] + (20 * index) + 20, 14, 14,self.ilgui[variable ? "foreground" : "background"],"white",self.ilgui["optCount"],.6);
    self.ilgui["opt"+self.ilgui["optCount"]].foreground = true;
    //createText(font,fontScale,align,relative,x,y,sort,alpha,text,color);
    self.ilgui["BackgroundHud"] hudScaleOverTime(.01, self.ilgui["BackgroundHud"].width , ( index * 20 ) + 40);//needs to resize the background, but isn't?
        self waittill(window+"_func_"+index);//we want to call the function once we notify to call the function!
    if(!isDefined(function)) return;
    else self thread [[function]]();
}

ilgui_createslider( window , index , text, function , array )//button widget!
{
    if(!isDefined(window) || !isDefined(index) ) return;//we can't continue if we have no caller information!
    if(!isDefined(self.ilgui["optCount"])) self.ilgui["optCount"] = 1;//set it to 1 if we have a option!
    else self.ilgui["optCount"]++;//we need to add to the current count of huds!
    
    self.ilgui["opt"+self.ilgui["optCount"]] = self createText("default", 1, "TOPLEFT", "CENTER",self.ilgui["BaseX"] + 6 , self.ilgui["BaseY"] + (20 * index) + 20, self.ilgui["optCount"] + 1,1,text, (1,1,1)); 
    self.ilgui["optBg"+self.ilgui["optCount"]] =  self createRectangle("TOPLEFT", "CENTER",self.ilgui["BaseX"] + (text.size * 6 ) + 4 , self.ilgui["BaseY"] + (20 * index) + 20, 100, 16,self.ilgui[ "background"],"white",self.ilgui["optCount"],.6);
    self.ilgui["optBg2"+self.ilgui["optCount"]] =  self createRectangle("TOPLEFT", "CENTER",self.ilgui["BaseX"] + (text.size * 6 ) + 4 , self.ilgui["BaseY"] + (20 * index) + 20, 10, 16,self.ilgui[  "foreground"],"white",self.ilgui["optCount"]+1,.6);
    self.ilgui["opt"+self.ilgui["optCount"]].foreground = true;
    //createText(font,fontScale,align,relative,x,y,sort,alpha,text,color);
    self.ilgui["BackgroundHud"] hudScaleOverTime(.01, self.ilgui["BackgroundHud"].width , ( index * 20 ) + 40);//needs to resize the background, but isn't?
        self waittill(window+"_func_"+index);//we want to call the function once we notify to call the function!
    if(!isDefined(function)) return;
    else self thread [[function]]();
}

ilgui_createwindow( x , y , width, color , window )
{
    self ilgui_getTheme();
    self.ilgui["BackgroundHud"] = self createRectangle("TOPLEFT", "CENTER",x,y,width,20,self.ilgui["background"],"white",0,.7);
    self.ilgui["TitleHud"] = self createRectangle("TOPLEFT", "CENTER",x+2,y, width - 4, 16, self.ilgui["foreground"], "white", 1, 1);
    
    self.ilgui[window+"Title"] = self createText("default", 1.2,"TOPLEFT", "CENTER",x  - (width/2) , y ,2,1,window,(1,1,1));
    self.ilgui[window+"Title"].foreground = true;
    self.ilgui["BaseX"] = x;//we need this for other huds!
    self.ilgui["BaseY"] = y;//we need this for other huds!
    self.ilgui["BaseMaxX"] = x + width;
    //self.ilgui["BackgroundHud"] thread autoResizeWindow( width );//we are going to manually adjust the size, and then implement a setting.
}

ilgui_getTheme()
{
    self.ilgui = [];
    self.ilgui["background"] = divideColor(100,100,100);
    self.ilgui["foreground"] = divideColor(220,70, 30);
    self.ilgui["secondary"] = divideColor(40, 40, 170);
    self.ilgui["autosize"] = true;
}
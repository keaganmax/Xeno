local a={}local b=game:GetService("ContentProvider")local function c(d)local e,f=d:find("%.")local g=d:sub(f+1)if g:sub(-1)~="/"then g=g.."/"end;return g end;local d=b.BaseUrl;local g=c(d)local h=string.format("https://games.%s",g)local i=string.format("https://apis.rcs.%s",g)local j=string.format("https://apis.%s",g)local k=string.format("https://accountsettings.%s",g)local l=string.format("https://gameinternationalization.%s",g)local m=string.format("https://locale.%s",g)local n=string.format("https://users.%s",g)local o={GAME_URL=h,RCS_URL=i,APIS_URL=j,ACCOUNT_SETTINGS_URL=k,GAME_INTERNATIONALIZATION_URL=l,LOCALE_URL=m,ROLES_URL=n}setmetatable(a,{__newindex=function(p,q,r)end,__index=function(p,r)return o[r]end})return a
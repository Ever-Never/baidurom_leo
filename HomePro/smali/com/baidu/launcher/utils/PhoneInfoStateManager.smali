.class public Lcom/baidu/launcher/utils/PhoneInfoStateManager;
.super Ljava/lang/Object;
.source "PhoneInfoStateManager.java"


# static fields
.field public static final DENSITY_DEFAULT:I = 0xa0

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_TV:I = 0xd5

.field public static final DENSITY_XHIGH:I = 0x140

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/baidu/launcher/utils/PhoneInfoStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getBuildVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "aContext"

    .prologue
    .line 196
    const/high16 v0, 0x7f06

    invoke-static {p0, v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getContentFromIni(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "aContext"

    .prologue
    .line 200
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "aContext"

    .prologue
    .line 52
    const v0, 0x7f060003

    invoke-static {p0, v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getContentFromIni(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 302
    const-string v1, "system/etc/baidu/BaiduLauncher/configuration/cfgstring.ini"

    invoke-static {p0, v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getContentFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, res:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 304
    const v1, 0x7f060001

    invoke-static {p0, v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getContentFromIni(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .end local v0           #res:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getContentFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "aContext"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 310
    const/4 v5, 0x0

    .line 312
    .local v5, iniFile:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 314
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    .end local v5           #iniFile:Ljava/io/InputStream;
    .local v6, iniFile:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 324
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "gb2312"

    invoke-direct {v8, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 329
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :goto_0
    const-string v2, ""

    .line 330
    .local v2, content:Ljava/lang/String;
    const/4 v7, 0x0

    .line 332
    .local v7, tmp:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    sget-object v8, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v3

    .line 339
    .local v3, e:Ljava/io/IOException;
    sget-object v8, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #e:Ljava/io/IOException;
    :goto_2
    move-object v5, v6

    .line 341
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #iniFile:Ljava/io/InputStream;
    .end local v7           #tmp:Ljava/lang/String;
    .restart local v5       #iniFile:Ljava/io/InputStream;
    :cond_0
    :goto_3
    return-object v2

    .line 318
    :catch_1
    move-exception v3

    .line 319
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 325
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iniFile:Ljava/io/InputStream;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #iniFile:Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 326
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v7       #tmp:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 337
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private static getContentFromIni(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "aContext"
    .parameter "aResId"

    .prologue
    .line 270
    const/4 v4, 0x0

    .line 271
    .local v4, iniFile:Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "gb2312"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 279
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :goto_0
    const-string v2, ""

    .line 280
    .local v2, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 282
    .local v5, tmp:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    sget-object v6, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v3

    .line 289
    .local v3, e:Ljava/io/IOException;
    sget-object v6, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v3           #e:Ljava/io/IOException;
    :goto_2
    return-object v2

    .line 275
    .end local v2           #content:Ljava/lang/String;
    .end local v5           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 276
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v5       #tmp:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 287
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static getPhoneDensityDpi(Landroid/content/Context;)I
    .locals 3
    .parameter "aContext"

    .prologue
    .line 295
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 296
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v0, v2

    check-cast v0, Landroid/view/WindowManager;

    .line 298
    .local v0, manager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 299
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "aContext"

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 160
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 161
    .local v1, packInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 162
    .local v3, versioncode:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 165
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #versioncode:I
    :goto_0
    return-object v4

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 165
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "aContext"

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 148
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 149
    .local v1, packInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 153
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnectivity(Landroid/content/Context;)Z
    .locals 6
    .parameter "aContext"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 228
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 230
    .local v1, manager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v3

    .line 233
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 234
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 236
    .local v2, type:I
    if-ne v4, v2, :cond_2

    move v3, v4

    .line 237
    goto :goto_0

    .line 238
    :cond_2
    if-nez v2, :cond_0

    move v3, v4

    .line 239
    goto :goto_0
.end method

.method public static isWifiConnection(Landroid/content/Context;)Z
    .locals 6
    .parameter "aContext"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 248
    .local v1, manager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 251
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 252
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 254
    .local v2, type:I
    if-ne v4, v2, :cond_0

    move v3, v4

    .line 255
    goto :goto_0
.end method


# virtual methods
.method public getDevicever()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 89
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 262
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 266
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Landroid/content/Context;)[D
    .locals 7
    .parameter "aContext"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 178
    .local v1, locationManager:Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 179
    .local v0, location:Landroid/location/Location;
    const/4 v3, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_0

    .line 182
    .local v2, locationdata:[D
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 184
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    aput-wide v3, v2, v6

    .line 192
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :cond_1
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 189
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    aput-wide v3, v2, v6

    goto :goto_0

    .line 179
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "aContext"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, result:Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 83
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 84
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public getOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "aContext"

    .prologue
    .line 95
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 97
    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, simoperator:Ljava/lang/String;
    sget-object v10, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simperator :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "46001"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "46006"

    aput-object v11, v6, v10

    .line 103
    .local v6, liantong:[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "46000"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "46002"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "46007"

    aput-object v11, v9, v10

    .line 106
    .local v9, yidong:[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "46003"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "46005"

    aput-object v11, v2, v10

    .line 110
    .local v2, dianxin:[Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 136
    :goto_0
    return-object v10

    .line 114
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x5

    :try_start_0
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 120
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 121
    .local v1, data:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01e2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 115
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #data:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v3

    .line 116
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 120
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    .end local v1           #data:Ljava/lang/String;
    :cond_3
    move-object v0, v9

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v1, v0, v4

    .line 126
    .restart local v1       #data:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01e1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 125
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 130
    .end local v1           #data:Ljava/lang/String;
    :cond_5
    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_7

    aget-object v1, v0, v4

    .line 131
    .restart local v1       #data:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01e3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 130
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 136
    .end local v1           #data:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01e5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public getPhoneBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 140
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 142
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "aContext"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 75
    .local v0, display:Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSysterVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "aContext"

    .prologue
    .line 204
    const-string v8, ""

    .line 205
    .local v8, resul:Ljava/lang/String;
    const-string v11, "activity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 206
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 207
    .local v7, mi:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 208
    const-wide/16 v9, 0x0

    .line 209
    .local v9, totalmem:J
    const-string v6, "/proc/meminfo"

    .line 213
    .local v6, memfile:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, localFileReader:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v11, 0x2000

    invoke-direct {v2, v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 215
    .local v2, buffer:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, memcontent:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 217
    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, arrayofstring:[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int/lit16 v11, v11, 0x400

    int-to-long v9, v11

    .line 219
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1           #arrayofstring:[Ljava/lang/String;
    .end local v2           #buffer:Ljava/io/BufferedReader;
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .end local v5           #memcontent:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, e:Ljava/io/IOException;
    sget-object v11, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

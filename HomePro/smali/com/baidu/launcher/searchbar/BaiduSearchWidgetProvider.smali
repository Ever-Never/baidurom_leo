.class public Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaiduSearchWidgetProvider.java"


# static fields
.field public static final EXTRA_OTHER:Ljava/lang/String; = "other"

.field public static final EXTRA_SRC:Ljava/lang/String; = "src"

.field private static final IMAGE_SEARCH_FIRST_LAUNCH:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.camera_search_first_launch"

.field private static final IMAGE_SEARCH_NOT_FOUND:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.camera_search_not_found"

.field private static final IMAGE_SEARCH_UNAVAILABLE:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.camera_search_unavailable"

.field private static final KEY_IMAGE_SEARCH_FIRST_LAUNCH:Ljava/lang/String; = "image_search_first_launch"

.field public static final LAUNCHER_SRC:Ljava/lang/String; = "Launcher"

.field private static final PACKAGE_NOT_FOUND:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.package_not_found"

.field private static final SEARCHBOX_UNAVAILABLE:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.searchbox_unavailable"

.field private static final VOICE_SEARCH_NOT_FOUND:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.voice_search_not_found"

.field private static final VOICE_SEARCH_UNAVAILABLE:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.voice_search_unavailable"

.field private static final WIDGET_UPDATE:Ljava/lang/String; = "com.baidu.BaiduSearchWidgetProider.widget_update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private addImageSearch(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 0
    .parameter "views"
    .parameter "context"

    .prologue
    .line 128
    return-void
.end method

.method private getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, appAvailable:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    if-eqz v0, :cond_d

    .line 234
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 238
    :goto_1
    return-object v4

    .line 156
    :pswitch_0
    const-string v4, "com.baiyi_mobile.search"

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->packageStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, status:I
    if-ne v3, v6, :cond_1

    .line 158
    const/4 v0, 0x1

    .line 159
    const-string v4, "com.baiyi_mobile.search"

    const-string v5, "com.baiyi_mobile.search.MainActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 162
    :cond_1
    if-ne v3, v5, :cond_2

    .line 163
    const-string v4, "com.baidu.BaiduSearchWidgetProider.searchbox_unavailable"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 164
    :cond_2
    if-nez v3, :cond_0

    .line 165
    const-string v4, "com.baidu.BaiduSearchWidgetProider.package_not_found"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 169
    .end local v3           #status:I
    :pswitch_1
    const-string v4, "com.baiyi_mobile.search"

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->packageStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 170
    .restart local v3       #status:I
    if-ne v3, v6, :cond_3

    .line 171
    const/4 v0, 0x1

    .line 172
    const-string v4, "com.baiyi_mobile.search"

    const-string v5, "com.baiyi_mobile.search.MainActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 175
    :cond_3
    if-ne v3, v5, :cond_4

    .line 176
    const-string v4, "com.baidu.BaiduSearchWidgetProider.searchbox_unavailable"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 177
    :cond_4
    if-nez v3, :cond_0

    .line 178
    const-string v4, "com.baidu.BaiduSearchWidgetProider.package_not_found"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 183
    .end local v3           #status:I
    :pswitch_2
    const-string v4, "ro.not_prebuilt_assistant"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_7

    .line 184
    const-string v4, "com.baidu.voiceassistant"

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->packageStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 185
    .restart local v3       #status:I
    if-ne v3, v6, :cond_5

    .line 186
    const/4 v0, 0x1

    .line 187
    const-string v4, "com.baidu.voiceassistant"

    const-string v5, "com.baidu.voiceassistant.appwidget.AppWidgetTargetActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v4, "src"

    const-string v5, "Launcher"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v4, "other"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->getTopActivityPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";ver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 191
    :cond_5
    if-ne v3, v5, :cond_6

    .line 192
    const-string v4, "com.baidu.BaiduSearchWidgetProider.voice_search_unavailable"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 193
    :cond_6
    if-nez v3, :cond_0

    .line 194
    const-string v4, "com.baidu.BaiduSearchWidgetProider.voice_search_not_found"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 197
    .end local v3           #status:I
    :cond_7
    const-string v4, "com.baidu.searchbox"

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->packageStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 198
    .restart local v3       #status:I
    if-ne v3, v6, :cond_8

    .line 199
    const/4 v0, 0x1

    .line 200
    const-string v4, "com.baidu.searchbox"

    const-string v5, "com.baidu.searchbox.VoiceSearchActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v4, "src"

    const-string v5, "Launcher"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v4, "other"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->getTopActivityPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";ver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 204
    :cond_8
    if-ne v3, v5, :cond_9

    .line 205
    const-string v4, "com.baidu.BaiduSearchWidgetProider.voice_search_unavailable"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 206
    :cond_9
    if-nez v3, :cond_0

    .line 207
    const-string v4, "com.baidu.BaiduSearchWidgetProider.voice_search_not_found"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 213
    .end local v3           #status:I
    :pswitch_3
    const-string v4, "com.baidu.imagesearch"

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->packageStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 214
    .restart local v3       #status:I
    if-ne v3, v6, :cond_b

    .line 215
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 216
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "image_search_first_launch"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 217
    const/4 v0, 0x0

    .line 218
    const-string v4, "com.baidu.BaiduSearchWidgetProider.camera_search_first_launch"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 220
    :cond_a
    const/4 v0, 0x1

    .line 221
    const-string v4, "com.baidu.imagesearch"

    const-string v5, "com.baidu.imagesearch.client.CameraActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v4, "entrance"

    const-string v5, "3"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 225
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_b
    if-ne v3, v5, :cond_c

    .line 226
    const-string v4, "com.baidu.BaiduSearchWidgetProider.camera_search_unavailable"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 227
    :cond_c
    if-nez v3, :cond_0

    .line 228
    const-string v4, "com.baidu.BaiduSearchWidgetProider.camera_search_not_found"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 238
    .end local v3           #status:I
    :cond_d
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private packageStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 246
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_2

    .line 248
    const/4 v3, 0x2

    .line 253
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v3

    .line 250
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getTopActivityPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 257
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 258
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 259
    .local v2, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 260
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 261
    .local v1, rti:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 265
    .end local v1           #rti:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 45
    const-string v9, "com.baidu.BaiduSearchWidgetProider.widget_update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 46
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030085

    invoke-direct {v7, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 48
    .local v7, views:Landroid/widget/RemoteViews;
    const v9, 0x7f0801b0

    invoke-direct {p0, p1, v11}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 50
    const v9, 0x7f0801b1

    invoke-direct {p0, p1, v11}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 55
    invoke-direct {p0, v7, p1}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->addImageSearch(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 59
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 60
    const-string v9, "appWidgetIds"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 62
    .local v0, appWidgetIds:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_1

    .line 63
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    aget v10, v0, v4

    invoke-virtual {v9, v10, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v0           #appWidgetIds:[I
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v7           #views:Landroid/widget/RemoteViews;
    :cond_0
    const-string v9, "com.baidu.BaiduSearchWidgetProider.package_not_found"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    const v9, 0x7f0c0218

    invoke-static {p1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    return-void

    .line 70
    :cond_2
    const-string v9, "com.baidu.BaiduSearchWidgetProider.voice_search_not_found"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 71
    const v9, 0x7f0c0219

    invoke-static {p1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 73
    :cond_3
    const-string v9, "com.baidu.BaiduSearchWidgetProider.searchbox_unavailable"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 74
    const v9, 0x7f0c021a

    invoke-static {p1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 76
    :cond_4
    const-string v9, "com.baidu.BaiduSearchWidgetProider.voice_search_unavailable"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 77
    const v9, 0x7f0c021b

    invoke-static {p1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 79
    :cond_5
    const-string v9, "com.baidu.BaiduSearchWidgetProider.camera_search_not_found"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 80
    const v9, 0x7f0c021c

    invoke-static {p1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 82
    :cond_6
    const-string v9, "com.baidu.BaiduSearchWidgetProider.camera_search_unavailable"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 83
    const v9, 0x7f0c021d

    invoke-static {p1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 85
    :cond_7
    const-string v9, "com.baidu.BaiduSearchWidgetProider.camera_search_first_launch"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v5, searchIntent:Landroid/content/Intent;
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v9, "com.baidu.imagesearch"

    const-string v10, "com.baidu.imagesearch.client.CameraActivity"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v9, "entrance"

    const-string v10, "3"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 94
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "image_search_first_launch"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 96
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v9, "com.baidu.home2"

    const-string v10, "com.baidu.launcher.searchbar.BaiduSearchWidgetProvider"

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v2, cn:Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v8

    .line 98
    .local v8, widgetIds:[I
    invoke-virtual {p0, p1, v1, v8}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030085

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 135
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0801b0

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    const v2, 0x7f0801b1

    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    invoke-direct {p0, v1, p1}, Lcom/baidu/launcher/searchbar/BaiduSearchWidgetProvider;->addImageSearch(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 146
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

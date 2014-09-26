.class public Lcom/baidu/launcher/ubc/ApplistUpload;
.super Ljava/lang/Object;
.source "ApplistUpload.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkForApplistUpload(Landroid/content/Context;)V
    .locals 20
    .parameter "aContext"

    .prologue
    .line 21
    sget-boolean v16, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasApplistUpload:Z

    if-nez v16, :cond_1

    .line 22
    new-instance v2, Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    invoke-direct {v2}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;-><init>()V

    .line 23
    .local v2, builder:Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    const-wide/32 v16, 0x1005001

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->setMetricId(J)V

    .line 24
    const/4 v8, 0x0

    .line 25
    .local v8, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .line 26
    .local v11, packageName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 28
    .local v15, versionName:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v14, target:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 31
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v9, intent:Landroid/content/Intent;
    const-string v16, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 34
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-short v3, v0

    .line 36
    .local v3, count:S
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 37
    .local v7, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 39
    const/16 v16, 0x1

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v12, v11, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41
    :catch_0
    move-exception v5

    .line 42
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 47
    .local v10, len:I
    add-int/lit8 v16, v10, -0x2

    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, cuid:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    .line 51
    invoke-virtual {v2, v3}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendSHORT(S)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    .line 52
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    .line 54
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 55
    .local v13, pref:Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/baidu/yi/sdk/ubc/UploadClient;->doUpload(Landroid/content/Context;Lcom/baidu/yi/sdk/ubc/MetricBuilder;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 56
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "applist_upload"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    .end local v2           #builder:Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .end local v3           #count:S
    .end local v4           #cuid:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #len:I
    .end local v11           #packageName:Ljava/lang/String;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v13           #pref:Landroid/content/SharedPreferences;
    .end local v14           #target:Ljava/lang/StringBuilder;
    .end local v15           #versionName:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 58
    .restart local v2       #builder:Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .restart local v3       #count:S
    .restart local v4       #cuid:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #len:I
    .restart local v11       #packageName:Ljava/lang/String;
    .restart local v12       #pm:Landroid/content/pm/PackageManager;
    .restart local v13       #pref:Landroid/content/SharedPreferences;
    .restart local v14       #target:Ljava/lang/StringBuilder;
    .restart local v15       #versionName:Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "applist_upload"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

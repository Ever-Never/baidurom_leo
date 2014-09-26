.class public Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduApplistInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/launcher/data/item/ListItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field aFirstInstallTime:J

.field bFirstInstallTime:J

.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "pm"

    .prologue
    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->sCollator:Ljava/text/Collator;

    .line 1179
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 1180
    return-void
.end method


# virtual methods
.method public final compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I
    .locals 10
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1183
    iget v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v8, :cond_5

    iget v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v8, :cond_5

    .line 1185
    iget-boolean v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v6, :cond_1

    move v3, v4

    .line 1229
    :cond_0
    :goto_0
    return v3

    .line 1186
    :cond_1
    iget-boolean v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v6, :cond_2

    iget-boolean v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_0

    .line 1187
    :cond_2
    iget-boolean v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v6, :cond_0

    .line 1188
    :cond_3
    iget-wide v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    iget-wide v8, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    move v3, v4

    goto :goto_0

    .line 1189
    :cond_4
    iget-wide v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    iget-wide v8, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_0

    move v3, v5

    goto :goto_0

    .line 1192
    :cond_5
    iget v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v8, :cond_6

    iget v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v7, :cond_6

    move v3, v4

    .line 1194
    goto :goto_0

    .line 1195
    :cond_6
    iget v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v7, :cond_7

    iget v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v8, :cond_7

    move v3, v5

    .line 1197
    goto :goto_0

    .line 1198
    :cond_7
    iget v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v7, :cond_0

    iget v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v6, v7, :cond_0

    .line 1201
    :try_start_0
    iget-boolean v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v6, :cond_8

    move v3, v4

    goto :goto_0

    .line 1202
    :cond_8
    iget-boolean v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v6, :cond_9

    iget-boolean v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_9

    move v3, v5

    goto :goto_0

    .line 1203
    :cond_9
    iget-boolean v6, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v6, :cond_0

    .line 1204
    :cond_a
    sget-object v6, Lcom/baidu/launcher/utils/Constant;->sComponentOrder:Ljava/util/HashMap;

    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v3, v0

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1205
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$800()J

    move-result-wide v6

    sget-object v8, Lcom/baidu/launcher/utils/Constant;->sComponentOrder:Ljava/util/HashMap;

    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v3, v0

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->aFirstInstallTime:J

    .line 1211
    :goto_1
    sget-object v6, Lcom/baidu/launcher/utils/Constant;->sComponentOrder:Ljava/util/HashMap;

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v3, v0

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1212
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$800()J

    move-result-wide v6

    sget-object v8, Lcom/baidu/launcher/utils/Constant;->sComponentOrder:Ljava/util/HashMap;

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v3, v0

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->bFirstInstallTime:J

    .line 1218
    :goto_2
    iget-wide v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->aFirstInstallTime:J

    iget-wide v8, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->bFirstInstallTime:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_e

    move v3, v4

    .line 1219
    goto/16 :goto_0

    .line 1207
    :cond_b
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v3, v0

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1209
    .local v1, pia:Landroid/content/pm/PackageInfo;
    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->aFirstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1224
    .end local v1           #pia:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 1226
    :cond_c
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v4, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 1214
    :cond_d
    :try_start_1
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v3, v0

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1216
    .local v2, pib:Landroid/content/pm/PackageInfo;
    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->bFirstInstallTime:J

    goto :goto_2

    .line 1220
    .end local v2           #pib:Landroid/content/pm/PackageInfo;
    :cond_e
    iget-wide v3, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->aFirstInstallTime:J

    iget-wide v6, p0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->bFirstInstallTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v3, v3, v6

    if-gez v3, :cond_c

    move v3, v5

    .line 1221
    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1171
    check-cast p1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;->compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I

    move-result v0

    return v0
.end method

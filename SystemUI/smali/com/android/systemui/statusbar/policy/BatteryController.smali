.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final BATTERY_PRE:Ljava/lang/String; = "stat_sys_battery_"

.field private static final CHARGEBATTERY_PRE:Ljava/lang/String; = "stat_sys_battery_charge_anim"

.field private static final DBG:Z = false

.field private static final STATUSBAR_THEME_PATH:Ljava/lang/String; = "com.android.systemui/res/drawable"

.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"

.field private static final THEME_ROOT_PATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files/"


# instance fields
.field private final STYLE_CHANGED:Ljava/lang/String;

.field private final STYLE_KEY:Ljava/lang/String;

.field private final STYLE_NORMAL:I

.field private final STYLE_NUM:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIcon:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mLevel:I

.field private mNumIconsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NumBatteryView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugged:Z

.field private mPluggedStatus:I

.field private mPreLevel:I

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->STYLE_NORMAL:I

    .line 45
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->STYLE_NUM:I

    .line 46
    const-string v1, "battery_icon_style"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->STYLE_KEY:Ljava/lang/String;

    .line 47
    const-string v1, "com.android.systemui.battery_icon_style_change"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->STYLE_CHANGED:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNumIconsViews:Ljava/util/ArrayList;

    .line 65
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedStatus:I

    .line 66
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPreLevel:I

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.android.systemui.battery_icon_style_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_icon_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    .line 84
    return-void
.end method

.method private getDensityQualifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 230
    .local v0, densityDpi:I
    sparse-switch v0, :sswitch_data_0

    .line 239
    const-string v1, "/"

    :goto_0
    return-object v1

    .line 232
    :sswitch_0
    const-string v1, "-mdpi/"

    goto :goto_0

    .line 234
    :sswitch_1
    const-string v1, "-hdpi/"

    goto :goto_0

    .line 236
    :sswitch_2
    const-string v1, "-xhdpi/"

    goto :goto_0

    .line 238
    :sswitch_3
    const-string v1, "-ldpi/"

    goto :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
    .end sparse-switch
.end method

.method private isExists(IZ)Z
    .locals 5
    .parameter "level"
    .parameter "isCharge"

    .prologue
    .line 201
    if-ltz p1, :cond_3

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.baidu.thememanager.ui/files/com.android.systemui/res/drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getDensityQualifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, resPre:Ljava/lang/String;
    const/4 v1, 0x0

    .line 204
    .local v1, fileLevel:I
    if-nez p1, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 211
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_2

    const-string v3, "stat_sys_battery_charge_anim"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    const/4 v3, 0x1

    .line 221
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileLevel:I
    .end local v2           #resPre:Ljava/lang/String;
    :goto_2
    return v3

    .line 207
    .restart local v1       #fileLevel:I
    .restart local v2       #resPre:Ljava/lang/String;
    :cond_0
    rem-int/lit8 v3, p1, 0x5

    if-nez v3, :cond_1

    move v1, p1

    goto :goto_0

    .line 208
    :cond_1
    div-int/lit8 v3, p1, 0x5

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v1, v3, 0x5

    goto :goto_0

    .line 211
    :cond_2
    const-string v3, "stat_sys_battery_"

    goto :goto_1

    .line 221
    .end local v1           #fileLevel:I
    .end local v2           #resPre:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public addNumIconView(Lcom/android/systemui/statusbar/policy/NumBatteryView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNumIconsViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method

.method public getIconViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, action:Ljava/lang/String;
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.android.systemui.battery_icon_style_change"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 120
    :cond_0
    const-string v11, "com.android.systemui.battery_icon_style_change"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 121
    const-string v11, "battery_icon_style"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    .line 123
    :cond_1
    const-string v11, "level"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPreLevel:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 124
    .local v7, level:I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPreLevel:I

    .line 125
    const-string v11, "plugged"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedStatus:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 126
    .local v9, pluggedStatus:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedStatus:I

    .line 127
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedStatus:I

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    .line 128
    .local v8, plugged:Z
    :goto_0
    if-eqz v8, :cond_3

    const v6, 0x7f020158

    .line 131
    .local v6, icon:I
    :goto_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 132
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 138
    .local v1, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 140
    .local v10, v:Landroid/widget/ImageView;
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0077

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    if-nez v11, :cond_4

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 127
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v6           #icon:I
    .end local v8           #plugged:Z
    .end local v10           #v:Landroid/widget/ImageView;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 128
    .restart local v8       #plugged:Z
    :cond_3
    const v6, 0x7f02013e

    goto :goto_1

    .line 144
    .restart local v1       #N:I
    .restart local v4       #i:I
    .restart local v6       #icon:I
    .restart local v10       #v:Landroid/widget/ImageView;
    :cond_4
    const/16 v11, 0x8

    goto :goto_3

    .line 146
    .end local v10           #v:Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNumIconsViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNumIconsViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/NumBatteryView;

    .line 149
    .local v10, v:Lcom/android/systemui/statusbar/policy/NumBatteryView;
    invoke-virtual {v10, v7, v8}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->setImageLevel(IZ)V

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0077

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->setVisibility(I)V

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 152
    :cond_6
    const/16 v11, 0x8

    goto :goto_5

    .line 154
    .end local v10           #v:Lcom/android/systemui/statusbar/policy/NumBatteryView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 157
    .local v10, v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0c001c

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 161
    .end local v10           #v:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 162
    .local v3, cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v3, v7, v8}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_7

    .line 165
    .end local v1           #N:I
    .end local v3           #cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #icon:I
    .end local v7           #level:I
    .end local v8           #plugged:Z
    .end local v9           #pluggedStatus:I
    :cond_9
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    return-void
.end method

.method public updateBatteryIcon(Ljava/lang/String;)Z
    .locals 11
    .parameter "flag"

    .prologue
    const v10, 0x7f0c0077

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 172
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    invoke-direct {p0, v4, v8}, Lcom/android/systemui/statusbar/policy/BatteryController;->isExists(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    :goto_0
    return v5

    .line 173
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    if-eqz v4, :cond_1

    const v1, 0x7f020158

    .line 174
    .local v1, drawableRes:I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 176
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 177
    .local v3, v:Landroid/widget/ImageView;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 179
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v4, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    if-nez v4, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    .end local v0           #N:I
    .end local v1           #drawableRes:I
    .end local v2           #i:I
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_1
    const v1, 0x7f02013e

    goto :goto_1

    .restart local v0       #N:I
    .restart local v1       #drawableRes:I
    .restart local v2       #i:I
    .restart local v3       #v:Landroid/widget/ImageView;
    :cond_2
    move v4, v6

    .line 181
    goto :goto_3

    .line 183
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNumIconsViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNumIconsViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NumBatteryView;

    .line 186
    .local v3, v:Lcom/android/systemui/statusbar/policy/NumBatteryView;
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    invoke-virtual {v3, v4, v8}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->setImageLevel(IZ)V

    .line 187
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v4, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I

    if-ne v4, v7, :cond_4

    move v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->setVisibility(I)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move v4, v6

    .line 189
    goto :goto_5

    .line 191
    .end local v3           #v:Lcom/android/systemui/statusbar/policy/NumBatteryView;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 192
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_6

    .line 193
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 194
    .local v3, v:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v6, 0x7f0c001c

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v3           #v:Landroid/widget/TextView;
    :cond_6
    move v5, v7

    .line 197
    goto/16 :goto_0
.end method

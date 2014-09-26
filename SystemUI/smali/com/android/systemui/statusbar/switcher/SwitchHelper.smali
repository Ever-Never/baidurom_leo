.class public Lcom/android/systemui/statusbar/switcher/SwitchHelper;
.super Ljava/lang/Object;
.source "SwitchHelper.java"


# static fields
.field public static DEFAULT_HIDE_KEYS:[I = null

.field public static DEFAULT_HIDE_PREF_VALUE:Ljava/lang/String; = null

.field public static DEFAULT_SHOW_KEYS:[I = null

.field public static DEFAULT_SHOW_PREF_VALUE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_SHOW_SIZE:I = 0x0

.field public static final DELIMITE:Ljava/lang/String; = ":"

.field public static final EDIT_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.switcher.show_panel"

.field public static final KEY_AIRPLANE:B = 0x1t

.field public static final KEY_BLUETOOTH:B = 0x2t

.field public static final KEY_BRIGHTNESS:B = 0x3t

.field public static final KEY_BRIGHTNESS_SEEKBAR:B = 0x15t

.field public static final KEY_DATA:B = 0x4t

.field public static final KEY_DATA_SLOT:B = 0x14t

.field public static final KEY_FLASHLIGHT:B = 0xct

.field public static final KEY_GPS:B = 0x5t

.field public static final KEY_MORE:B = 0x0t

.field public static final KEY_NIGHTMODE:B = 0xbt

.field public static final KEY_POWEROFF:B = 0xdt

.field public static final KEY_PREF_HIDE:Ljava/lang/String; = "key_pref_hide"

.field public static final KEY_PREF_SHOW:Ljava/lang/String; = "key_pref_show"

.field public static final KEY_PROTECT_EYE:B = 0x16t

.field public static final KEY_QR_CODE:B = 0x13t

.field public static final KEY_REBOOT:B = 0x11t

.field public static final KEY_ROTATION:B = 0x6t

.field public static final KEY_SAVE_POWER:B = 0x12t

.field public static final KEY_SCREENLOCK:B = 0xet

.field public static final KEY_SCREENSHOT:B = 0x7t

.field public static final KEY_SERACH:B = 0xat

.field public static final KEY_SILENT:B = 0xft

.field public static final KEY_SYNC:B = 0x8t

.field public static final KEY_TIP_MASK:Ljava/lang/String; = "tip_mask"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_WIFI:B = 0x9t

.field public static final KEY_WIFI_TEHTER:B = 0x10t

.field public static final LANDSCAPE_COLUMN:I = 0x4

.field public static final LANDSCAPE_ROM:I = 0x3

.field private static PACKAGE_COMPONENT:[Ljava/lang/String; = null

.field public static final PANEL_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.switcher.show_panel"

.field public static final PORTRAIT_COLUMN:I = 0x3

.field public static final PORTRAIT_ROM:I = 0x4

.field public static final SWITCH_BAIDU_SERACH_PACKAGE:Ljava/lang/String; = "com.baidu.searchbox"

.field public static final SWITCH_CLICK_SERACH_PACKAGE:Ljava/lang/String; = "com.baidu.clicksearch"

.field public static final SWITCH_FLASHLIGHT_PACKAGE:Ljava/lang/String; = "com.baidu.flashlight"

.field public static final SWITCH_SIZE:I = 0xc

.field public static final SYSTEMUI_PREFERENCE_NAME:Ljava/lang/String; = "com.android.systemui_preferences"

.field public static final TYPE_HIDE:I = 0x1

.field public static final TYPE_SHOW:I = 0x0

.field public static final UPDATE_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.switcher.update"

.field public static mEditMode:Z = false

.field public static mPanelMode:Z = false

.field private static sInstance:Lcom/android/systemui/statusbar/switcher/SwitchHelper; = null

.field private static final version:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_KEYS:[I

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_KEYS:[I

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.baidu.flashlight"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.baidu.clicksearch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.searchbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->PACKAGE_COMPONENT:[Ljava/lang/String;

    .line 89
    sput-boolean v3, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    .line 90
    sput-boolean v3, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mPanelMode:Z

    .line 97
    sget-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_KEYS:[I

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_SIZE:I

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->sInstance:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    return-void

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->initDefaultSwitchList(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->checkPreferencesVersion(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public static createTracker(Landroid/content/Context;I)Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 161
    :pswitch_0
    new-instance v0, Lcom/android/systemui/statusbar/switcher/MoreTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/MoreTracker;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 119
    :pswitch_1
    new-instance v0, Lcom/android/systemui/statusbar/switcher/AirplaneTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/AirplaneTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :pswitch_2
    new-instance v0, Lcom/android/systemui/statusbar/switcher/BluetoothTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/BluetoothTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 123
    :pswitch_3
    new-instance v0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 125
    :pswitch_4
    new-instance v0, Lcom/android/systemui/statusbar/switcher/DataTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/DataTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 127
    :pswitch_5
    new-instance v0, Lcom/android/systemui/statusbar/switcher/GPSTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/GPSTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 129
    :pswitch_6
    new-instance v0, Lcom/android/systemui/statusbar/switcher/RotationTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/RotationTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :pswitch_7
    new-instance v0, Lcom/android/systemui/statusbar/switcher/Screenshot;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/Screenshot;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :pswitch_8
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SyncTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SyncTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :pswitch_9
    new-instance v0, Lcom/android/systemui/statusbar/switcher/WifiTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/WifiTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 137
    :pswitch_a
    new-instance v0, Lcom/android/systemui/statusbar/switcher/WordTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/WordTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :pswitch_b
    new-instance v0, Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 141
    :pswitch_c
    new-instance v0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :pswitch_d
    new-instance v0, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/PowerOffTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :pswitch_e
    new-instance v0, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/ScreenLockTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 147
    :pswitch_f
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SilentTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SilentTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 149
    :pswitch_10
    new-instance v0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 151
    :pswitch_11
    new-instance v0, Lcom/android/systemui/statusbar/switcher/RebootTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/RebootTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 153
    :pswitch_12
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 155
    :pswitch_13
    new-instance v0, Lcom/android/systemui/statusbar/switcher/QRCodeTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/QRCodeTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 157
    :pswitch_14
    new-instance v0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 159
    :pswitch_15
    new-instance v0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    sget-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->sInstance:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->sInstance:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    .line 113
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->sInstance:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    return-object v0
.end method

.method private hasKey(Landroid/content/Context;II)Z
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "type"

    .prologue
    .line 471
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferencesList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 472
    .local v2, prefList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 473
    .local v0, hasKey:Z
    const/4 v1, 0x0

    .line 474
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 475
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 476
    const/4 v0, 0x1

    .line 480
    :cond_0
    return v0

    .line 474
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initDefaultSwitchList(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->generatSwitchList(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_PREF_VALUE:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->generatSwitchList(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_PREF_VALUE:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private initSharedPre(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 3
    .parameter "share"
    .parameter "context"

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string v1, "key_pref_show"

    sget-object v2, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    const-string v1, "key_pref_hide"

    sget-object v2, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string v1, "version"

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v1, "tip_mask"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->checkPackageInstall(Landroid/content/Context;)V

    .line 345
    return-void
.end method

.method private insertSwitch(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "index"
    .parameter "key"
    .parameter "type"

    .prologue
    .line 462
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferencesList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 463
    .local v0, prefList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 466
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 467
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferencesList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 468
    return-void
.end method

.method private replaceSwitch(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "oldKey"
    .parameter "newKey"
    .parameter "type"

    .prologue
    .line 450
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferencesList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 451
    .local v1, prefList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 452
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 457
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferencesList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 459
    return-void

    .line 452
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addSwitchItemPreference(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "switchKey"

    .prologue
    const/4 v6, 0x1

    .line 390
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;I)[I

    move-result-object v4

    .line 391
    .local v4, showPrefs:[I
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;I)[I

    move-result-object v1

    .line 392
    .local v1, hidePrefs:[I
    const/4 v0, 0x0

    .line 393
    .local v0, alreadyHas:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 394
    aget v5, v4, v2

    if-ne p2, v5, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 393
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 398
    aget v5, v1, v2

    if-ne p2, v5, :cond_2

    .line 399
    const/4 v0, 0x1

    .line 397
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    :cond_3
    if-nez v0, :cond_5

    .line 402
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [I

    .line 403
    .local v3, newPrefs:[I
    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 404
    aget v5, v1, v2

    aput v5, v3, v2

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 406
    :cond_4
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aput p2, v3, v5

    .line 407
    invoke-virtual {p0, p1, v3, v6}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferences(Landroid/content/Context;[II)V

    .line 409
    .end local v3           #newPrefs:[I
    :cond_5
    return-void
.end method

.method public checkPackageInstall(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 413
    .local v7, pm:Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->PACKAGE_COMPONENT:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 415
    .local v6, packageItem:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v2

    .line 417
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchKey(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->handlePackageRemoved(Landroid/content/Context;I)V

    goto :goto_1

    .line 422
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #packageItem:Ljava/lang/String;
    :cond_0
    const/16 v8, 0x14

    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->handlePackageRemoved(Landroid/content/Context;I)V

    .line 424
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 426
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, mWifiRegexs:[Ljava/lang/String;
    array-length v8, v5

    if-nez v8, :cond_1

    .line 429
    const/16 v8, 0x10

    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->handlePackageRemoved(Landroid/content/Context;I)V

    .line 431
    :cond_1
    return-void
.end method

.method checkPreferencesVersion(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, -0x1

    .line 313
    const-string v3, "com.android.systemui_preferences"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 314
    .local v2, share:Landroid/content/SharedPreferences;
    const-string v3, "version"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, oldVersion:I
    if-le v9, v1, :cond_1

    .line 318
    if-eq v1, v5, :cond_0

    if-ge v1, v6, :cond_2

    .line 319
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->initSharedPre(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    invoke-direct {p0, p1, v6, v7}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->hasKey(Landroid/content/Context;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    invoke-direct {p0, p1, v5, v6, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->insertSwitch(Landroid/content/Context;III)V

    .line 325
    const/16 v3, 0x16

    invoke-direct {p0, p1, v6, v3, v7}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->replaceSwitch(Landroid/content/Context;III)V

    .line 329
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "version"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 327
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/16 v3, 0x16

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->insertSwitch(Landroid/content/Context;III)V

    goto :goto_1
.end method

.method public createSwitchList(Landroid/content/Context;)[Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    .locals 5
    .parameter "context"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->checkPackageInstall(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;)[I

    move-result-object v2

    .line 184
    .local v2, preferences:[I
    if-nez v2, :cond_1

    .line 185
    const/4 v3, 0x0

    .line 194
    :cond_0
    return-object v3

    .line 187
    :cond_1
    array-length v1, v2

    .line 189
    .local v1, len:I
    new-array v3, v1, [Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    .line 190
    .local v3, result:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    aget v4, v2, v0

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->createTracker(Landroid/content/Context;I)Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    move-result-object v4

    aput-object v4, v3, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createSwitchList(Landroid/content/Context;I)[Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    .locals 5
    .parameter "context"
    .parameter "position"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->checkPackageInstall(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;I)[I

    move-result-object v2

    .line 199
    .local v2, preferences:[I
    if-nez v2, :cond_1

    .line 200
    const/4 v3, 0x0

    .line 207
    :cond_0
    return-object v3

    .line 202
    :cond_1
    array-length v1, v2

    .line 203
    .local v1, len:I
    new-array v3, v1, [Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    .line 204
    .local v3, result:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    aget v4, v2, v0

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->createTracker(Landroid/content/Context;I)Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    move-result-object v4

    aput-object v4, v3, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public generatSwitchList(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 166
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v2, sbf:Ljava/lang/StringBuffer;
    sget-object v1, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_KEYS:[I

    .line 168
    .local v1, keyArr:[I
    if-nez p1, :cond_2

    .line 169
    sget-object v1, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_KEYS:[I

    .line 173
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 174
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 175
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 176
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v0           #i:I
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 171
    sget-object v1, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_KEYS:[I

    goto :goto_0

    .line 179
    .restart local v0       #i:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSwitchKey(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    .line 434
    const/4 v0, -0x1

    .line 435
    .local v0, key:I
    if-nez p1, :cond_0

    move v1, v0

    .line 446
    .end local v0           #key:I
    .local v1, key:I
    :goto_0
    return v1

    .line 438
    .end local v1           #key:I
    .restart local v0       #key:I
    :cond_0
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    const/16 v0, 0xc

    :cond_1
    :goto_1
    move v1, v0

    .line 446
    .end local v0           #key:I
    .restart local v1       #key:I
    goto :goto_0

    .line 440
    .end local v1           #key:I
    .restart local v0       #key:I
    :cond_2
    const-string v2, "com.baidu.clicksearch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    const/16 v0, 0xa

    goto :goto_1

    .line 442
    :cond_3
    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    const/16 v0, 0x13

    goto :goto_1
.end method

.method public getSwitchPreferences(Landroid/content/Context;)[I
    .locals 12
    .parameter "context"

    .prologue
    .line 211
    const-string v10, "com.android.systemui_preferences"

    const/4 v11, 0x4

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 212
    .local v5, share:Landroid/content/SharedPreferences;
    const-string v10, "key_pref_show"

    sget-object v11, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, showPrefValue:Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, showKeys:[Ljava/lang/String;
    array-length v7, v6

    .line 215
    .local v7, showKeysLen:I
    const-string v10, "key_pref_hide"

    sget-object v11, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, hidePrefValue:Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, hideKeys:[Ljava/lang/String;
    array-length v1, v0

    .line 218
    .local v1, hideKeysLen:I
    add-int v10, v7, v1

    new-array v9, v10, [I

    .line 219
    .local v9, values:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 220
    aget-object v10, v6, v3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_0
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 223
    add-int v10, v7, v4

    aget-object v11, v0, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v10

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    :cond_1
    return-object v9
.end method

.method public getSwitchPreferences(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 229
    const-string v6, "com.android.systemui_preferences"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    .local v3, share:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 231
    .local v2, result:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 232
    const-string v6, "key_pref_show"

    sget-object v7, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    :goto_0
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    :cond_0
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 247
    :cond_1
    :goto_1
    return-object v5

    .line 233
    :cond_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 234
    const-string v6, "key_pref_hide"

    sget-object v7, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 236
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 241
    :cond_4
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, split:[Ljava/lang/String;
    array-length v1, v4

    .line 243
    .local v1, len:I
    new-array v5, v1, [I

    .line 244
    .local v5, values:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 245
    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getSwitchPreferencesList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const-string v6, "com.android.systemui_preferences"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 252
    .local v4, share:Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 253
    .local v3, result:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 254
    const-string v6, "key_pref_show"

    sget-object v7, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    :goto_0
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 261
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    :cond_1
    :goto_1
    return-object v2

    .line 255
    :cond_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 256
    const-string v6, "key_pref_hide"

    sget-object v7, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_HIDE_PREF_VALUE:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 258
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 263
    :cond_4
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, split:[Ljava/lang/String;
    array-length v1, v5

    .line 265
    .local v1, len:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 267
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getTipMask(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 348
    const-string v2, "com.android.systemui_preferences"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 349
    .local v1, share:Landroid/content/SharedPreferences;
    const-string v2, "tip_mask"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, result:I
    return v0
.end method

.method public handlePackageRemoved(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "switchKey"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferencesList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 363
    .local v5, showPrefList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferencesList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 364
    .local v0, hidePrefList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 365
    .local v2, inShow:Z
    const/4 v1, 0x0

    .line 366
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 367
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 368
    const/4 v2, 0x1

    .line 372
    :cond_0
    if-eqz v2, :cond_3

    .line 373
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 374
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 375
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    :cond_1
    invoke-virtual {p0, p1, v5, v7}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferencesList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 386
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferencesList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 387
    return-void

    .line 366
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 378
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 380
    .local v4, key:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p2, :cond_4

    .line 381
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public putSwitchPreferences(Landroid/content/Context;[II)V
    .locals 8
    .parameter "context"
    .parameter "prefs"
    .parameter "type"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_1

    .line 275
    aget v6, p2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 276
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 277
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 281
    .local v2, endIndex:I
    invoke-virtual {v0, v2, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 283
    const-string v6, "com.android.systemui_preferences"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 285
    .local v5, share:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 286
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p3, :cond_2

    const-string v4, "key_pref_show"

    .line 287
    .local v4, key:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void

    .line 286
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    const-string v4, "key_pref_hide"

    goto :goto_1
.end method

.method public putSwitchPreferencesList(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 8
    .parameter "context"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 294
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 296
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 300
    .local v2, endIndex:I
    invoke-virtual {v0, v2, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 302
    const-string v6, "com.android.systemui_preferences"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 304
    .local v5, share:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p3, :cond_2

    const-string v4, "key_pref_show"

    .line 306
    .local v4, key:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    return-void

    .line 305
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    const-string v4, "key_pref_hide"

    goto :goto_1
.end method

.method public setTipMask(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 354
    const-string v2, "com.android.systemui_preferences"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 356
    .local v1, share:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "tip_mask"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    return-void
.end method

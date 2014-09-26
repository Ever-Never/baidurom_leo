.class public Lcom/baidu/launcher/utils/DefaultConfigurationHelper;
.super Ljava/lang/Object;
.source "DefaultConfigurationHelper.java"


# static fields
.field public static final DEFAULT_APP_ICON_SIZE:Ljava/lang/String; = "app_icon_size"

.field public static final DEFAULT_HOME_ICON_LINE_NUM:Ljava/lang/String; = "home_icon_number"

.field public static final DEFAULT_LAUNCHER_APPLICATION_BOX_TEXT_SIZE:Ljava/lang/String; = "launcher_application_box_text"

.field public static final DEFAULT_LAUNCHER_LINE_NUM:Ljava/lang/String; = "launcher_icon_number"

.field public static final DEFAULT_LAUNCHER_LINE_NUM_LAND:Ljava/lang/String; = "launcher_icon_number_land"

.field public static final DEFAULT_LAUNCHER_PAGE_SNAP_VELOCITY:Ljava/lang/String; = "launcher_page_snap_velocity"

.field public static app_icon_size:I

.field public static defaultHomeRowNum:I

.field public static defaultLauncherApplicationBoxTextSize:I

.field public static defaultLauncherSnapVelocity:I

.field public static deflautHomeLineNum:I

.field public static launcherLineNum:I

.field public static launcherLineNumInLand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    .line 22
    const/4 v0, 0x3

    sput v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    .line 26
    const/16 v0, 0x1f4

    sput v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherSnapVelocity:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDefault(Landroid/content/Context;)V
    .locals 4
    .parameter "aContext"

    .prologue
    const/4 v3, 0x3

    .line 29
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "key_app_icon_size"

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    .line 31
    const-string v1, "key_home_line_num"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    .line 32
    const-string v1, "key_home_row_num"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    .line 33
    const-string v1, "key_launcher_line_num"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    .line 34
    const-string v1, "key_launcher_line_num_land"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNumInLand:I

    .line 35
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    if-le v1, v3, :cond_0

    .line 36
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    .line 38
    :cond_0
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    if-le v1, v3, :cond_1

    .line 39
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    .line 41
    :cond_1
    const-string v1, "key_launcher_text_size"

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    .line 42
    const-string v1, "key_snap_velocity"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherSnapVelocity:I

    .line 43
    return-void
.end method

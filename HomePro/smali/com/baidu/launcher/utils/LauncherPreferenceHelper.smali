.class public Lcom/baidu/launcher/utils/LauncherPreferenceHelper;
.super Ljava/lang/Object;
.source "LauncherPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/utils/LauncherPreferenceHelper$1;,
        Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;
    }
.end annotation


# static fields
.field public static AppListBgAlpha:I = 0x0

.field public static AppListMode:I = 0x0

.field public static final CUSTOM_SORT:I = 0x2

.field public static DEFAULT_SCREEN_COUNT:I = 0x0

.field public static final DefaultConfigDir:Ljava/lang/String; = "system/etc/baidu/BaiduLauncher/configuration/"

.field public static final GESTURE_TYPE_APP:I = 0x2

.field public static final GESTURE_TYPE_LOCK:I = 0x1

.field public static final GESTURE_TYPE_NONE:I = 0x0

.field public static final GESTURE_TYPE_SHORTCUT:I = 0x3

.field public static final KEY_ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final KEY_APPLIST_ALPHA:Ljava/lang/String; = "applist_alpha"

.field public static final KEY_APPLIST_APPEARANCE:Ljava/lang/String; = "applist_appearance_set"

.field public static final KEY_APPLIST_BACKGROUND:Ljava/lang/String; = "applist_background"

.field public static final KEY_APPLIST_BG:Ljava/lang/String; = "default_applist_background"

.field public static final KEY_APPLIST_LOOP:Ljava/lang/String; = "app_list_loop"

.field public static final KEY_APPLIST_UPLOAD:Ljava/lang/String; = "applist_upload"

.field public static final KEY_APP_FIFLET:Ljava/lang/String; = "app_filter"

.field public static final KEY_APP_ICON_SIZE:Ljava/lang/String; = "key_app_icon_size"

.field public static final KEY_APP_TOP:Ljava/lang/String; = "app_top"

.field public static final KEY_BULLETIN_AUTOSYNC_SWITCH:Ljava/lang/String; = "bulletin_autosync_switch"

.field public static final KEY_BULLETIN_PROMPT_SWITCH:Ljava/lang/String; = "bulletin_prompt_switch"

.field public static final KEY_BULLETIN_SET:Ljava/lang/String; = "set_bulletin"

.field public static final KEY_BULLETIN_SWITCH:Ljava/lang/String; = "bulletin_switch"

.field public static final KEY_DEFAULT_APPLIST_BACKGROUND:Ljava/lang/String; = "defalut_applist_background"

.field public static final KEY_DEFAULT_SCREEN:Ljava/lang/String; = "default_screen"

.field public static final KEY_DOUBLECLICK_ACTION:Ljava/lang/String; = "doubleclick_action"

.field public static final KEY_DOUBLECLICK_NAME:Ljava/lang/String; = "doubleclick_name"

.field public static final KEY_DOUBLECLICK_TYPE:Ljava/lang/String; = "doubleclick_type"

.field public static final KEY_FIRST_LAUNCH_IN_ROM34:Ljava/lang/String; = "first_launch_in_rom34"

.field public static final KEY_FIRST_LUNCH:Ljava/lang/String; = "first_lunch"

.field public static final KEY_GESTURE:Ljava/lang/String; = "set_gesture"

.field public static final KEY_GESTURE_DOUBLECLICK:Ljava/lang/String; = "gesture_doubleclick"

.field public static final KEY_GESTURE_DOWN:Ljava/lang/String; = "gesture_down"

.field public static final KEY_GESTURE_UP:Ljava/lang/String; = "gesture_up"

.field public static final KEY_HOME_LINE_NUM:Ljava/lang/String; = "key_home_line_num"

.field public static final KEY_HOME_ROW_NUM:Ljava/lang/String; = "key_home_row_num"

.field public static final KEY_INTER_LOOP:Ljava/lang/String; = "inter_loop"

.field public static final KEY_LAUNCHER_LINE_NUM:Ljava/lang/String; = "key_launcher_line_num"

.field public static final KEY_LAUNCHER_LINE_NUM_LAND:Ljava/lang/String; = "key_launcher_line_num_land"

.field public static final KEY_LAUNCHER_TEXT_SIZE:Ljava/lang/String; = "key_launcher_text_size"

.field public static final KEY_LOAD_FAVORITES_FINISH:Ljava/lang/String; = "key_load_favorites"

.field public static final KEY_LOOP:Ljava/lang/String; = "loop"

.field public static final KEY_NEW_VERSION:Ljava/lang/String; = "new_version"

.field public static final KEY_ONLYPORTRAIT:Ljava/lang/String; = "only_portrait"

.field public static final KEY_PERSISTENT:Ljava/lang/String; = "system_persistent"

.field public static final KEY_SCALE_ICON:Ljava/lang/String; = "scale_icon"

.field public static final KEY_SCREEN_COUNT:Ljava/lang/String; = "screen_count"

.field public static final KEY_SCROLL_TYPE:Ljava/lang/String; = "scroll_type"

.field public static final KEY_SCROLL_TYPE_INHOME:Ljava/lang/String; = "scroll_type_inhome"

.field public static final KEY_SET_AS_DEFAULT:Ljava/lang/String; = "set_as_default"

.field public static final KEY_SHOW_DOCKBAR_APPLIST_ICON:Ljava/lang/String; = "show_dockbar_applist_icon"

.field public static final KEY_SHOW_DOCKBAR_BG:Ljava/lang/String; = "show_dockbar_bg"

.field public static final KEY_SHOW_ICON_FLOOR:Ljava/lang/String; = "show_icon_floor"

.field public static final KEY_SLIDE_WALLPAPER:Ljava/lang/String; = "slide_wallpaper"

.field public static final KEY_SNAP_VELOCITY:Ljava/lang/String; = "key_snap_velocity"

.field public static final KEY_SORT:Ljava/lang/String; = "SORT"

.field public static final KEY_UPDATE:Ljava/lang/String; = "update"

.field public static final KEY_UPDATE_PERSISTENT_LARGE_MEMORY:Ljava/lang/String; = "update_persistent_large_memory"

.field public static final KEY_VERSION:Ljava/lang/String; = "key_version"

.field public static final LARGE_ICON:F = 1.073f

.field public static final MAX_SCREEN_COUNT:I = 0xa

.field public static final MEDIUM_ICON:F = 1.0f

.field public static final MODE_DISABLE:I = 0x5

.field public static final MODE_HIDE:I = 0x1

.field public static final MODE_HIDE_DISABLE:I = 0x6

.field public static final MODE_INDEX_HIDE:I = 0x4

.field public static final MODE_INDEX_NORMAL:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static NUMBER_CELLS_X:I = 0x0

.field public static NUMBER_CELLS_Y:I = 0x0

.field public static final SCROLL_TYPE_COUNT:I = 0x7

.field public static final SCROLL_TYPE_CUBE1:I = 0x3

.field public static final SCROLL_TYPE_CUBE2:I = 0x4

.field public static final SCROLL_TYPE_DEFAULT:I = 0x0

.field public static final SCROLL_TYPE_ELASTIC:I = 0x1

.field public static final SCROLL_TYPE_FADE:I = 0x2

.field public static final SCROLL_TYPE_RAND:I = 0x6

.field public static final SCROLL_TYPE_ROTARY:I = 0x5

.field public static final SMALL_ICON:F = 0.878f

.field public static final SORT_CUSTOM:I = 0x2

.field public static final SORT_FREQUENCY:I = 0x3

.field public static final SORT_LETTER:I = 0x0

.field public static final SORT_TIME:I = 0x1

.field public static final XHDPI_LARGE_ICON:F = 1.0926f

.field public static final XHDPI_MEDIUM_ICON:F = 1.0f

.field public static final XHDPI_SMALL_ICON:F = 0.8148f

.field public static app_list_loop:Z

.field public static applistBackground:Ljava/lang/String;

.field public static currentScreen:I

.field public static defaultScreen:I

.field private static doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

.field public static firstLaunchInRom34:Z

.field public static firstLunch:Z

.field public static gestureDoubleClick:I

.field public static gestureDown:Z

.field public static gestureUp:Z

.field public static hasApplistUpload:Z

.field public static hasNewVersion:Z

.field public static iconScale:F

.field public static inter_loop:Z

.field public static loop:Z

.field public static mAppListBgIsWallpapper:Z

.field public static mFilterComponentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static mTopComponentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static mUserApplistDefaultBG:Z

.field public static randomEffect:Z

.field public static screenCount:I

.field public static scrollType:I

.field public static scrollTypeInHome:I

.field public static show_dockbar_applist_icon:Z

.field public static show_dockbar_bg:Z

.field public static show_icon_floor:Z

.field public static sildeWallpaper:Z

.field public static sortType:I

.field public static systemPersistent:Z

.field public static useHotwordLockScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    .line 107
    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    .line 133
    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 137
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasApplistUpload:Z

    .line 139
    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->DEFAULT_SCREEN_COUNT:I

    .line 140
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->DEFAULT_SCREEN_COUNT:I

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 141
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    .line 142
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    .line 157
    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 158
    const/4 v0, 0x3

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollTypeInHome:I

    .line 159
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->randomEffect:Z

    .line 160
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->useHotwordLockScreen:Z

    .line 161
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    .line 162
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    .line 163
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    .line 164
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    .line 165
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    .line 166
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    .line 167
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    .line 168
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    .line 169
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    .line 170
    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDoubleClick:I

    .line 171
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    .line 173
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLaunchInRom34:Z

    .line 174
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    .line 176
    const/high16 v0, 0x3f80

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 178
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasNewVersion:Z

    .line 194
    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 195
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 196
    const/16 v0, 0x32

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    .line 197
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 199
    new-instance v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;-><init>(Lcom/baidu/launcher/utils/LauncherPreferenceHelper$1;)V

    sput-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterAppInfo(Lcom/baidu/launcher/data/item/ListAppInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 255
    if-eqz p0, :cond_0

    sget-object v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    sget-object v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 259
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getDoubleclickAction()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iget-object v0, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getDoubleclickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iget-object v0, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleclickType()I
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iget v0, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->type:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 203
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 204
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "first_lunch"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    .line 206
    sget-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v4, :cond_0

    .line 207
    invoke-static {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loadDefaultConfiguration(Landroid/content/Context;)V

    .line 234
    :goto_0
    const-string v4, "applist_upload"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasApplistUpload:Z

    .line 235
    const-string v4, "new_version"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasNewVersion:Z

    .line 236
    const-string v4, "SORT"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 238
    const-string v4, "first_launch_in_rom34"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLaunchInRom34:Z

    .line 239
    const-string v4, "scale_icon"

    const/high16 v5, 0x3f80

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    sput v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 240
    const-string v4, "show_icon_floor"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    .line 241
    const-string v4, "applist_alpha"

    const/16 v5, 0x64

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    .line 243
    const-string v4, "show_dockbar_bg"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    .line 244
    const-string v4, "doubleclick_type"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 245
    .local v3, type:I
    const-string v4, "doubleclick_action"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, intent:Ljava/lang/String;
    const-string v4, "doubleclick_name"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, name:Ljava/lang/String;
    invoke-static {p0, v3, v0, v1}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->initDoubleclickGesture(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {v9, v9, p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 251
    return-void

    .line 209
    .end local v0           #intent:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #type:I
    :cond_0
    invoke-static {p0}, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->loadDefault(Landroid/content/Context;)V

    .line 210
    const-string v4, "slide_wallpaper"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    .line 211
    const-string v4, "only_portrait"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    .line 212
    const-string v4, "scroll_type"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 213
    const-string v4, "scroll_type_inhome"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollTypeInHome:I

    .line 214
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollTypeInHome:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 215
    sput-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->randomEffect:Z

    .line 216
    sput v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollTypeInHome:I

    .line 222
    :goto_1
    const-string v4, "app_list_loop"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    .line 225
    const-string v4, "gesture_up"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    .line 226
    const-string v4, "gesture_down"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    .line 227
    const-string v4, "applist_background"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 229
    const-string v4, "defalut_applist_background"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 231
    const-string v4, "default_applist_background"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->applistBackground:Ljava/lang/String;

    goto/16 :goto_0

    .line 218
    :cond_1
    sput-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->randomEffect:Z

    goto :goto_1
.end method

.method public static initDoubleclickGesture(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "intent"
    .parameter "name"

    .prologue
    .line 598
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iput p0, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->type:I

    .line 599
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iput-object p2, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->name:Ljava/lang/String;

    .line 600
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iput-object p1, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->intent:Landroid/content/Intent;

    .line 601
    return-void
.end method

.method public static initDoubleclickGesture(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "intent"
    .parameter "name"

    .prologue
    .line 586
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iput p1, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->type:I

    .line 587
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    iput-object p3, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->name:Ljava/lang/String;

    .line 588
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->intent:Landroid/content/Intent;

    .line 589
    invoke-static {p2}, Lcom/baidu/launcher/utils/Utilities;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->doubleClickInfo:Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static loadDefaultConfiguration(Landroid/content/Context;)V
    .locals 13
    .parameter "aContext"

    .prologue
    .line 427
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 428
    .local v8, pref:Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 431
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v10, "system/etc/baidu/BaiduLauncher/configuration/configuration.xml"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 433
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 435
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v7, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .line 440
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 441
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 442
    .local v2, eventCode:I
    :goto_1
    const/4 v10, 0x1

    if-eq v2, v10, :cond_1b

    .line 443
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, name:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 550
    :cond_0
    :goto_2
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 551
    goto :goto_1

    .line 437
    .end local v2           #eventCode:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 448
    .restart local v2       #eventCode:I
    .restart local v6       #name:Ljava/lang/String;
    :pswitch_1
    const-string v10, "loop"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 449
    sget-object v10, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v11, "003"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 450
    const/4 v10, 0x0

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    .line 454
    :goto_3
    const-string v10, "loop"

    sget-boolean v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 552
    .end local v2           #eventCode:I
    .end local v3           #file:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    .line 555
    :goto_4
    if-eqz v4, :cond_2

    .line 557
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 563
    :cond_2
    :goto_5
    return-void

    .line 452
    .restart local v2       #eventCode:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const/4 v10, 0x0

    :try_start_4
    const-string v11, "desktop_loop"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 555
    .end local v2           #eventCode:I
    .end local v3           #file:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v4, :cond_4

    .line 557
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 555
    :cond_4
    :goto_7
    throw v10

    .line 462
    .restart local v2       #eventCode:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_6
    const-string v10, "show_dockbar_applist_icon"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 463
    const/4 v10, 0x0

    const-string v11, "show_dockbar_applist_icon"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    .line 464
    const-string v10, "show_dockbar_applist_icon"

    sget-boolean v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 465
    :cond_6
    const-string v10, "set_gesture"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 466
    const/4 v10, 0x0

    const-string v11, "gesture_up"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    .line 467
    const/4 v10, 0x0

    const-string v11, "gesture_down"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    .line 468
    const/4 v10, 0x0

    const-string v11, "gesture_doubleclick"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDoubleClick:I

    .line 469
    const-string v10, "gesture_up"

    sget-boolean v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 470
    const-string v10, "gesture_down"

    sget-boolean v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 471
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDoubleClick:I

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDoubleClick:I

    if-ne v10, v11, :cond_0

    .line 472
    :cond_7
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDoubleClick:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->initDoubleclickGesture(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 473
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_type"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDoubleClick:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_name"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_action"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 477
    :cond_8
    const-string v10, "slide_wallpaper"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 478
    const/4 v10, 0x0

    const-string v11, "silde_wallpaper"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    .line 479
    const-string v10, "slide_wallpaper"

    sget-boolean v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 480
    :cond_9
    const-string v10, "scroll_type"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 481
    const/4 v10, 0x0

    const-string v11, "scroll_type"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 482
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    const/4 v11, 0x7

    if-ge v10, v11, :cond_a

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    if-gez v10, :cond_b

    .line 483
    :cond_a
    const/4 v10, 0x0

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 485
    :cond_b
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "scroll_type"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 486
    :cond_c
    const-string v10, "scroll_type_inhome"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 487
    const/4 v10, 0x0

    const-string v11, "scroll_type_inhome"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 488
    .local v9, scrollTypet:I
    const/4 v10, 0x7

    if-ge v9, v10, :cond_d

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    if-gez v10, :cond_e

    .line 489
    :cond_d
    const/4 v9, 0x0

    .line 491
    :cond_e
    const/4 v10, 0x6

    if-ne v9, v10, :cond_f

    .line 492
    const/4 v10, 0x1

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->randomEffect:Z

    .line 493
    const/4 v10, 0x0

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollTypeInHome:I

    .line 494
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "scroll_type_inhome"

    const/4 v12, 0x6

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 496
    :cond_f
    const/4 v10, 0x0

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->randomEffect:Z

    .line 497
    sput v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollTypeInHome:I

    .line 498
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "scroll_type_inhome"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 500
    .end local v9           #scrollTypet:I
    :cond_10
    const-string v10, "default_applist_background"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 501
    const/4 v10, 0x0

    const-string v11, "applist_bg"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->applistBackground:Ljava/lang/String;

    .line 502
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "default_applist_background"

    sget-object v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->applistBackground:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->applistBackground:Ljava/lang/String;

    invoke-static {v10}, Lcom/baidu/launcher/utils/Utilities;->getApplistBG(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 505
    .local v0, bgDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    .line 506
    const/4 v10, 0x0

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 507
    const/4 v10, 0x1

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 508
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "applist_background"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 509
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "defalut_applist_background"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    const/4 v10, 0x1

    sput-boolean v10, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    goto/16 :goto_2

    .line 512
    :cond_11
    const/4 v10, 0x1

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 513
    const/4 v10, 0x0

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 514
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "applist_background"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "defalut_applist_background"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 517
    .end local v0           #bgDrawble:Landroid/graphics/drawable/Drawable;
    :cond_12
    const-string v10, "app_icon_size"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 518
    const/4 v10, 0x0

    const-string v11, "size"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    .line 519
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_app_icon_size"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 520
    :cond_13
    const-string v10, "home_icon_number"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 521
    const/4 v10, 0x0

    const-string v11, "x"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    .line 522
    const/4 v10, 0x0

    const-string v11, "y"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    .line 523
    sget v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    const/4 v11, 0x3

    if-le v10, v11, :cond_14

    .line 524
    sget v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    .line 526
    :cond_14
    sget v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    const/4 v11, 0x3

    if-le v10, v11, :cond_15

    .line 527
    sget v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    .line 529
    :cond_15
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_home_line_num"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_home_row_num"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 531
    :cond_16
    const-string v10, "launcher_icon_number"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 532
    const/4 v10, 0x0

    const-string v11, "y"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    .line 533
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_launcher_line_num"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNum:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 534
    :cond_17
    const-string v10, "launcher_icon_number_land"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 535
    const/4 v10, 0x0

    const-string v11, "y"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNumInLand:I

    .line 536
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_launcher_line_num_land"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->launcherLineNumInLand:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 537
    :cond_18
    const-string v10, "launcher_application_box_text"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 538
    const/4 v10, 0x0

    const-string v11, "size"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    .line 539
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_launcher_text_size"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherApplicationBoxTextSize:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 540
    :cond_19
    const-string v10, "launcher_page_snap_velocity"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 541
    const/4 v10, 0x0

    const-string v11, "distance"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherSnapVelocity:I

    .line 542
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_snap_velocity"

    sget v12, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultLauncherSnapVelocity:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 543
    :cond_1a
    const-string v10, "only_portrait"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 544
    const/4 v10, 0x0

    const-string v11, "only_portrait"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    .line 545
    const-string v10, "only_portrait"

    sget-boolean v11, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 558
    .end local v2           #eventCode:I
    .end local v3           #file:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 559
    .local v1, e:Ljava/io/IOException;
    :goto_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 558
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 559
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 555
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventCode:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1b
    if-eqz v4, :cond_2

    .line 557
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_5

    .line 558
    :catch_3
    move-exception v1

    goto :goto_8

    .line 555
    .end local v2           #eventCode:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 552
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadFilterApps(Landroid/content/Context;)V
    .locals 12
    .parameter "aContext"

    .prologue
    .line 316
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    .line 317
    const/4 v5, 0x0

    .line 320
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v10, "system/etc/baidu/BaiduLauncher/configuration/top_and_filter_launcher.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 322
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 324
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v5, v6

    .line 329
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 330
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 331
    .local v3, eventCode:I
    :goto_1
    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    .line 332
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, name:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 349
    :cond_0
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 350
    goto :goto_1

    .line 326
    .end local v3           #eventCode:I
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 337
    .restart local v3       #eventCode:I
    .restart local v7       #name:Ljava/lang/String;
    :pswitch_1
    const/4 v8, 0x0

    .line 338
    .local v8, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 339
    .local v0, classNmae:Ljava/lang/String;
    const-string v10, "app_filter"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 340
    const/4 v10, 0x0

    const-string v11, "packageName"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 341
    const/4 v10, 0x0

    const-string v11, "className"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v1, cn:Landroid/content/ComponentName;
    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 351
    .end local v0           #classNmae:Ljava/lang/String;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #eventCode:I
    .end local v4           #file:Ljava/io/File;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    .line 354
    :goto_3
    if-eqz v5, :cond_2

    .line 356
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 362
    :cond_2
    :goto_4
    return-void

    .line 354
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v5, :cond_3

    .line 356
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 354
    :cond_3
    :goto_6
    throw v10

    .line 357
    :catch_1
    move-exception v2

    .line 358
    .local v2, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 357
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 358
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 354
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventCode:I
    .restart local v4       #file:Ljava/io/File;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v5, :cond_2

    .line 356
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 357
    :catch_3
    move-exception v2

    goto :goto_7

    .line 354
    .end local v3           #eventCode:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 351
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadTopAndFilterApps(Landroid/content/Context;)V
    .locals 14
    .parameter "aContext"

    .prologue
    const/4 v13, 0x2

    .line 365
    sget-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v10, :cond_0

    .line 366
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    .line 368
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    .line 369
    const/4 v5, 0x0

    .line 372
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v10, "system/etc/baidu/BaiduLauncher/configuration/top_and_filter_launcher.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 374
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 376
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v5, v6

    .line 381
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 382
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 383
    .local v3, eventCode:I
    :goto_1
    const/4 v10, 0x1

    if-eq v3, v10, :cond_8

    .line 384
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, name:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 406
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 407
    goto :goto_1

    .line 378
    .end local v3           #eventCode:I
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 389
    .restart local v3       #eventCode:I
    .restart local v7       #name:Ljava/lang/String;
    :pswitch_1
    const/4 v8, 0x0

    .line 390
    .local v8, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 391
    .local v0, classNmae:Ljava/lang/String;
    const-string v10, "app_filter"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 392
    const/4 v10, 0x0

    const-string v11, "packageName"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 393
    const/4 v10, 0x0

    const-string v11, "className"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v1, cn:Landroid/content/ComponentName;
    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mFilterComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 408
    .end local v0           #classNmae:Ljava/lang/String;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #eventCode:I
    .end local v4           #file:Ljava/io/File;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    .line 411
    :goto_3
    if-eqz v5, :cond_3

    .line 413
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 419
    :cond_3
    :goto_4
    sget-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 420
    sput v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 421
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "SORT"

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    :cond_4
    return-void

    .line 396
    .restart local v0       #classNmae:Ljava/lang/String;
    .restart local v3       #eventCode:I
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_4
    sget-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v10, :cond_1

    const-string v10, "app_top"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 397
    const/4 v10, 0x0

    const-string v11, "packageName"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    const/4 v10, 0x0

    const-string v11, "className"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .restart local v1       #cn:Landroid/content/ComponentName;
    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 411
    .end local v0           #classNmae:Ljava/lang/String;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #eventCode:I
    .end local v4           #file:Ljava/io/File;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v5, :cond_6

    .line 413
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 419
    :cond_6
    :goto_7
    sget-boolean v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v11, :cond_7

    sget-object v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 420
    sput v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 421
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "SORT"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    :cond_7
    throw v10

    .line 414
    :catch_1
    move-exception v2

    .line 415
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 414
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 415
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 411
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventCode:I
    .restart local v4       #file:Ljava/io/File;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    if-eqz v5, :cond_9

    .line 413
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 419
    :cond_9
    :goto_8
    sget-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 420
    sput v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 421
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "SORT"

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    goto :goto_5

    .line 414
    :catch_3
    move-exception v2

    .line 415
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 411
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #eventCode:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 408
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadTopApps(Landroid/content/Context;)V
    .locals 12
    .parameter "aContext"

    .prologue
    .line 267
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    .line 268
    const/4 v5, 0x0

    .line 271
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v10, "system/etc/baidu/BaiduLauncher/configuration/top_and_filter_launcher.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 273
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 275
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v5, v6

    .line 280
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 281
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 282
    .local v3, eventCode:I
    :goto_1
    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    .line 283
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, name:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 300
    :cond_0
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 301
    goto :goto_1

    .line 277
    .end local v3           #eventCode:I
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 288
    .restart local v3       #eventCode:I
    .restart local v7       #name:Ljava/lang/String;
    :pswitch_1
    const/4 v8, 0x0

    .line 289
    .local v8, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 290
    .local v0, classNmae:Ljava/lang/String;
    const-string v10, "app_top"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 291
    const/4 v10, 0x0

    const-string v11, "packageName"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    const/4 v10, 0x0

    const-string v11, "className"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v1, cn:Landroid/content/ComponentName;
    sget-object v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 302
    .end local v0           #classNmae:Ljava/lang/String;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #eventCode:I
    .end local v4           #file:Ljava/io/File;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    .line 305
    :goto_3
    if-eqz v5, :cond_2

    .line 307
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 313
    :cond_2
    :goto_4
    return-void

    .line 305
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v5, :cond_3

    .line 307
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 305
    :cond_3
    :goto_6
    throw v10

    .line 308
    :catch_1
    move-exception v2

    .line 309
    .local v2, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 308
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 309
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 305
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #eventCode:I
    .restart local v4       #file:Ljava/io/File;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v5, :cond_2

    .line 307
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 308
    :catch_3
    move-exception v2

    goto :goto_7

    .line 305
    .end local v3           #eventCode:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 302
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "aContext"
    .parameter "aKey"
    .parameter "aValue"

    .prologue
    .line 566
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 567
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static updateScreenConfig(IILandroid/content/Context;)V
    .locals 5
    .parameter "aScreenCount"
    .parameter "aDefaultScreen"
    .parameter "aContext"

    .prologue
    const/4 v4, -0x1

    .line 571
    const-string v2, "preference_screen"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 572
    .local v1, preference:Landroid/content/SharedPreferences;
    if-ne p0, v4, :cond_0

    if-ne p1, v4, :cond_0

    .line 573
    const-string v2, "screen_count"

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 574
    const-string v2, "default_screen"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    .line 583
    :goto_0
    return-void

    .line 576
    :cond_0
    const/16 v2, 0xa

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 577
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    .line 578
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screen_count"

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 580
    const-string v2, "default_screen"

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

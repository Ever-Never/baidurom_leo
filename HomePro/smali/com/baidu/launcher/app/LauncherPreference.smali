.class public Lcom/baidu/launcher/app/LauncherPreference;
.super Landroid/preference/PreferenceActivity;
.source "LauncherPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# static fields
.field private static final DIALOG_SELECT_ICON_SCALE:I = 0x1


# instance fields
.field private bulletinSwitch:Landroid/preference/CheckBoxPreference;

.field private mAppListAppearance:Landroid/preference/Preference;

.field private mAppListInterLoop:Landroid/preference/CheckBoxPreference;

.field private mBulletin:Landroid/preference/Preference;

.field private mEffectListArray:[Ljava/lang/String;

.field private mGesture:Landroid/preference/Preference;

.field private mIconScale:Landroid/preference/Preference;

.field private mLoop:Landroid/preference/CheckBoxPreference;

.field private mPersistentPre:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mScaleListArray:[Ljava/lang/String;

.field private mScrollType:Landroid/preference/Preference;

.field private mShowDockbarApplistIcon:Landroid/preference/CheckBoxPreference;

.field private mShowIconFloor:Landroid/preference/CheckBoxPreference;

.field private mSlideWallpaper:Landroid/preference/CheckBoxPreference;

.field private update:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->BulletinSwitcherUnlock:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/app/LauncherPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/app/LauncherPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/app/LauncherPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScaleListArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/app/LauncherPreference;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference;->mIconScale:Landroid/preference/Preference;

    return-object v0
.end method

.method private setupPreference()V
    .locals 4

    .prologue
    .line 145
    const-string v1, "scroll_type"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScrollType:Landroid/preference/Preference;

    .line 146
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScrollType:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v2, "scroll_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, position:I
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScrollType:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mEffectListArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    const-string v1, "loop"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mLoop:Landroid/preference/CheckBoxPreference;

    .line 152
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mLoop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v2, "003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v1, "launcher_category"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mLoop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_0
    const-string v1, "slide_wallpaper"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mSlideWallpaper:Landroid/preference/CheckBoxPreference;

    .line 163
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mSlideWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    const-string v1, "show_dockbar_applist_icon"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mShowDockbarApplistIcon:Landroid/preference/CheckBoxPreference;

    .line 166
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mShowDockbarApplistIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    const-string v1, "show_icon_floor"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mShowIconFloor:Landroid/preference/CheckBoxPreference;

    .line 169
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mShowIconFloor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    const-string v1, "scale_icon"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mIconScale:Landroid/preference/Preference;

    .line 172
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mIconScale:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    const-string v1, "applist_appearance_set"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mAppListAppearance:Landroid/preference/Preference;

    .line 176
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mAppListAppearance:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    const-string v1, "set_gesture"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mGesture:Landroid/preference/Preference;

    .line 179
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mGesture:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    const-string v1, "bulletin_switch"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    .line 184
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->update:Landroid/preference/Preference;

    .line 187
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->update:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    const-string v1, "system_persistent"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPersistentPre:Landroid/preference/CheckBoxPreference;

    .line 190
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPersistentPre:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    return-void
.end method


# virtual methods
.method public enableBulletin(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/baidu/launcher/app/LauncherPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/app/LauncherPreference$1;-><init>(Lcom/baidu/launcher/app/LauncherPreference;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 80
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/app/LauncherPreference;->requestWindowFeature(I)Z

    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f03004c

    invoke-virtual {v4, v7, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 83
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/LauncherPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 84
    .local v0, actionBar:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setOperationBar(I)V

    .line 86
    const v4, 0x7f0801c7

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/LauncherPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v4, 0x7f0801c6

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/LauncherPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0066

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 90
    const v4, 0x7f0801c5

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/LauncherPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 91
    .local v1, actionBarGroup:Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/app/LauncherPreference;->mEffectListArray:[Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScaleListArray:[Ljava/lang/String;

    .line 96
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    .line 97
    const v4, 0x7f050006

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/LauncherPreference;->addPreferencesFromResource(I)V

    .line 98
    invoke-direct {p0}, Lcom/baidu/launcher/app/LauncherPreference;->setupPreference()V

    .line 100
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .local v2, metric:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_0

    .line 103
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/LauncherPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, title:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 105
    const/16 v4, 0xc

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    .end local v3           #title:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/high16 v3, 0x3f80

    .line 312
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 314
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 315
    const/4 v0, 0x2

    .line 321
    .local v0, checkedId:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x1030132

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0c0213

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070002

    new-instance v4, Lcom/baidu/launcher/app/LauncherPreference$3;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/app/LauncherPreference$3;-><init>(Lcom/baidu/launcher/app/LauncherPreference;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00b7

    new-instance v4, Lcom/baidu/launcher/app/LauncherPreference$2;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/app/LauncherPreference$2;-><init>(Lcom/baidu/launcher/app/LauncherPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 357
    .local v1, scaleIconListDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020424

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 360
    .end local v0           #checkedId:I
    .end local v1           #scaleIconListDlg:Landroid/app/AlertDialog;
    :goto_1
    return-object v1

    .line 316
    :cond_0
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 317
    const/4 v0, 0x0

    .restart local v0       #checkedId:I
    goto :goto_0

    .line 319
    .end local v0           #checkedId:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #checkedId:I
    goto :goto_0

    .line 360
    .end local v0           #checkedId:I
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v1, p2

    .line 197
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/LauncherPreference;->enableBulletin(Z)V

    .line 198
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 199
    .local v0, value:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForOnOffInveno(I)V

    .line 208
    .end local v0           #value:Z
    :cond_0
    return v2

    .restart local v0       #value:Z
    :cond_1
    move v1, v2

    .line 199
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, key:Ljava/lang/String;
    const-string v10, "scroll_type"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 233
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/baidu/launcher/ui/effect/EffectListActivity;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/app/LauncherPreference;->startActivity(Landroid/content/Intent;)V

    .line 306
    .end local p1
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 235
    .restart local p1
    :cond_1
    const-string v10, "loop"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 237
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 238
    .local v4, loop:Z
    sput-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    .line 239
    const-string v10, "loop"

    invoke-static {p0, v10, v4}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 242
    .end local v4           #loop:Z
    .restart local p1
    :cond_2
    const-string v10, "app_list_loop"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 244
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 245
    .local v1, appListLoop:Z
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    .line 246
    const-string v10, "app_list_loop"

    invoke-static {p0, v10, v1}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 249
    .end local v1           #appListLoop:Z
    .restart local p1
    :cond_3
    const-string v10, "inter_loop"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 250
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 251
    .local v0, appListInterLoop:Z
    sput-boolean v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    .line 252
    const-string v10, "inter_loop"

    invoke-static {p0, v10, v0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 253
    .end local v0           #appListInterLoop:Z
    .restart local p1
    :cond_4
    const-string v10, "show_dockbar_applist_icon"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 255
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    .line 256
    .local v7, showDockbarApplistIcon:Z
    sput-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    .line 257
    const-string v10, "show_dockbar_applist_icon"

    invoke-static {p0, v10, v7}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 259
    .end local v7           #showDockbarApplistIcon:Z
    .restart local p1
    :cond_5
    const-string v10, "slide_wallpaper"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 261
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    .line 262
    .local v8, slide:Z
    sput-boolean v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    .line 263
    const-string v10, "slide_wallpaper"

    invoke-static {p0, v10, v8}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 266
    .end local v8           #slide:Z
    .restart local p1
    :cond_6
    const-string v10, "show_icon_floor"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 268
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 269
    .local v6, show:Z
    sput-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    .line 270
    const-string v10, "show_icon_floor"

    invoke-static {p0, v10, v6}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 272
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.baidu.launcher.theme.changed"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/LauncherPreference;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 275
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #show:Z
    .restart local p1
    :cond_7
    const-string v10, "scale_icon"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 277
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/app/LauncherPreference;->showDialog(I)V

    goto/16 :goto_0

    .line 279
    :cond_8
    const-string v10, "applist_appearance_set"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 280
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/app/LauncherPreference;->startActivity(Landroid/content/Intent;)V

    .line 281
    const v10, 0x7f04000b

    const v11, 0x7f04000a

    invoke-virtual {p0, v10, v11}, Lcom/baidu/launcher/app/LauncherPreference;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 282
    :cond_9
    const-string v10, "set_gesture"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 284
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 285
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v10, Lcom/baidu/launcher/app/GesturePreference;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/LauncherPreference;->startActivity(Landroid/content/Intent;)V

    .line 287
    const v10, 0x7f04000b

    const v11, 0x7f04000a

    invoke-virtual {p0, v10, v11}, Lcom/baidu/launcher/app/LauncherPreference;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 295
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    const-string v10, "bulletin_switch"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 296
    iget-object v10, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/app/LauncherPreference;->enableBulletin(Z)V

    goto/16 :goto_0

    .line 297
    :cond_b
    const-string v10, "update"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 298
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/launcher/update/UpdateManager;->getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;

    move-result-object v9

    .line 299
    .local v9, updateManager:Lcom/baidu/launcher/update/UpdateManager;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/update/UpdateManager;->checkUpdate(I)V

    goto/16 :goto_0

    .line 300
    .end local v9           #updateManager:Lcom/baidu/launcher/update/UpdateManager;
    :cond_c
    const-string v10, "system_persistent"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 301
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 302
    .local v5, persistent:Z
    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    .line 303
    const-string v10, "system_persistent"

    invoke-static {p0, v10, v5}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v4, 0x1

    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 114
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v2, "scroll_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, position:I
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScrollType:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mEffectListArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mLoop:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "loop"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mSlideWallpaper:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "slide_wallpaper"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mShowDockbarApplistIcon:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "show_dockbar_applist_icon"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mShowIconFloor:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "show_icon_floor"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPersistentPre:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "system_persistent"

    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->update:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 131
    const/4 v0, 0x2

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->mIconScale:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference;->mScaleListArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    return-void

    .line 132
    :cond_0
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

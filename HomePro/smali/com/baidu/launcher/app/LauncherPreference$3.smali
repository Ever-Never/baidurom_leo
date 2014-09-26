.class Lcom/baidu/launcher/app/LauncherPreference$3;
.super Ljava/lang/Object;
.source "LauncherPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/LauncherPreference;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/LauncherPreference;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/LauncherPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/baidu/launcher/app/LauncherPreference$3;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    .line 325
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 326
    .local v1, metric:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference$3;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    invoke-virtual {v2}, Lcom/baidu/launcher/app/LauncherPreference;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 327
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 328
    .local v0, densityDpi:I
    const/16 v2, 0xf0

    if-le v0, v2, :cond_2

    .line 329
    if-nez p2, :cond_0

    .line 330
    const v2, 0x3f8bda51

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference$3;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    #getter for: Lcom/baidu/launcher/app/LauncherPreference;->mPreference:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/baidu/launcher/app/LauncherPreference;->access$100(Lcom/baidu/launcher/app/LauncherPreference;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "scale_icon"

    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherPreference$3;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    #getter for: Lcom/baidu/launcher/app/LauncherPreference;->mIconScale:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/baidu/launcher/app/LauncherPreference;->access$300(Lcom/baidu/launcher/app/LauncherPreference;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/app/LauncherPreference$3;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    #getter for: Lcom/baidu/launcher/app/LauncherPreference;->mScaleListArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/app/LauncherPreference;->access$200(Lcom/baidu/launcher/app/LauncherPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 348
    return-void

    .line 331
    :cond_0
    if-ne p2, v4, :cond_1

    .line 332
    sput v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    goto :goto_0

    .line 334
    :cond_1
    const v2, 0x3f5096bc

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    goto :goto_0

    .line 337
    :cond_2
    if-nez p2, :cond_3

    .line 338
    const v2, 0x3f895810

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    goto :goto_0

    .line 339
    :cond_3
    if-ne p2, v4, :cond_4

    .line 340
    sput v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    goto :goto_0

    .line 342
    :cond_4
    const v2, 0x3f60c49c

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    goto :goto_0
.end method

.class Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;
.super Ljava/lang/Object;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/holiday/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HolidayVersion"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/holiday/GifView;

.field private versionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/holiday/GifView;->access$300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.systemui_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "holiday_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->versionCode:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->versionCode:Ljava/lang/String;

    return-object v1
.end method

.method public resetVersion()V
    .locals 5

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/holiday/GifView;->access$300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.systemui_preferences"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 343
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 344
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "holiday_version"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    return-void
.end method

.method public saveVersion(Ljava/lang/String;)V
    .locals 5
    .parameter "vision"

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/holiday/GifView;->access$300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.systemui_preferences"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "holiday_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    return-void
.end method

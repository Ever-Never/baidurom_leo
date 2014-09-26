.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationSettings;
.super Ljava/lang/Object;
.source "OptimizationSettings.java"


# static fields
.field static final APP_WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.providers.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.providers.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.providers.downloads"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.baidu.input"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.baidu.launcher"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

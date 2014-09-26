.class public Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
.super Ljava/lang/Object;
.source "ThemeLocalItem.java"


# instance fields
.field public mComponentType:I

.field public mId:I

.field public mKey:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mPreview_path:Ljava/lang/String;

.field public mThemeLevel:I

.field public mThemeType:I

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "aComponentType"
    .parameter "aId"
    .parameter "aKey"
    .parameter "aPath"
    .parameter "aTitle"
    .parameter "aPreview_path"
    .parameter "aThemeLevel"
    .parameter "aThemeType"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    .line 19
    iput-object p5, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mTitle:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mPath:Ljava/lang/String;

    .line 22
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mComponentType:I

    .line 23
    iput-object p6, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mPreview_path:Ljava/lang/String;

    .line 24
    iput p7, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mThemeLevel:I

    .line 25
    iput p8, p0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mThemeType:I

    .line 26
    return-void
.end method
